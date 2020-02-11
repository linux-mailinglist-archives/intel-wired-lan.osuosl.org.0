Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 916D8159C14
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Feb 2020 23:23:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 415D386D73;
	Tue, 11 Feb 2020 22:23:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CvduSNe2DND1; Tue, 11 Feb 2020 22:23:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 76B5886E49;
	Tue, 11 Feb 2020 22:23:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1061E1BF82D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Feb 2020 22:23:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 0BE6F855F6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Feb 2020 22:23:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MjWdkNUQ0bcP for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 Feb 2020 22:23:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 85BD484BAF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Feb 2020 22:23:03 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Feb 2020 14:23:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,428,1574150400"; 
 d="p7s'?scan'208";a="227645011"
Received: from orsmsx106.amr.corp.intel.com ([10.22.225.133])
 by fmsmga008.fm.intel.com with ESMTP; 11 Feb 2020 14:23:02 -0800
Received: from orsmsx124.amr.corp.intel.com (10.22.240.120) by
 ORSMSX106.amr.corp.intel.com (10.22.225.133) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 11 Feb 2020 14:23:02 -0800
Received: from orsmsx116.amr.corp.intel.com ([169.254.7.108]) by
 ORSMSX124.amr.corp.intel.com ([169.254.2.72]) with mapi id 14.03.0439.000;
 Tue, 11 Feb 2020 14:23:02 -0800
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "pmenzel@molgen.mpg.de" <pmenzel@molgen.mpg.de>
Thread-Topic: [Intel-wired-lan] [PATCH S39 09/15] ice: Don't reject odd
 values of usecs set by user
Thread-Index: AQHV1TtPzHrocOKmH0OB8SQDqT+9JagW2wsAgABUPQA=
Date: Tue, 11 Feb 2020 22:23:01 +0000
Message-ID: <201a8cea45b211d6a5d4257c527bf723799149d8.camel@intel.com>
References: <20200127085927.13999-1-anthony.l.nguyen@intel.com>
 <20200127085927.13999-9-anthony.l.nguyen@intel.com>
 <9d07b895-938e-c013-65a5-f274a3b8dcdf@molgen.mpg.de>
In-Reply-To: <9d07b895-938e-c013-65a5-f274a3b8dcdf@molgen.mpg.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [10.166.244.155]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH S39 09/15] ice: Don't reject odd
 values of usecs set by user
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel Wired Ethernet Linux Kernel Driver Development
 <intel-wired-lan.osuosl.org>
List-Unsubscribe: <https://lists.osuosl.org/mailman/options/intel-wired-lan>, 
 <mailto:intel-wired-lan-request@osuosl.org?subject=unsubscribe>
List-Archive: <http://lists.osuosl.org/pipermail/intel-wired-lan/>
List-Post: <mailto:intel-wired-lan@osuosl.org>
List-Help: <mailto:intel-wired-lan-request@osuosl.org?subject=help>
List-Subscribe: <https://lists.osuosl.org/mailman/listinfo/intel-wired-lan>,
 <mailto:intel-wired-lan-request@osuosl.org?subject=subscribe>
Cc: "Creeley, Brett" <brett.creeley@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: multipart/mixed; boundary="===============1067663838889012052=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============1067663838889012052==
Content-Language: en-US
Content-Type: multipart/signed; micalg=sha-1;
	protocol="application/x-pkcs7-signature"; boundary="=-T0Qd88saMqTzfwKd9MwA"

