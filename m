Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 347C228D1DC
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Oct 2020 18:10:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C703387C43;
	Tue, 13 Oct 2020 16:10:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Gdj25taQcHHs; Tue, 13 Oct 2020 16:10:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8849787C4A;
	Tue, 13 Oct 2020 16:10:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 579091BF36B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Oct 2020 16:03:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 317F92E131
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Oct 2020 16:03:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2hWBdP9JPtfo for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Oct 2020 16:03:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx0b-00154904.pphosted.com (mx0b-00154904.pphosted.com
 [148.163.137.20])
 by silver.osuosl.org (Postfix) with ESMTPS id 006142288E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Oct 2020 16:03:36 +0000 (UTC)
Received: from pps.filterd (m0170395.ppops.net [127.0.0.1])
 by mx0b-00154904.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 09DG20l2031061; Tue, 13 Oct 2020 12:03:34 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dell.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=smtpout1;
 bh=V6fUpSuH0KXiSENVrUROmbV7tf0CzfC2LcgJGuoDiiQ=;
 b=bE4ZoE5zaEAPUyL7wBqiImm+QRHVIi1ltbUEKX/dbMYIpQP3vaVLGX21d12XzkaTqjmG
 ZL1J2PWdqzLOQsKySQUgEyAJ5+yvtbL7zdRIqRe0LoaVdqw+RvlK6CC5KPRj8iB/6gZ1
 UzDnP5Oos1ed7AGYqLKV6twbGqwkB1fmJTIBrXyc0Mb6mmjoe77x1vaIy7eF+5dJKRfS
 nIZZ+uzB4KRkK88cSoBBtHn7lS9Woiv367sJWr2ym1F8wpHmIF4Cz0s4INIHEZDojTqM
 1PIwsLpjHhcopUg4Wpjab2Nm/qJtc1tA2TG21zd8aOWZ7kO5rD3DlOdfbr4cP4jR3eWM LQ== 
Received: from mx0a-00154901.pphosted.com (mx0a-00154901.pphosted.com
 [67.231.149.39])
 by mx0b-00154904.pphosted.com with ESMTP id 3439mnt2k9-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 13 Oct 2020 12:03:34 -0400
Received: from pps.filterd (m0134746.ppops.net [127.0.0.1])
 by mx0a-00154901.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 09DFwsNC117548; Tue, 13 Oct 2020 12:03:33 -0400
Received: from nam10-bn7-obe.outbound.protection.outlook.com
 (mail-bn7nam10lp2103.outbound.protection.outlook.com [104.47.70.103])
 by mx0a-00154901.pphosted.com with ESMTP id 345c08v2bs-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 13 Oct 2020 12:03:33 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DtOrksvm82grIvNsL0an7C9gJBVwx+pUzOhqpxYiBCGBjAzbLEvZHxqSNgXtWJGUVJDgLxlrHZqoRSeRXgDMmJ8q664j+cXIMFI/mCpFhViO61xrcMCZrt4tBHkH7NzcM4i69HIvhwtYFv+6ldRej398A+BAkErb6yM1L0PWgq89ktnKxSBzMh3xtaKK0kVVRnVhQCLYCm4Kj/QcFe5zbW5sKkjvPPRFkCfJYij5fqhOXCavoqvQ4FWbpUMVxptl+wp7nCaamRRllrEnfu82POuVbktASeOgBLHWiZNISjUtuWo8WKNWrJP6jvLkPvRojefaYn0yYAGHtoR9u+Z7hA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=V6fUpSuH0KXiSENVrUROmbV7tf0CzfC2LcgJGuoDiiQ=;
 b=Kk2wWesKZrioF20uvjTgfN6cAdCGrI/VSnS1YeZapffPYIIIF/3oxhNc6/W9Uogu/cRCXvoe4pGYCmni1rFSO6pmDyt924if/JuqARcWkkn4FOkeXRDlEwbUsGhQ9+yLRgLhzZzxnPSoXxsFHIcp+mOaV/9rMC8j0c2QlRt9GekPA89mxzVRzwkV1ZvdCwA2Uj/h5Sl9i/B/SI+ad+kNhcOZh5zb7KO1AbA/EP2OzXe1NOtMfHG1+ojnf5bi7Ga4dEPTBTdQZ+zuB7IlfmH2r7Zm4+T0OKMehINFE5Y/QXaH17OF8oOVweO5iWNuVXRvC4hMUZmgRD/CSqujkaLaVA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dell.com; dmarc=pass action=none header.from=dell.com;
 dkim=pass header.d=dell.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Dell.onmicrosoft.com; 
 s=selector1-Dell-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=V6fUpSuH0KXiSENVrUROmbV7tf0CzfC2LcgJGuoDiiQ=;
 b=fA8/t/Vf97JtFnGhr4AMQ/+Q1mXNfah4DAm7viqJqiOl+iT6YxDqH1UyFYm7LS25wnQ6zRD9Rbi2SbrUiQ07NpAynzMRxLrnBGKPAHXo52uz0HMtY2rykKtl09Ju9nk1ReuOwsOWjJ8P2Qd4l20ittCremBZCYNyv+T7YyyRq6o=
