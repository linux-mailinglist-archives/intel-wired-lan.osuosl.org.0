Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E7C613D735
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Jan 2020 10:50:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id ACA6120510;
	Thu, 16 Jan 2020 09:49:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RHYXqcaXWQgB; Thu, 16 Jan 2020 09:49:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id D76EE20796;
	Thu, 16 Jan 2020 09:49:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0E3EC1BF86B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jan 2020 09:49:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 06BB720440
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jan 2020 09:49:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MwJeCt-EF3HC for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 Jan 2020 09:49:51 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by silver.osuosl.org (Postfix) with ESMTPS id B0C6C20510
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jan 2020 09:49:50 +0000 (UTC)
Received: from rabammel.molgen.mpg.de (rabammel.molgen.mpg.de [141.14.30.220])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128
 bits)) (No client certificate requested)
 (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 979F120644690;
 Thu, 16 Jan 2020 10:49:47 +0100 (CET)
To: Sasha Neftin <sasha.neftin@intel.com>
References: <20200116085323.3027-1-sasha.neftin@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <b85a3b9f-2225-97ee-a248-a2d1185d2c58@molgen.mpg.de>
Date: Thu, 16 Jan 2020 10:49:47 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20200116085323.3027-1-sasha.neftin@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH v1] e1000e: Add support for Alder Lake
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Type: multipart/mixed; boundary="===============3822400215913767441=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This is a cryptographically signed message in MIME format.

--===============3822400215913767441==
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha-256; boundary="------------ms000503000601040309010103"

This is a cryptographically signed message in MIME format.

--------------ms000503000601040309010103
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Dear Sasha,


Thank you for the patch.

On 2020-01-16 09:53, Sasha Neftin wrote:
> Add devices ID's for the next LOM generations that will be
> available on the next Intel Client platform (Alder Lake)
> This patch provides the initial support for these devices

Could you please add a datasheet name/version to the commit message
too?

> Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
> ---
>  drivers/net/ethernet/intel/e1000e/ethtool.c |  2 ++
>  drivers/net/ethernet/intel/e1000e/hw.h      |  5 +++++
>  drivers/net/ethernet/intel/e1000e/ich8lan.c |  7 +++++++
>  drivers/net/ethernet/intel/e1000e/netdev.c  | 10 ++++++++--
>  drivers/net/ethernet/intel/e1000e/ptp.c     |  1 +
>  5 files changed, 23 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/e1000e/ethtool.c b/drivers/net/=
ethernet/intel/e1000e/ethtool.c
> index adce7e319b9e..9e7881db7859 100644
> --- a/drivers/net/ethernet/intel/e1000e/ethtool.c
> +++ b/drivers/net/ethernet/intel/e1000e/ethtool.c
> @@ -897,6 +897,7 @@ static int e1000_reg_test(struct e1000_adapter *ada=
pter, u64 *data)
>  	case e1000_pch_cnp:
>  		/* fall through */

Unrelated, but this fall through does not seem to be needed?

