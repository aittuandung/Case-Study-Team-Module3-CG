package dao;

import model.Apartment;

import java.sql.SQLException;
import java.util.List;

public interface IApartmentDAO {
    public void insertApartment(Apartment apartment) throws SQLException;
    public Apartment selectApartment(int idCH);
    public List<Apartment> sellectAllApartment();
    public boolean deleteApartment(int id) throws SQLException;
    public boolean updateApartment(Apartment a) throws SQLException;
}