Received: from DM6PR19MB3691.namprd19.prod.outlook.com (2603:10b6:5:1d8::15)
 by DM6PR19MB2570.namprd19.prod.outlook.com (2603:10b6:5:186::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3477.20; Tue, 13 Oct
 2020 16:03:27 +0000
Received: from DM6PR19MB3691.namprd19.prod.outlook.com
 ([fe80::1c5c:e865:3afa:b3a2]) by DM6PR19MB3691.namprd19.prod.outlook.com
 ([fe80::1c5c:e865:3afa:b3a2%6]) with mapi id 15.20.3477.020; Tue, 13 Oct 2020
 16:03:27 +0000
From: "Shen, Yijun" <Yijun.Shen@dell.com>
To: "Limonciello, Mario" <Mario.Limonciello@dell.com>, "Brown, Aaron F"
 <aaron.f.brown@intel.com>, "Kirsher, Jeffrey T"
 <jeffrey.t.kirsher@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH 2/3] e1000e: Add Dell's Comet Lake
 systems into s0ix heuristics
Thread-Index: AQHWlWQ1Klkytgcwh0is6KJPY3WyxamLVECwgAAC44CACnJAMA==
Date: Tue, 13 Oct 2020 16:03:27 +0000
Message-ID: <DM6PR19MB3691176E50F919E5CE9ED5C79A040@DM6PR19MB3691.namprd19.prod.outlook.com>
References: <20200928044024.7595-1-mario.limonciello@dell.com>
 <20200928044024.7595-3-mario.limonciello@dell.com>
 <DM6PR11MB2890F9ACE2ACF01E52A1ADBDBC0A0@DM6PR11MB2890.namprd11.prod.outlook.com>
 <DM6PR19MB263685129F30B4D7213398A9FA0A0@DM6PR19MB2636.namprd19.prod.outlook.com>
In-Reply-To: <DM6PR19MB263685129F30B4D7213398A9FA0A0@DM6PR19MB2636.namprd19.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Enabled=True;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_SiteId=945c199a-83a2-4e80-9f8c-5a91be5752dd;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Owner=Mario_Limonciello@Dell.com;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_SetDate=2020-10-07T00:29:41.3594513Z;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Name=External Public;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Application=Microsoft Azure
 Information Protection;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_ActionId=f6f3ed80-bfc9-4ff5-bce1-108640737d02;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Extended_MSFT_Method=Manual
authentication-results: Dell.com; dkim=none (message not signed)
 header.d=none;Dell.com; dmarc=none action=none header.from=Dell.com;