>  	case e1000_pch_tgp:
> +	case e1000_pch_adp:
>  		mask |=3D BIT(18);
>  		break;
>  	default:
> @@ -1561,6 +1562,7 @@ static void e1000_loopback_cleanup(struct e1000_a=
dapter *adapter)
>  	case e1000_pch_spt:
>  	case e1000_pch_cnp:
>  	case e1000_pch_tgp:
> +	case e1000_pch_adp:
>  		fext_nvm11 =3D er32(FEXTNVM11);
>  		fext_nvm11 &=3D ~E1000_FEXTNVM11_DISABLE_MULR_FIX;
>  		ew32(FEXTNVM11, fext_nvm11);
> diff --git a/drivers/net/ethernet/intel/e1000e/hw.h b/drivers/net/ether=
net/intel/e1000e/hw.h
> index f556163481cb..a1dbf8df1c70 100644
> --- a/drivers/net/ethernet/intel/e1000e/hw.h
> +++ b/drivers/net/ethernet/intel/e1000e/hw.h
> @@ -97,6 +97,10 @@ struct e1000_hw;
>  #define E1000_DEV_ID_PCH_TGP_I219_LM14		0x15F9
>  #define E1000_DEV_ID_PCH_TGP_I219_V14		0x15FA
>  #define E1000_DEV_ID_PCH_TGP_I219_LM15		0x15F4
> +#define E1000_DEV_ID_PCH_ADP_1219_LM16		0x1A1E
> +#define E1000_DEV_ID_PCH_ADP_1219_V16		0x1A1F
> +#define E1000_DEV_ID_PCH_ADP_1219_LM17		0x1A1C
> +#define E1000_DEV_ID_PCH_ADP_1219_V17		0x1A1D
> =20
>  #define E1000_REVISION_4	4
> =20
> @@ -121,6 +125,7 @@ enum e1000_mac_type {
>  	e1000_pch_spt,
>  	e1000_pch_cnp,
>  	e1000_pch_tgp,
> +	e1000_pch_adp,
>  };
> =20
>  enum e1000_media_type {
> diff --git a/drivers/net/ethernet/intel/e1000e/ich8lan.c b/drivers/net/=
ethernet/intel/e1000e/ich8lan.c
> index b4135c50e905..735bf25952fc 100644
> --- a/drivers/net/ethernet/intel/e1000e/ich8lan.c
> +++ b/drivers/net/ethernet/intel/e1000e/ich8lan.c
> @@ -317,6 +317,7 @@ static s32 e1000_init_phy_workarounds_pchlan(struct=
 e1000_hw *hw)
>  	case e1000_pch_spt:
>  	case e1000_pch_cnp:
>  	case e1000_pch_tgp:
> +	case e1000_pch_adp:
>  		if (e1000_phy_is_accessible_pchlan(hw))
>  			break;
> =20
> @@ -460,6 +461,7 @@ static s32 e1000_init_phy_params_pchlan(struct e100=
0_hw *hw)
>  		case e1000_pch_spt:
>  		case e1000_pch_cnp:
>  		case e1000_pch_tgp:
> +		case e1000_pch_adp:
>  			/* In case the PHY needs to be in mdio slow mode,
>  			 * set slow mode and try to get the PHY id again.
>  			 */
> @@ -703,6 +705,7 @@ static s32 e1000_init_mac_params_ich8lan(struct e10=
00_hw *hw)
>  	case e1000_pch_spt:
>  	case e1000_pch_cnp:
>  	case e1000_pch_tgp:
> +	case e1000_pch_adp:
>  	case e1000_pchlan:
>  		/* check management mode */
>  		mac->ops.check_mng_mode =3D e1000_check_mng_mode_pchlan;
> @@ -1642,6 +1645,7 @@ static s32 e1000_get_variants_ich8lan(struct e100=
0_adapter *adapter)
>  	case e1000_pch_spt:
>  	case e1000_pch_cnp:
>  	case e1000_pch_tgp:
> +	case e1000_pch_adp:
>  		rc =3D e1000_init_phy_params_pchlan(hw);
>  		break;
>  	default:
> @@ -2095,6 +2099,7 @@ static s32 e1000_sw_lcd_config_ich8lan(struct e10=
00_hw *hw)
>  	case e1000_pch_spt:
>  	case e1000_pch_cnp:
>  	case e1000_pch_tgp:
> +	case e1000_pch_adp:
>  		sw_cfg_mask =3D E1000_FEXTNVM_SW_CONFIG_ICH8M;
>  		break;
>  	default:
> @@ -3133,6 +3138,7 @@ static s32 e1000_valid_nvm_bank_detect_ich8lan(st=
ruct e1000_hw *hw, u32 *bank)
>  	case e1000_pch_spt:
>  	case e1000_pch_cnp:
>  	case e1000_pch_tgp:
> +	case e1000_pch_adp:
>  		bank1_offset =3D nvm->flash_bank_size;
>  		act_offset =3D E1000_ICH_NVM_SIG_WORD;
> =20
> @@ -4077,6 +4083,7 @@ static s32 e1000_validate_nvm_checksum_ich8lan(st=
ruct e1000_hw *hw)
>  	case e1000_pch_spt:
>  	case e1000_pch_cnp:
>  	case e1000_pch_tgp:
> +	case e1000_pch_adp:
>  		word =3D NVM_COMPAT;
>  		valid_csum_mask =3D NVM_COMPAT_VALID_CSUM;
>  		break;
> diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/e=
thernet/intel/e1000e/netdev.c
> index 60df6f2663c0..25ad824bb431 100644
> --- a/drivers/net/ethernet/intel/e1000e/netdev.c
> +++ b/drivers/net/ethernet/intel/e1000e/netdev.c
> @@ -3539,6 +3539,7 @@ s32 e1000e_get_base_timinca(struct e1000_adapter =
*adapter, u32 *timinca)
>  		break;
>  	case e1000_pch_cnp:
>  	case e1000_pch_tgp:
> +	case e1000_pch_adp:
>  		if (er32(TSYNCRXCTL) & E1000_TSYNCRXCTL_SYSCFI) {
>  			/* Stable 24MHz frequency */
>  			incperiod =3D INCPERIOD_24MHZ;
> @@ -4052,8 +4053,9 @@ void e1000e_reset(struct e1000_adapter *adapter)
>  	case e1000_pch_cnp:
>  		/* fall-through */

Also not needed?

>  	case e1000_pch_tgp:
> -		fc->refresh_time =3D 0xFFFF;
> -		fc->pause_time =3D 0xFFFF;
> +	case e1000_pch_adp:
> +
> +		fc->refresh_time =3D 0x0400;

This looks like a functional change for Tiger Lake and above too. Please
separate this out into a commit before, detailing the reasoning in the
commit message.

> =20
>  		if (adapter->netdev->mtu <=3D ETH_DATA_LEN) {
>  			fc->high_water =3D 0x05C20;
> @@ -7764,6 +7766,10 @@ static const struct pci_device_id e1000_pci_tbl[=
] =3D {
>  	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_TGP_I219_LM14), board_pch_cnp }=
,
>  	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_TGP_I219_V14), board_pch_cnp },=