--=-T0Qd88saMqTzfwKd9MwA
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 2020-02-11 at 18:21 +0100, Paul Menzel wrote:
> Dear Tony,
>=20
>=20
> On 2020-01-27 09:59, Tony Nguyen wrote:
> > From: Brett Creeley <brett.creeley@intel.com>
> >=20
> > Currently if a user sets an odd [tx|rx]-usecs value through
> > ethtool,
> > the request is denied because the hardware is set to have an ITR
> > granularity of 2us. This caused poor customer experience. Fix this
> > by
> > aligning to a register allowed value, which results in rounding
> > down.
> > Also, print a once per ring container type message to be clear
> > about
> > our intentions.
> >=20
> > Also, change the ITR_TO_REG define to be the bitwise and of the ITR
> > setting and the ICE_ITR_MASK. This makes the purpose of ITR_TO_REG
> > more
> > obvious.
> >=20
> > Signed-off-by: Brett Creeley <brett.creeley@intel.com>
> > ---
> >  drivers/net/ethernet/intel/ice/ice_ethtool.c | 49 +++++++++++++++-
> > ----
> >  drivers/net/ethernet/intel/ice/ice_txrx.h    |  2 +-
> >  2 files changed, 39 insertions(+), 12 deletions(-)
> >=20
> > diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c
> > b/drivers/net/ethernet/intel/ice/ice_ethtool.c
> > index db14ec2e0b46..ae0b63d5673d 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
> > @@ -3488,21 +3488,13 @@ ice_set_rc_coalesce(enum ice_container_type
> > c_type, struct ethtool_coalesce *ec,
> >  		return -EINVAL;
> >  	}
> > =20
> > -	/* hardware only supports an ITR granularity of 2us */
> > -	if (coalesce_usecs % 2 !=3D 0) {
> > -		netdev_info(vsi->netdev, "Invalid value, %s-usecs must
> > be even\n",
> > -			    c_type_str);
> > -		return -EINVAL;
> > -	}
> > -
> >  	if (use_adaptive_coalesce) {
> >  		rc->itr_setting |=3D ICE_ITR_DYNAMIC;
> >  	} else {
> > -		/* store user facing value how it was set */
> > +		/* save the user set usecs */
> >  		rc->itr_setting =3D coalesce_usecs;
> > -		/* set to static and convert to value HW understands */
> > -		rc->target_itr =3D
> > -			ITR_TO_REG(ITR_REG_ALIGN(rc->itr_setting));
> > +		/* device ITR granularity is in 2 usec increments */
> > +		rc->target_itr =3D ITR_REG_ALIGN(rc->itr_setting);
> >  	}
> > =20
> >  	return 0;
> > @@ -3595,6 +3587,30 @@ ice_is_coalesce_param_invalid(struct
> > net_device *netdev,
> >  	return 0;
> >  }
> > =20
> > +/**
> > + * ice_print_if_odd_usecs - print message if user tries to set odd
> > [tx|rx]-usecs
> > + * @netdev: netdev used for print
> > + * @itr_setting: previous user setting
> > + * @use_adaptive_coalesce: if adaptive coalesce is enabled or
> > being enabled
> > + * @coalesce_usecs: requested value of [tx|rx]-usecs
> > + * @c_type_str: either "rx" or "tx" to match user set field of
> > [tx|rx]-usecs
>=20
> Why `c_type_str`? What does it mean?

It stands for container type string; so whether the container type is
"rx" or "tx".  It is has the same usage in ice_set_rx_coalesce() so we
continued with the convention here.

> > + */
> > +static void
> > +ice_print_if_odd_usecs(struct net_device *netdev, u16 itr_setting,
> > +		       u32 use_adaptive_coalesce, u32 coalesce_usecs,
> > +		       const char *c_type_str)
> > +{
> > +	if (use_adaptive_coalesce)
> > +		return;
>=20
> Why not check that before calling the function and not passing the it
> to this
> one.

This is put in the function instead of before calling it to reduce code
duplication.  Adaptive coalesce can be set for Tx and Rx; usecs can
also be set for Tx and RX so putting it in here allows us to use the
same code to do the checks.  Otherwise, we will need to check each
condition for both Tx and Rx before calling this function.

> > +
> > +	itr_setting =3D ITR_TO_REG(itr_setting);
> > +
> > +	if (itr_setting !=3D coalesce_usecs && (coalesce_usecs % 2))
> > +		netdev_info(netdev, "User set %s-usecs to %d, device
> > only supports even values. Rounding down and attempting to set %s-
> > usecs to %d\n",
> > +			    c_type_str, coalesce_usecs, c_type_str,
> > +			    ITR_REG_ALIGN(coalesce_usecs));
> > +}
> > +
> >  /**
> >   * __ice_set_coalesce - set ITR/INTRL values for the device
> >   * @netdev: pointer to the netdev associated with this query
> > @@ -3615,8 +3631,19 @@ __ice_set_coalesce(struct net_device
> > *netdev, struct ethtool_coalesce *ec,
> >  		return -EINVAL;
> > =20
> >  	if (q_num < 0) {
> > +		struct ice_q_vector *q_vector =3D vsi->q_vectors[0];
> >  		int v_idx;
> > =20
> > +		if (q_vector) {
>=20
> Why not check for `(coalesce_usecs % 2)` here already?

Explained in previous response.

> > +			ice_print_if_odd_usecs(netdev, q_vector-
> > >rx.itr_setting,
> > +					       ec-
> > >use_adaptive_rx_coalesce,
> > +					       ec->rx_coalesce_usecs,
> > "rx");
> > +
> > +			ice_print_if_odd_usecs(netdev, q_vector-
> > >tx.itr_setting,
> > +					       ec-
> > >use_adaptive_tx_coalesce,
> > +					       ec->tx_coalesce_usecs,
> > "tx");
> > +		}
> > +
>=20
> I do not know of such a construct in the rest of the Linux kernel. Is
> there
> a better way to achieve your goal?

I'm not aware of anything else to use, but I'm open to other thoughts
or suggestions if you have any.

Thanks,
Tony

--=-T0Qd88saMqTzfwKd9MwA
Content-Type: application/x-pkcs7-signature; name="smime.p7s"
Content-Disposition: attachment; filename="smime.p7s"
Content-Transfer-Encoding: base64

MIAGCSqGSIb3DQEHAqCAMIACAQExCzAJBgUrDgMCGgUAMIAGCSqGSIb3DQEHAQAAoIIKeDCCBOsw
ggPToAMCAQICEFLpAsoR6ESdlGU4L6MaMLswDQYJKoZIhvcNAQEFBQAwbzELMAkGA1UEBhMCU0Ux
FDASBgNVBAoTC0FkZFRydXN0IEFCMSYwJAYDVQQLEx1BZGRUcnVzdCBFeHRlcm5hbCBUVFAgTmV0
d29yazEiMCAGA1UEAxMZQWRkVHJ1c3QgRXh0ZXJuYWwgQ0EgUm9vdDAeFw0xMzAzMTkwMDAwMDBa
Fw0yMDA1MzAxMDQ4MzhaMHkxCzAJBgNVBAYTAlVTMQswCQYDVQQIEwJDQTEUMBIGA1UEBxMLU2Fu
dGEgQ2xhcmExGjAYBgNVBAoTEUludGVsIENvcnBvcmF0aW9uMSswKQYDVQQDEyJJbnRlbCBFeHRl
cm5hbCBCYXNpYyBJc3N1aW5nIENBIDRBMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA
4LDMgJ3YSVX6A9sE+jjH3b+F3Xa86z3LLKu/6WvjIdvUbxnoz2qnvl9UKQI3sE1zURQxrfgvtP0b
Pgt1uDwAfLc6H5eqnyi+7FrPsTGCR4gwDmq1WkTQgNDNXUgb71e9/6sfq+WfCDpi8ScaglyLCRp7
ph/V60cbitBvnZFelKCDBh332S6KG3bAdnNGB/vk86bwDlY6omDs6/RsfNwzQVwo/M3oPrux6y6z
yIoRulfkVENbM0/9RrzQOlyK4W5Vk4EEsfW2jlCV4W83QKqRccAKIUxw2q/HoHVPbbETrrLmE6RR
Z/+eWlkGWl+mtx42HOgOmX0BRdTRo9vH7yeBowIDAQABo4IBdzCCAXMwHwYDVR0jBBgwFoAUrb2Y
ejS0Jvf6xCZU7wO94CTLVBowHQYDVR0OBBYEFB5pKrTcKP5HGE4hCz+8rBEv8Jj1MA4GA1UdDwEB
/wQEAwIBhjASBgNVHRMBAf8ECDAGAQH/AgEAMDYGA1UdJQQvMC0GCCsGAQUFBwMEBgorBgEEAYI3
CgMEBgorBgEEAYI3CgMMBgkrBgEEAYI3FQUwFwYDVR0gBBAwDjAMBgoqhkiG+E0BBQFpMEkGA1Ud
HwRCMEAwPqA8oDqGOGh0dHA6Ly9jcmwudHJ1c3QtcHJvdmlkZXIuY29tL0FkZFRydXN0RXh0ZXJu
YWxDQVJvb3QuY3JsMDoGCCsGAQUFBwEBBC4wLDAqBggrBgEFBQcwAYYeaHR0cDovL29jc3AudHJ1
c3QtcHJvdmlkZXIuY29tMDUGA1UdHgQuMCygKjALgQlpbnRlbC5jb20wG6AZBgorBgEEAYI3FAID
oAsMCWludGVsLmNvbTANBgkqhkiG9w0BAQUFAAOCAQEAKcLNo/2So1Jnoi8G7W5Q6FSPq1fmyKW3
sSDf1amvyHkjEgd25n7MKRHGEmRxxoziPKpcmbfXYU+J0g560nCo5gPF78Wd7ZmzcmCcm1UFFfIx
fw6QA19bRpTC8bMMaSSEl8y39Pgwa+HENmoPZsM63DdZ6ziDnPqcSbcfYs8qd/m5d22rpXq5IGVU
tX6LX7R/hSSw/3sfATnBLgiJtilVyY7OGGmYKCAS2I04itvSS1WtecXTt9OZDyNbl7LtObBrgMLh
ZkpJW+pOR9f3h5VG2S5uKkA7Th9NC9EoScdwQCAIw+UWKbSQ0Isj2UFL7fHKvmqWKVTL98sRzvI3
seNC4DCCBYUwggRtoAMCAQICEzMAANCeT1o0/0ixB9sAAAAA0J4wDQYJKoZIhvcNAQEFBQAweTEL
MAkGA1UEBhMCVVMxCzAJBgNVBAgTAkNBMRQwEgYDVQQHEwtTYW50YSBDbGFyYTEaMBgGA1UEChMR
SW50ZWwgQ29ycG9yYXRpb24xKzApBgNVBAMTIkludGVsIEV4dGVybmFsIEJhc2ljIElzc3Vpbmcg
Q0EgNEEwHhcNMTkwMzI5MTU0NzE3WhcNMjAwMzIzMTU0NzE3WjBHMRowGAYDVQQDExFOZ3V5ZW4s
IEFudGhvbnkgTDEpMCcGCSqGSIb3DQEJARYaYW50aG9ueS5sLm5ndXllbkBpbnRlbC5jb20wggEi
MA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDy81mhhcuBbByCW5RZJFytv0GAZpJ9dx6AqnRr
HScZeEx+CUPuU/ysvqKA6ltdRC44OsQwLa0uU6XbQTwCIhKXC6Bldj+iwEupskbquMlPBNQgktjl
1kn7nzokatLRUdE8M+i/QV9j7OgaK2VhLJTVCWYZQ8lLEoy9fq7AEinbU3sRd1sqVR5Z/+tzB22u
0mzEyY4XCyjsxO9bnysLGh3pVHR58NbebJBEKNEPyMT4+715be97sw2KWJgIhm8EBjKuMvfbBPZu
UDSWFPJn1IonMumCuP0DYWGYiGS8dKTJMMh2WA2XVewXVn0JQTWQDpckAOkmi+A0RwpZzYJ0Y3gT
AgMBAAGjggI2MIICMjAdBgNVHQ4EFgQUydTU8+nnPeJE0ndEkV7rlhV6p30wHwYDVR0jBBgwFoAU
HmkqtNwo/kcYTiELP7ysES/wmPUwZQYDVR0fBF4wXDBaoFigVoZUaHR0cDovL3d3dy5pbnRlbC5j
b20vcmVwb3NpdG9yeS9DUkwvSW50ZWwlMjBFeHRlcm5hbCUyMEJhc2ljJTIwSXNzdWluZyUyMENB
JTIwNEEuY3JsMIGeBggrBgEFBQcBAQSBkTCBjjBpBggrBgEFBQcwAoZdaHR0cDovL3d3dy5pbnRl
bC5jb20vcmVwb3NpdG9yeS9jZXJ0aWZpY2F0ZXMvSW50ZWwlMjBFeHRlcm5hbCUyMEJhc2ljJTIw
SXNzdWluZyUyMENBJTIwNEEuY3J0MCEGCCsGAQUFBzABhhVodHRwOi8vb2NzcC5pbnRlbC5jb20w
CwYDVR0PBAQDAgeAMDwGCSsGAQQBgjcVBwQvMC0GJSsGAQQBgjcVCIbDjHWEmeVRg/2BKIWOn1OC
kcAJZ4HevTmV8EMCAWQCAQkwHwYDVR0lBBgwFgYIKwYBBQUHAwQGCisGAQQBgjcKAwwwKQYJKwYB
BAGCNxUKBBwwGjAKBggrBgEFBQcDBDAMBgorBgEEAYI3CgMMMFEGA1UdEQRKMEigKgYKKwYBBAGC
NxQCA6AcDBphbnRob255Lmwubmd1eWVuQGludGVsLmNvbYEaYW50aG9ueS5sLm5ndXllbkBpbnRl
bC5jb20wDQYJKoZIhvcNAQEFBQADggEBALLF5b7PLd6kEWuQRkEq6eZpohKWRkfC9DyLiwS+HaeH
9euNcIqpV4xrMXM6mPqs3AHRb9ibqUPo3wQMtHph35RRsmY7ENk9FxF/W8Ov5ZVPyW0rFiRsnr1C
QVc08YqXp1dlbQGf8nvJn8ryCwjNpw0CTQcGHXrL/YnboLu8+R9RdBue/HIlP4g0pyAC/8YOie04
PVo4flU2CGMYilm1euQ6OV8WRA2CKgvRVp/DZEzTqnmDvy12efG74bmMzXAvDv2I53TR5ltDpx5X
B8uO1XlhOrj+Z3mSi85eblWWhJlq6+TQH/hZWSiyZH2lo3J49oHClTlk86GUEIUp/sf5v5cxggIX
MIICEwIBATCBkDB5MQswCQYDVQQGEwJVUzELMAkGA1UECBMCQ0ExFDASBgNVBAcTC1NhbnRhIENs
YXJhMRowGAYDVQQKExFJbnRlbCBDb3Jwb3JhdGlvbjErMCkGA1UEAxMiSW50ZWwgRXh0ZXJuYWwg
QmFzaWMgSXNzdWluZyBDQSA0QQITMwAA0J5PWjT/SLEH2wAAAADQnjAJBgUrDgMCGgUAoF0wGAYJ
KoZIhvcNAQkDMQsGCSqGSIb3DQEHATAcBgkqhkiG9w0BCQUxDxcNMjAwMjExMjIyMzAwWjAjBgkq
hkiG9w0BCQQxFgQU0EGRssR5T4ufCWzOj8CZar0emOcwDQYJKoZIhvcNAQEBBQAEggEANPULq57w
Z0i44IJ6DaYFoySZ4k7qSGMqasN/npULigXIM2RNSsyP34JPl42SYhhla3dxQkzz5F+Nb98h8Ron
FLxBIoanlsOGpEUDpsX3UvkF8WNfMB+yQUyYBuShGvG/WEkk8obMHIFWLd+2vT3ANUixfl6FGTKv
xROZdqM2Uwdp9XESWkub8kngyIfktGXxosGeGizxUjALCrx3DD252A2bKWrI3brwqSHtF1wAUhFg
rXTgLm2BKkOMLMkAI/jBnuCR5ggyp6JgTdyhSgGhKxLs9bgXUyQaEVb1ks/iQ7iVNCQ+F/DtNtir
hXdaGIxZOSkRubt26SXuUQNJaPNjoQAAAAAAAA==


--=-T0Qd88saMqTzfwKd9MwA--

--===============1067663838889012052==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============1067663838889012052==--