x-originating-ip: [101.86.17.213]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7524f797-fc2d-412a-ba76-08d86f918568
x-ms-traffictypediagnostic: DM6PR19MB2570:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR19MB25701CF54A8DE043F04BDA889A040@DM6PR19MB2570.namprd19.prod.outlook.com>
x-exotenant: 2khUwGVqB6N9v58KS13ncyUmMJd8q4
x-ms-oob-tlc-oobclassifiers: OLM:1051;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: M3+Q2CJyHxDb5jCC4d67N4I79ItmeQ9pI0N/79zUf3pPNrhXbPj1xlxsmOhZD3tmj/ydL63iH+/+andQUI9E7U7mPe/pt5/C+6GJ2966i2LYtiDz1IRMcPiH/fzSmXMLntGa8wRVZTGRZhiTfVdjlENjH5RRKwVk8IWbao8gG/PXi8XPszI0y67s12FuAk8ld68bwiM12o6RzyoUTAKMYgWhfqMOzfG/h5F9FI7L23QfF9tbTkGjP7ItPYlT039xgOeZP5PK+GKni+m3qW0AGghObvTgXaqV5rX0ylAaImNrG5bp4PAMRAJrqqjjKtGEj/kBsu7WuqWDYtapcR6iGye57kbkxRA1eNFZCA3gAKqwf9YDCnj25SE8wV42O50fVsUldN4RSyzX1aTHJcxCh6hlMmeZ2geUU3u5lYJRoQ5ZKFYdxxalIPzVM6vZRa3P50meQfKVQiDQsqETkgvLrQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR19MB3691.namprd19.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(5660300002)(966005)(7696005)(76116006)(86362001)(52536014)(2906002)(66556008)(64756008)(66946007)(66446008)(66476007)(55016002)(4326008)(498600001)(6506007)(53546011)(26005)(186003)(110136005)(54906003)(9686003)(83380400001)(8676002)(71200400001)(83080400001)(33656002)(8936002)(32563001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: zpntnF91XrVevMUJvRmfpH++9rKqdzp+sUXxzVmKs7JbVUp0tewyphELcCUCslTfvI9Rdzf1N7iEN6/UUoVlUg5wrUfXaDYJ4KJEYCrYg7Yj0Ldhrj0KO0C4KTE5tqWpGVGoeHipTFVJm5whOpILaTs61bXCosP8FjLpCsXvQKdIc1lx5vTGn2wexIwcHv+zMtDsNdQdTlSZ14+GJWVfvUIXkvet/PdsZrIfUYk0FVW++FXin7By4UPgxKZGqWPsDyv4se6Q4fMVoY05B149hepayGQlWzc8iM5+MHSXfXZ9IRfSvK/DWBMoxIJ781ElnSR8W7uGhIU8K5Rtef/xRD2KaaXVJIvRng2BN+7L23AKylWmYpKaC2d5ghZz+sOI+uKNEKoF7Fun5HNy+jIH6leX2L1ijcchDSbmPrdleV4f7l2JXuOyOKR/UC9h4GF8QlyF2F1xbv9VOYCUrZQAmUS+V0gjUhnoiCT8Lu0CfgZ4wBQW/Sw5DTz+cN5kWuqWK2vqSTdv4dKFX7rQlLk9NTHc9pLATnicuIEHhBQGBW0ZVBvnEZlIuDAV6FD4F6Kuk9wSDIs2lBV6oKn5zZKAh3LnpLy17yC7g9b2JLjhZw01IbWaLpzJ70Hujzg6yGwIbEpPX7nBVY3g5mnvghWaVA==
MIME-Version: 1.0
X-OriginatorOrg: Dell.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR19MB3691.namprd19.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7524f797-fc2d-412a-ba76-08d86f918568
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Oct 2020 16:03:27.0930 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 945c199a-83a2-4e80-9f8c-5a91be5752dd
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rAPdWqBmGifWKlBTulhS70roKVJin4Y+JVqGNedtPoxhc5Jl8i3EjZRNAm3CBIQ6uCYnQjQmoX2Pcy1JSzCCEw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR19MB2570
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.235, 18.0.687
 definitions=2020-10-13_08:2020-10-13,
 2020-10-13 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0
 mlxlogscore=999 impostorscore=0 spamscore=0 bulkscore=0 priorityscore=1501
 suspectscore=0 adultscore=0 phishscore=0 malwarescore=0 clxscore=1011
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2010130117
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999
 malwarescore=0
 phishscore=0 adultscore=0 suspectscore=0 bulkscore=0 mlxscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2010130118
X-Mailman-Approved-At: Tue, 13 Oct 2020 16:10:22 +0000
Subject: Re: [Intel-wired-lan] [PATCH 2/3] e1000e: Add Dell's Comet Lake
 systems into s0ix heuristics
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
Cc: "Yuan, Perry" <Perry.Yuan@dell.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Limonciello, Mario <Mario_Limonciello@Dell.com>
> Sent: Wednesday, October 7, 2020 8:30 AM
> To: Brown, Aaron F; Kirsher, Jeffrey T; intel-wired-lan@lists.osuosl.org
> Cc: Yuan, Perry; Shen, Yijun; linux-kernel@vger.kernel.org
> Subject: RE: [Intel-wired-lan] [PATCH 2/3] e1000e: Add Dell's Comet Lake
> systems into s0ix heuristics
> 
> 
> > > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> > > Of Mario Limonciello
> > > Sent: Sunday, September 27, 2020 9:40 PM
> > > To: Kirsher, Jeffrey T <jeffrey.t.kirsher@intel.com>; intel-wired-
> > > lan@lists.osuosl.org
> > > Cc: Perry.Yuan@dell.com; Yijun.Shen@dell.com;
> > > linux-kernel@vger.kernel.org; Mario Limonciello
> > > <mario.limonciello@dell.com>
> > > Subject: [Intel-wired-lan] [PATCH 2/3] e1000e: Add Dell's Comet Lake
> > > systems into s0ix heuristics
> > >
> > > Dell's Comet Lake Latitude and Precision systems containing i219LM
> > > are properly configured and should use the s0ix flows.
> > >
> > > Signed-off-by: Mario Limonciello <mario.limonciello@dell.com>
> > > ---
> > >  drivers/net/ethernet/intel/Kconfig        |  1 +
> > >  drivers/net/ethernet/intel/e1000e/param.c | 80
> > > ++++++++++++++++++++++-
> > >  2 files changed, 80 insertions(+), 1 deletion(-)
> >
> > Is there anyone who touched this hardware with this patch willing to
> > provide a Tested-by:?
> > I am happy to do regression / sanity checks against other e1000e based
> > systems, but do not have access to these devices.
> 
> Alex (Yijun) who is CC'ed did test them and I expect can add a Tested-By after
> the China holidays are over.
> 

Tested-by: Yijun Shen <Yijun.shen@dell.com>

> >
> > >
> > > diff --git a/drivers/net/ethernet/intel/Kconfig
> > > b/drivers/net/ethernet/intel/Kconfig
> > > index 5aa86318ed3e..280af47d74d2 100644
> > > --- a/drivers/net/ethernet/intel/Kconfig
> > > +++ b/drivers/net/ethernet/intel/Kconfig
> > > @@ -58,6 +58,7 @@ config E1000
> > >  config E1000E
> > >  	tristate "Intel(R) PRO/1000 PCI-Express Gigabit Ethernet support"
> > >  	depends on PCI && (!SPARC32 || BROKEN)
> > > +	depends on DMI
> > >  	select CRC32
> > >  	imply PTP_1588_CLOCK
> > >  	help
> > > diff --git a/drivers/net/ethernet/intel/e1000e/param.c
> > > b/drivers/net/ethernet/intel/e1000e/param.c
> > > index e66b222c824b..58e6718c4f75 100644
> > > --- a/drivers/net/ethernet/intel/e1000e/param.c
> > > +++ b/drivers/net/ethernet/intel/e1000e/param.c
> > > @@ -1,6 +1,7 @@
> > >  // SPDX-License-Identifier: GPL-2.0
> > >  /* Copyright(c) 1999 - 2018 Intel Corporation. */
> > >
> > > +#include <linux/dmi.h>
> > >  #include <linux/netdevice.h>
> > >  #include <linux/module.h>
> > >  #include <linux/pci.h>
> > > @@ -201,6 +202,80 @@ static const struct e1000e_me_supported
> > > me_supported[] = {
> > >  	{0}
> > >  };
> > >
> > > +static const struct dmi_system_id s0ix_supported_systems[] = {
> > > +	{
> > > +		/* Dell Latitude 5310 */
> > > +		.matches = {
> > > +			DMI_MATCH(DMI_SYS_VENDOR, "Dell Inc."),
> > > +			DMI_MATCH(DMI_PRODUCT_SKU, "099F"),
> > > +		},
> > > +	},
> > > +	{
> > > +		/* Dell Latitude 5410 */
> > > +		.matches = {
> > > +			DMI_MATCH(DMI_SYS_VENDOR, "Dell Inc."),
> > > +			DMI_MATCH(DMI_PRODUCT_SKU, "09A0"),
> > > +		},
> > > +	},
> > > +	{
> > > +		/* Dell Latitude 5410 */
> > > +		.matches = {
> > > +			DMI_MATCH(DMI_SYS_VENDOR, "Dell Inc."),
> > > +			DMI_MATCH(DMI_PRODUCT_SKU, "09C9"),
> > > +		},
> > > +	},
> > > +	{
> > > +		/* Dell Latitude 5510 */
> > > +		.matches = {
> > > +			DMI_MATCH(DMI_SYS_VENDOR, "Dell Inc."),
> > > +			DMI_MATCH(DMI_PRODUCT_SKU, "09A1"),
> > > +		},
> > > +	},
> > > +	{
> > > +		/* Dell Precision 3550 */
> > > +		.matches = {
> > > +			DMI_MATCH(DMI_SYS_VENDOR, "Dell Inc."),
> > > +			DMI_MATCH(DMI_PRODUCT_SKU, "09A2"),
> > > +		},
> > > +	},
> > > +	{
> > > +		/* Dell Latitude 5411 */
> > > +		.matches = {
> > > +			DMI_MATCH(DMI_SYS_VENDOR, "Dell Inc."),
> > > +			DMI_MATCH(DMI_PRODUCT_SKU, "09C0"),
> > > +		},
> > > +	},
> > > +	{
> > > +		/* Dell Latitude 5511 */
> > > +		.matches = {
> > > +			DMI_MATCH(DMI_SYS_VENDOR, "Dell Inc."),
> > > +			DMI_MATCH(DMI_PRODUCT_SKU, "09C1"),
> > > +		},
> > > +	},
> > > +	{
> > > +		/* Dell Precision 3551 */
> > > +		.matches = {
> > > +			DMI_MATCH(DMI_SYS_VENDOR, "Dell Inc."),
> > > +			DMI_MATCH(DMI_PRODUCT_SKU, "09C2"),
> > > +		},
> > > +	},
> > > +	{
> > > +		/* Dell Precision 7550 */
> > > +		.matches = {
> > > +			DMI_MATCH(DMI_SYS_VENDOR, "Dell Inc."),
> > > +			DMI_MATCH(DMI_PRODUCT_SKU, "09C3"),
> > > +		},
> > > +	},
> > > +	{
> > > +		/* Dell Precision 7750 */
> > > +		.matches = {
> > > +			DMI_MATCH(DMI_SYS_VENDOR, "Dell Inc."),
> > > +			DMI_MATCH(DMI_PRODUCT_SKU, "09C4"),
> > > +		},
> > > +	},
> > > +	{ }
> > > +};
> > > +
> > >  static bool e1000e_check_me(u16 device_id)  {
> > >  	struct e1000e_me_supported *id;
> > > @@ -599,8 +674,11 @@ void e1000e_check_options(struct
> e1000_adapter
> > > *adapter)
> > >  		}
> > >
> > >  		if (enabled == S0IX_HEURISTICS) {
> > > +			/* check for allowlist of systems */
> > > +			if (dmi_check_system(s0ix_supported_systems))
> > > +				enabled = S0IX_FORCE_ON;
> > >  			/* default to off for ME configurations */
> > > -			if (e1000e_check_me(hw->adapter->pdev->device))
> > > +			else if (e1000e_check_me(hw->adapter->pdev-
> > > >device))
> > >  				enabled = S0IX_FORCE_OFF;
> > >  		}
> > >
> > > --
> > > 2.25.1
> > >
> > > _______________________________________________
> > > Intel-wired-lan mailing list
> > > Intel-wired-lan@osuosl.org
> > > https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