>  	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_TGP_I219_LM15), board_pch_cnp }=
,
> +	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_ADP_1219_LM16), board_pch_cnp }=
,
> +	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_ADP_1219_V16), board_pch_cnp },=

> +	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_ADP_1219_LM17), board_pch_cnp }=
,
> +	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_ADP_1219_V17), board_pch_cnp },=

> =20
>  	{ 0, 0, 0, 0, 0, 0, 0 }	/* terminate list */
>  };
> diff --git a/drivers/net/ethernet/intel/e1000e/ptp.c b/drivers/net/ethe=
rnet/intel/e1000e/ptp.c
> index eaa5a0fb99f0..439fda2f5368 100644
> --- a/drivers/net/ethernet/intel/e1000e/ptp.c
> +++ b/drivers/net/ethernet/intel/e1000e/ptp.c
> @@ -297,6 +297,7 @@ void e1000e_ptp_init(struct e1000_adapter *adapter)=

>  	case e1000_pch_cnp:
>  		/* fall-through */

Not needed? Could you please add a clean-up before this commit?

>  	case e1000_pch_tgp:
> +	case e1000_pch_adp:
>  		if ((hw->mac.type < e1000_pch_lpt) ||
>  		    (er32(TSYNCRXCTL) & E1000_TSYNCRXCTL_SYSCFI)) {
>  			adapter->ptp_clock_info.max_adj =3D 24000000 - 1;

With all these expanded switch statements, it might be a good idea to ref=
actor
the driver, to have some kind of families (I219(?)), which is used in the=
se
cases.


Kind regards,

Paul


--------------ms000503000601040309010103
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"
Content-Description: S/MIME Cryptographic Signature

MIAGCSqGSIb3DQEHAqCAMIACAQExDzANBglghkgBZQMEAgEFADCABgkqhkiG9w0BBwEAAKCC
EFowggUSMIID+qADAgECAgkA4wvV+K8l2YEwDQYJKoZIhvcNAQELBQAwgYIxCzAJBgNVBAYT
AkRFMSswKQYDVQQKDCJULVN5c3RlbXMgRW50ZXJwcmlzZSBTZXJ2aWNlcyBHbWJIMR8wHQYD
VQQLDBZULVN5c3RlbXMgVHJ1c3QgQ2VudGVyMSUwIwYDVQQDDBxULVRlbGVTZWMgR2xvYmFs
Um9vdCBDbGFzcyAyMB4XDTE2MDIyMjEzMzgyMloXDTMxMDIyMjIzNTk1OVowgZUxCzAJBgNV
BAYTAkRFMUUwQwYDVQQKEzxWZXJlaW4genVyIEZvZXJkZXJ1bmcgZWluZXMgRGV1dHNjaGVu
IEZvcnNjaHVuZ3NuZXR6ZXMgZS4gVi4xEDAOBgNVBAsTB0RGTi1QS0kxLTArBgNVBAMTJERG
Ti1WZXJlaW4gQ2VydGlmaWNhdGlvbiBBdXRob3JpdHkgMjCCASIwDQYJKoZIhvcNAQEBBQAD
ggEPADCCAQoCggEBAMtg1/9moUHN0vqHl4pzq5lN6mc5WqFggEcVToyVsuXPztNXS43O+FZs
FVV2B+pG/cgDRWM+cNSrVICxI5y+NyipCf8FXRgPxJiZN7Mg9mZ4F4fCnQ7MSjLnFp2uDo0p
eQcAIFTcFV9Kltd4tjTTwXS1nem/wHdN6r1ZB+BaL2w8pQDcNb1lDY9/Mm3yWmpLYgHurDg0
WUU2SQXaeMpqbVvAgWsRzNI8qIv4cRrKO+KA3Ra0Z3qLNupOkSk9s1FcragMvp0049ENF4N1
xDkesJQLEvHVaY4l9Lg9K7/AjsMeO6W/VRCrKq4Xl14zzsjz9AkH4wKGMUZrAcUQDBHHWekC
AwEAAaOCAXQwggFwMA4GA1UdDwEB/wQEAwIBBjAdBgNVHQ4EFgQUk+PYMiba1fFKpZFK4OpL
4qIMz+EwHwYDVR0jBBgwFoAUv1kgNgB5oKAia4zV8mHSuCzLgkowEgYDVR0TAQH/BAgwBgEB
/wIBAjAzBgNVHSAELDAqMA8GDSsGAQQBga0hgiwBAQQwDQYLKwYBBAGBrSGCLB4wCAYGZ4EM
AQICMEwGA1UdHwRFMEMwQaA/oD2GO2h0dHA6Ly9wa2kwMzM2LnRlbGVzZWMuZGUvcmwvVGVs
ZVNlY19HbG9iYWxSb290X0NsYXNzXzIuY3JsMIGGBggrBgEFBQcBAQR6MHgwLAYIKwYBBQUH
MAGGIGh0dHA6Ly9vY3NwMDMzNi50ZWxlc2VjLmRlL29jc3ByMEgGCCsGAQUFBzAChjxodHRw
Oi8vcGtpMDMzNi50ZWxlc2VjLmRlL2NydC9UZWxlU2VjX0dsb2JhbFJvb3RfQ2xhc3NfMi5j
ZXIwDQYJKoZIhvcNAQELBQADggEBAIcL/z4Cm2XIVi3WO5qYi3FP2ropqiH5Ri71sqQPrhE4
eTizDnS6dl2e6BiClmLbTDPo3flq3zK9LExHYFV/53RrtCyD2HlrtrdNUAtmB7Xts5et6u5/
MOaZ/SLick0+hFvu+c+Z6n/XUjkurJgARH5pO7917tALOxrN5fcPImxHhPalR6D90Bo0fa3S
PXez7vTXTf/D6OWST1k+kEcQSrCFWMBvf/iu7QhCnh7U3xQuTY+8npTD5+32GPg8SecmqKc2
2CzeIs2LgtjZeOJVEqM7h0S2EQvVDFKvaYwPBt/QolOLV5h7z/0HJPT8vcP9SpIClxvyt7bP
ZYoaorVyGTkwggWNMIIEdaADAgECAgwcOtRQhH7u81j4jncwDQYJKoZIhvcNAQELBQAwgZUx
CzAJBgNVBAYTAkRFMUUwQwYDVQQKEzxWZXJlaW4genVyIEZvZXJkZXJ1bmcgZWluZXMgRGV1
dHNjaGVuIEZvcnNjaHVuZ3NuZXR6ZXMgZS4gVi4xEDAOBgNVBAsTB0RGTi1QS0kxLTArBgNV
BAMTJERGTi1WZXJlaW4gQ2VydGlmaWNhdGlvbiBBdXRob3JpdHkgMjAeFw0xNjExMDMxNTI0
NDhaFw0zMTAyMjIyMzU5NTlaMGoxCzAJBgNVBAYTAkRFMQ8wDQYDVQQIDAZCYXllcm4xETAP
BgNVBAcMCE11ZW5jaGVuMSAwHgYDVQQKDBdNYXgtUGxhbmNrLUdlc2VsbHNjaGFmdDEVMBMG
A1UEAwwMTVBHIENBIC0gRzAyMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAnhx4
59Lh4WqgOs/Md04XxU2yFtfM15ZuJV0PZP7BmqSJKLLPyqmOrADfNdJ5PIGBto2JBhtRRBHd
G0GROOvTRHjzOga95WOTeura79T21FWwwAwa29OFnD3ZplQs6HgdwQrZWNi1WHNJxn/4mA19
rNEBUc5urSIpZPvZi5XmlF3v3JHOlx3KWV7mUteB4pwEEfGTg4npPAJbp2o7arxQdoIq+Pu2
OsvqhD7Rk4QeaX+EM1QS4lqd1otW4hE70h/ODPy1xffgbZiuotWQLC6nIwa65Qv6byqlIX0q
Zuu99Vsu+r3sWYsL5SBkgecNI7fMJ5tfHrjoxfrKl/ErTAt8GQIDAQABo4ICBTCCAgEwEgYD
VR0TAQH/BAgwBgEB/wIBATAOBgNVHQ8BAf8EBAMCAQYwKQYDVR0gBCIwIDANBgsrBgEEAYGt
IYIsHjAPBg0rBgEEAYGtIYIsAQEEMB0GA1UdDgQWBBTEiKUH7rh7qgwTv9opdGNSG0lwFjAf
BgNVHSMEGDAWgBST49gyJtrV8UqlkUrg6kviogzP4TCBjwYDVR0fBIGHMIGEMECgPqA8hjpo
dHRwOi8vY2RwMS5wY2EuZGZuLmRlL2dsb2JhbC1yb290LWcyLWNhL3B1Yi9jcmwvY2Fjcmwu
Y3JsMECgPqA8hjpodHRwOi8vY2RwMi5wY2EuZGZuLmRlL2dsb2JhbC1yb290LWcyLWNhL3B1
Yi9jcmwvY2FjcmwuY3JsMIHdBggrBgEFBQcBAQSB0DCBzTAzBggrBgEFBQcwAYYnaHR0cDov
L29jc3AucGNhLmRmbi5kZS9PQ1NQLVNlcnZlci9PQ1NQMEoGCCsGAQUFBzAChj5odHRwOi8v
Y2RwMS5wY2EuZGZuLmRlL2dsb2JhbC1yb290LWcyLWNhL3B1Yi9jYWNlcnQvY2FjZXJ0LmNy
dDBKBggrBgEFBQcwAoY+aHR0cDovL2NkcDIucGNhLmRmbi5kZS9nbG9iYWwtcm9vdC1nMi1j
YS9wdWIvY2FjZXJ0L2NhY2VydC5jcnQwDQYJKoZIhvcNAQELBQADggEBABLpeD5FygzqOjj+
/lAOy20UQOGWlx0RMuPcI4nuyFT8SGmK9lD7QCg/HoaJlfU/r78ex+SEide326evlFAoJXIF
jVyzNltDhpMKrPIDuh2N12zyn1EtagqPL6hu4pVRzcBpl/F2HCvtmMx5K4WN1L1fmHWLcSap
dhXLvAZ9RG/B3rqyULLSNN8xHXYXpmtvG0VGJAndZ+lj+BH7uvd3nHWnXEHC2q7iQlDUqg0a
wIqWJgdLlx1Q8Dg/sodv0m+LN0kOzGvVDRCmowBdWGhhusD+duKV66pBl+qhC+4LipariWaM
qK5ppMQROATjYeNRvwI+nDcEXr2vDaKmdbxgDVwwggWvMIIEl6ADAgECAgweKlJIhfynPMVG
/KIwDQYJKoZIhvcNAQELBQAwajELMAkGA1UEBhMCREUxDzANBgNVBAgMBkJheWVybjERMA8G
A1UEBwwITXVlbmNoZW4xIDAeBgNVBAoMF01heC1QbGFuY2stR2VzZWxsc2NoYWZ0MRUwEwYD
VQQDDAxNUEcgQ0EgLSBHMDIwHhcNMTcxMTE0MTEzNDE2WhcNMjAxMTEzMTEzNDE2WjCBizEL
MAkGA1UEBhMCREUxIDAeBgNVBAoMF01heC1QbGFuY2stR2VzZWxsc2NoYWZ0MTQwMgYDVQQL
DCtNYXgtUGxhbmNrLUluc3RpdHV0IGZ1ZXIgbW9sZWt1bGFyZSBHZW5ldGlrMQ4wDAYDVQQL
DAVNUElNRzEUMBIGA1UEAwwLUGF1bCBNZW56ZWwwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAw
ggEKAoIBAQDIh/UR/AX/YQ48VWWDMLTYtXjYJyhRHMc81ZHMMoaoG66lWB9MtKRTnB5lovLZ
enTIUyPsCrMhTqV9CWzDf6v9gOTWVxHEYqrUwK5H1gx4XoK81nfV8oGV4EKuVmmikTXiztGz
peyDmOY8o/EFNWP7YuRkY/lPQJQBeBHYq9AYIgX4StuXu83nusq4MDydygVOeZC15ts0tv3/
6WmibmZd1OZRqxDOkoBbY3Djx6lERohs3IKS6RKiI7e90rCSy9rtidJBOvaQS9wvtOSKPx0a
+2pAgJEVzZFjOAfBcXydXtqXhcpOi2VCyl+7+LnnTz016JJLsCBuWEcB3kP9nJYNAgMBAAGj
ggIxMIICLTAJBgNVHRMEAjAAMA4GA1UdDwEB/wQEAwIF4DAdBgNVHSUEFjAUBggrBgEFBQcD
AgYIKwYBBQUHAwQwHQYDVR0OBBYEFHM0Mc3XjMLlhWpp4JufRELL4A/qMB8GA1UdIwQYMBaA
FMSIpQfuuHuqDBO/2il0Y1IbSXAWMCAGA1UdEQQZMBeBFXBtZW56ZWxAbW9sZ2VuLm1wZy5k
ZTB9BgNVHR8EdjB0MDigNqA0hjJodHRwOi8vY2RwMS5wY2EuZGZuLmRlL21wZy1nMi1jYS9w
dWIvY3JsL2NhY3JsLmNybDA4oDagNIYyaHR0cDovL2NkcDIucGNhLmRmbi5kZS9tcGctZzIt
Y2EvcHViL2NybC9jYWNybC5jcmwwgc0GCCsGAQUFBwEBBIHAMIG9MDMGCCsGAQUFBzABhido
dHRwOi8vb2NzcC5wY2EuZGZuLmRlL09DU1AtU2VydmVyL09DU1AwQgYIKwYBBQUHMAKGNmh0
dHA6Ly9jZHAxLnBjYS5kZm4uZGUvbXBnLWcyLWNhL3B1Yi9jYWNlcnQvY2FjZXJ0LmNydDBC
BggrBgEFBQcwAoY2aHR0cDovL2NkcDIucGNhLmRmbi5kZS9tcGctZzItY2EvcHViL2NhY2Vy
dC9jYWNlcnQuY3J0MEAGA1UdIAQ5MDcwDwYNKwYBBAGBrSGCLAEBBDARBg8rBgEEAYGtIYIs
AQEEAwYwEQYPKwYBBAGBrSGCLAIBBAMGMA0GCSqGSIb3DQEBCwUAA4IBAQCQs6bUDROpFO2F
Qz2FMgrdb39VEo8P3DhmpqkaIMC5ZurGbbAL/tAR6lpe4af682nEOJ7VW86ilsIJgm1j0ueY
aOuL8jrN4X7IF/8KdZnnNnImW3QVni6TCcc+7+ggci9JHtt0IDCj5vPJBpP/dKXLCN4M+exl
GXYpfHgxh8gclJPY1rquhQrihCzHfKB01w9h9tWZDVMtSoy9EUJFhCXw7mYUsvBeJwZesN2B
fndPkrXx6XWDdU3S1LyKgHlLIFtarLFm2Hb5zAUR33h+26cN6ohcGqGEEzgIG8tXS8gztEaj
1s2RyzmKd4SXTkKR3GhkZNVWy+gM68J7jP6zzN+cMYIDmjCCA5YCAQEwejBqMQswCQYDVQQG
EwJERTEPMA0GA1UECAwGQmF5ZXJuMREwDwYDVQQHDAhNdWVuY2hlbjEgMB4GA1UECgwXTWF4
LVBsYW5jay1HZXNlbGxzY2hhZnQxFTATBgNVBAMMDE1QRyBDQSAtIEcwMgIMHipSSIX8pzzF
RvyiMA0GCWCGSAFlAwQCAQUAoIIB8TAYBgkqhkiG9w0BCQMxCwYJKoZIhvcNAQcBMBwGCSqG
SIb3DQEJBTEPFw0yMDAxMTYwOTQ5NDdaMC8GCSqGSIb3DQEJBDEiBCC2BMWDPKOUoWz98Elr
y3NCQSnyp0rc/5+hclcfM4vBBjBsBgkqhkiG9w0BCQ8xXzBdMAsGCWCGSAFlAwQBKjALBglg
hkgBZQMEAQIwCgYIKoZIhvcNAwcwDgYIKoZIhvcNAwICAgCAMA0GCCqGSIb3DQMCAgFAMAcG
BSsOAwIHMA0GCCqGSIb3DQMCAgEoMIGJBgkrBgEEAYI3EAQxfDB6MGoxCzAJBgNVBAYTAkRF
MQ8wDQYDVQQIDAZCYXllcm4xETAPBgNVBAcMCE11ZW5jaGVuMSAwHgYDVQQKDBdNYXgtUGxh
bmNrLUdlc2VsbHNjaGFmdDEVMBMGA1UEAwwMTVBHIENBIC0gRzAyAgweKlJIhfynPMVG/KIw
gYsGCyqGSIb3DQEJEAILMXygejBqMQswCQYDVQQGEwJERTEPMA0GA1UECAwGQmF5ZXJuMREw
DwYDVQQHDAhNdWVuY2hlbjEgMB4GA1UECgwXTWF4LVBsYW5jay1HZXNlbGxzY2hhZnQxFTAT
BgNVBAMMDE1QRyBDQSAtIEcwMgIMHipSSIX8pzzFRvyiMA0GCSqGSIb3DQEBAQUABIIBAMM9
3v6HLMp+bW8K/hFrfU/YW8auXLrr87HJx1WTU1L55/zcw2nyY9rPueMVf02PS7PeUVwteFG5
g1Pua/SSLAwSJexiTcEg70+GPUokt6Wq+NLQwG5QJEGVMR5QNB8KXc5et04XYlKnfWOKVelG
mf5E6cph5Cj2WKli0INcF9UWB+Pm/6zclM9fLJJOoeorjkIpTgfuO16+3za12X2BHigzJwxu
5zu28eoXh5Iv5y/V7ZQhfmwCnuL7ddU8PkJPAl1rDJ1FQhJNE0G3HEcxZiICMTbE3cs45/CG
pc+oqHHc+jFJ7ZAmztLOiuRokr6nc8UErA+P51RbSF76xnEABikAAAAAAAA=
--------------ms000503000601040309010103--

--===============3822400215913767441==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============3822400215913767441==--
