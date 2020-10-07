Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EFA2285570
	for <lists+intel-wired-lan@lfdr.de>; Wed,  7 Oct 2020 02:29:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 59AEA85F66;
	Wed,  7 Oct 2020 00:29:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id y7NQABl14OQn; Wed,  7 Oct 2020 00:29:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id ADE5485F72;
	Wed,  7 Oct 2020 00:29:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 473EF1BF989
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Oct 2020 00:29:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 41E1F86F21
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Oct 2020 00:29:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tuaFUEhJ3zY2 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  7 Oct 2020 00:29:51 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mx0a-00154904.pphosted.com (mx0a-00154904.pphosted.com
 [148.163.133.20])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 19C0686A98
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Oct 2020 00:29:50 +0000 (UTC)
Received: from pps.filterd (m0170393.ppops.net [127.0.0.1])
 by mx0a-00154904.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 0970RgfQ022078; Tue, 6 Oct 2020 20:29:50 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dell.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=smtpout1;
 bh=Zpz3yPUOdecC5MUWU7DGhhm96ACcS70HWBMQd2DtWNg=;
 b=P/r13U8o9qfjlHGg1uYNyQ+u/IiDptSAfJXMN6IYcL4oAMMvu8Cj0/P0MQhJO/SZOu5c
 zklEZnhrk9HEJzwrfn64Fnqypzr4PEOFB8TAO7sNSAT7YaVMz335dDyjW9kAt99+Vi7D
 4xziIHGs6KDBQyhUaVubdND9ND5yd32unMha9wTC9dsNqFouDNaoWmDow32WQtyk28/0
 zcuBIdrjR5DISuJi6cnynNHFYyR/stUK9YQwqPKes111UbZtwv9dKgXKG8LKkLwzSDrh
 UjS5vx7iJH0TT1V2lTC6eJE0zdnmqdHSsHcxgx3E9tv7pK3PeCNm9GgRSu9Q2tAcdHXH Ww== 
Received: from mx0a-00154901.pphosted.com (mx0a-00154901.pphosted.com
 [67.231.149.39])
 by mx0a-00154904.pphosted.com with ESMTP id 33xmmjb5bw-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 06 Oct 2020 20:29:50 -0400
Received: from pps.filterd (m0133268.ppops.net [127.0.0.1])
 by mx0a-00154901.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 0970RUpx148532; Tue, 6 Oct 2020 20:29:49 -0400
Received: from nam12-dm6-obe.outbound.protection.outlook.com
 (mail-dm6nam12lp2175.outbound.protection.outlook.com [104.47.59.175])
 by mx0a-00154901.pphosted.com with ESMTP id 340uuknt1a-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 06 Oct 2020 20:29:49 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SDFjOfGdoBe7kqwb8borVYWHmkaA8tZyjacO3vSRvg5NLOqBUonCB6O4WextWzVlGgiRca9oLzD7TlBi1Q6vjzSdVq2Q0PknG1/asgWDG2vYCsGdJ7Ka8iVwBSGa1JseLQkp65O2+n4ka1ritpXZxTtHAazpww5iVX5GPknZmCeM6FsD7jSORqhw1wStZvN05iQkhFFkRZREwoq750Qn+wAWlroGZwAUk2y1NSLZPMLApHcC9SyQB8pboSHSZzPI0AfpdoH7Z2Mgml3KeYFvPTOjCKGQGaLgw+xEvb7X1B+37jcUcHoU2d6yO5asaB7EoI1Msq1GbuAIVj7yiPFlvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Zpz3yPUOdecC5MUWU7DGhhm96ACcS70HWBMQd2DtWNg=;
 b=Za0YScjtyxF/eHZstEeITwhc/j9fqmXSkxJZMTAMAUNi4KK7RefTn5JDsKDTjcWAzDaXadgItjQnNcqwQAZkEVIgbTzs4hvRkpvRse0TMrLTEwsX4tQZ8NYhm7wWmU4v2uCeY7fDOIGG/jF3wpcwxCT9IuOiXhmT8dtN6BlVOe1Zj5aJSCCR7vxggyYD5C28j6jwmhyZxtUYQvo0kTzRLwuwqE3YLZSlTDLfCfhyYxfZPPjegFoq4C1z48Urar7AKis/q2XG/W3+3HY5fY1uaEQ3x05mWyQIQKifI/Uaunkgre3DVAZ0XVfBiz3uethgd/mB6vO+fsCVbzET/B7o0g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dell.com; dmarc=pass action=none header.from=dell.com;
 dkim=pass header.d=dell.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Dell.onmicrosoft.com; 
 s=selector1-Dell-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Zpz3yPUOdecC5MUWU7DGhhm96ACcS70HWBMQd2DtWNg=;
 b=nzLMDpJIZdcmmnyfvm4G6JO2njz/mNWxLMxoFiUazIgpUNO2AJ16wSK9jXJ9YyQtVds8EKtsGVoZFiRMURRHetPXGvdqCschF87vNSvMhTRRLUlSdAp8ZCivfgV3jlYAC8Cqx1FVEcm9Qk1FsDVVLImEypZPsiqmYK6KWuLEKts=
Received: from DM6PR19MB2636.namprd19.prod.outlook.com (2603:10b6:5:15f::15)
 by DM6PR19MB2779.namprd19.prod.outlook.com (2603:10b6:5:144::33) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3455.21; Wed, 7 Oct
 2020 00:29:48 +0000
Received: from DM6PR19MB2636.namprd19.prod.outlook.com
 ([fe80::a4b8:d5c9:29da:39b2]) by DM6PR19MB2636.namprd19.prod.outlook.com
 ([fe80::a4b8:d5c9:29da:39b2%4]) with mapi id 15.20.3455.021; Wed, 7 Oct 2020
 00:29:48 +0000
From: "Limonciello, Mario" <Mario.Limonciello@dell.com>
To: "Brown, Aaron F" <aaron.f.brown@intel.com>, "Kirsher, Jeffrey T"
 <jeffrey.t.kirsher@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH 2/3] e1000e: Add Dell's Comet Lake
 systems into s0ix heuristics
Thread-Index: AQHWlVGDdCzkdRP8E0eWGGD4/IQBRamLVPMAgAACDcA=
Date: Wed, 7 Oct 2020 00:29:47 +0000
Message-ID: <DM6PR19MB263685129F30B4D7213398A9FA0A0@DM6PR19MB2636.namprd19.prod.outlook.com>
References: <20200928044024.7595-1-mario.limonciello@dell.com>
 <20200928044024.7595-3-mario.limonciello@dell.com>
 <DM6PR11MB2890F9ACE2ACF01E52A1ADBDBC0A0@DM6PR11MB2890.namprd11.prod.outlook.com>
In-Reply-To: <DM6PR11MB2890F9ACE2ACF01E52A1ADBDBC0A0@DM6PR11MB2890.namprd11.prod.outlook.com>
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
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=Dell.com;
x-originating-ip: [76.251.167.31]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3dda3fd5-3903-4a74-e2b0-08d86a5818e6
x-ms-traffictypediagnostic: DM6PR19MB2779:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR19MB2779198D3AFAF715B823B4E6FA0A0@DM6PR19MB2779.namprd19.prod.outlook.com>
x-exotenant: 2khUwGVqB6N9v58KS13ncyUmMJd8q4
x-ms-oob-tlc-oobclassifiers: OLM:3276;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: F+s65LBSnQKwhh6xsDQo/vyAruSFV3iTqePugAOFxRbWJ+Tjd2e7MzNCe52ulHY7tzv9AkGtEfdtKj9yUeYFxxhFD0qi0TqIbk15knPb6+OgLtSFV1MkwldWH1KH4LX3ENawEMlP6FyI/0g4gshmjv+/WT8QOkcCdnFJSjc8VCF5invd1KMNVkENEF9QPQdzXHeXApzEn1E58ogMYfhe8I/vRy6ojBUN+00HSLH1o+RrDOK+0Pthg0K35AZJnku3pUYFbcuHjJsJxIXukRKCKoQOdeLVfBwSpYTzqGHnTFNEMKlFBlYg5dDYAyXKd9juuncNw8zVU2a/hLDFpg4CY4p5tBxstOQKcy4+6gWpLax6sYT6gJeoLImzQAjVMFjM54hr2/P8+oEdg9cEIciAx/ibltq37ypiFKBgH+2OYlp+6glqARPnJwPSM5ME/iCt2p2f2Knx5GzKoij5imV2Yw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR19MB2636.namprd19.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(396003)(39860400002)(366004)(346002)(136003)(376002)(64756008)(66556008)(66476007)(76116006)(66446008)(66946007)(33656002)(71200400001)(110136005)(6506007)(26005)(7696005)(54906003)(52536014)(53546011)(55016002)(186003)(5660300002)(8676002)(9686003)(86362001)(316002)(83380400001)(786003)(8936002)(966005)(83080400001)(4326008)(478600001)(2906002)(32563001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: 1UE+uQABI7stHHW4IY4ohq63zeKSzDZLz1Lo1JKTTbBc2lkmTqmy2bOaZC+Io2uvqnXOuoQnKgrEX5cSj/RfD8ljV5h0ywT70PAKtiR5x2Bl7tbTIq7flqnTzCCPXcDJZ5oRmwizjfZee+CG/pCOq54/HIadmiwgUXGdrVVcqDhA8na/t5U193P3yaloNxbyyQGr0CNeFF2SjXjj8d00fkpD2XIyNZ0uenPDS6EjUPK07fswATM/EFl0P3ACRoGybAvZyx1n2Mg01r2m51bUZ4wZUeEbyik57aoK5vD0hRATLDeGuLx2e31sC6moSsQEcLiw1wDkESHeTAIfiBhQdQv7/kyRqEjBIXaI7R5ZSlX0K1zl1S/rjhG9IRaa86k+VuutuW18ZfXJObhAstlAtQ75eKP2trucch29owUBkx4MWza4tBgRWMfian3PIAnjz9eGJTmto9UNQQeuCjCv6k0zxSZLaalDZXnF0H7oSYxqMX17UboGXLKqZHIeyBJPAYPcF/yKcFi5Oms4IFH7QGZvHxnRqT36FJp4uceIcGnsNodivjG0E0f+Ac0SfMfzfD6v6JaSIPb75UkAw/6ydEWNf7vhIlZCD4+s6LoiFeVD2CMNQVg775QDyMFdvWiryeVBLqa9OZNmh0PtFOLkJw==
MIME-Version: 1.0
X-OriginatorOrg: Dell.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR19MB2636.namprd19.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3dda3fd5-3903-4a74-e2b0-08d86a5818e6
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Oct 2020 00:29:47.9496 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 945c199a-83a2-4e80-9f8c-5a91be5752dd
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Bbz4YTgwI/YlSQDayDl8EJ8cH2o4u36biVJaoH4OGA9VSgIayG2YfZkNlxUaFRiEj5A5aXWZF8SpxA7I8lMvu0bUsFq+jSJPjPyxRf+62/c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR19MB2779
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.235, 18.0.687
 definitions=2020-10-06_15:2020-10-06,
 2020-10-06 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 clxscore=1011 spamscore=0 lowpriorityscore=0
 mlxlogscore=999 adultscore=0 suspectscore=0 bulkscore=0 mlxscore=0
 impostorscore=0 phishscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2006250000 definitions=main-2010070000
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 mlxlogscore=999 mlxscore=0
 bulkscore=0 phishscore=0 adultscore=0 malwarescore=0 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2006250000
 definitions=main-2010070000
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
Cc: "Yuan, Perry" <Perry.Yuan@dell.com>, "Shen, Yijun" <Yijun.Shen@dell.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


> > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> > Mario Limonciello
> > Sent: Sunday, September 27, 2020 9:40 PM
> > To: Kirsher, Jeffrey T <jeffrey.t.kirsher@intel.com>; intel-wired-
> > lan@lists.osuosl.org
> > Cc: Perry.Yuan@dell.com; Yijun.Shen@dell.com; linux-kernel@vger.kernel.org;
> > Mario Limonciello <mario.limonciello@dell.com>
> > Subject: [Intel-wired-lan] [PATCH 2/3] e1000e: Add Dell's Comet Lake systems
> > into s0ix heuristics
> >
> > Dell's Comet Lake Latitude and Precision systems containing i219LM are
> > properly configured and should use the s0ix flows.
> >
> > Signed-off-by: Mario Limonciello <mario.limonciello@dell.com>
> > ---
> >  drivers/net/ethernet/intel/Kconfig        |  1 +
> >  drivers/net/ethernet/intel/e1000e/param.c | 80 ++++++++++++++++++++++-
> >  2 files changed, 80 insertions(+), 1 deletion(-)
> 
> Is there anyone who touched this hardware with this patch willing to provide a
> Tested-by:?
> I am happy to do regression / sanity checks against other e1000e based
> systems, but do not have access to these devices.

Alex (Yijun) who is CC'ed did test them and I expect can add a Tested-By after the
China holidays are over.

> 
> >
> > diff --git a/drivers/net/ethernet/intel/Kconfig
> > b/drivers/net/ethernet/intel/Kconfig
> > index 5aa86318ed3e..280af47d74d2 100644
> > --- a/drivers/net/ethernet/intel/Kconfig
> > +++ b/drivers/net/ethernet/intel/Kconfig
> > @@ -58,6 +58,7 @@ config E1000
> >  config E1000E
> >  	tristate "Intel(R) PRO/1000 PCI-Express Gigabit Ethernet support"
> >  	depends on PCI && (!SPARC32 || BROKEN)
> > +	depends on DMI
> >  	select CRC32
> >  	imply PTP_1588_CLOCK
> >  	help
> > diff --git a/drivers/net/ethernet/intel/e1000e/param.c
> > b/drivers/net/ethernet/intel/e1000e/param.c
> > index e66b222c824b..58e6718c4f75 100644
> > --- a/drivers/net/ethernet/intel/e1000e/param.c
> > +++ b/drivers/net/ethernet/intel/e1000e/param.c
> > @@ -1,6 +1,7 @@
> >  // SPDX-License-Identifier: GPL-2.0
> >  /* Copyright(c) 1999 - 2018 Intel Corporation. */
> >
> > +#include <linux/dmi.h>
> >  #include <linux/netdevice.h>
> >  #include <linux/module.h>
> >  #include <linux/pci.h>
> > @@ -201,6 +202,80 @@ static const struct e1000e_me_supported
> > me_supported[] = {
> >  	{0}
> >  };
> >
> > +static const struct dmi_system_id s0ix_supported_systems[] = {
> > +	{
> > +		/* Dell Latitude 5310 */
> > +		.matches = {
> > +			DMI_MATCH(DMI_SYS_VENDOR, "Dell Inc."),
> > +			DMI_MATCH(DMI_PRODUCT_SKU, "099F"),
> > +		},
> > +	},
> > +	{
> > +		/* Dell Latitude 5410 */
> > +		.matches = {
> > +			DMI_MATCH(DMI_SYS_VENDOR, "Dell Inc."),
> > +			DMI_MATCH(DMI_PRODUCT_SKU, "09A0"),
> > +		},
> > +	},
> > +	{
> > +		/* Dell Latitude 5410 */
> > +		.matches = {
> > +			DMI_MATCH(DMI_SYS_VENDOR, "Dell Inc."),
> > +			DMI_MATCH(DMI_PRODUCT_SKU, "09C9"),
> > +		},
> > +	},
> > +	{
> > +		/* Dell Latitude 5510 */
> > +		.matches = {
> > +			DMI_MATCH(DMI_SYS_VENDOR, "Dell Inc."),
> > +			DMI_MATCH(DMI_PRODUCT_SKU, "09A1"),
> > +		},
> > +	},
> > +	{
> > +		/* Dell Precision 3550 */
> > +		.matches = {
> > +			DMI_MATCH(DMI_SYS_VENDOR, "Dell Inc."),
> > +			DMI_MATCH(DMI_PRODUCT_SKU, "09A2"),
> > +		},
> > +	},
> > +	{
> > +		/* Dell Latitude 5411 */
> > +		.matches = {
> > +			DMI_MATCH(DMI_SYS_VENDOR, "Dell Inc."),
> > +			DMI_MATCH(DMI_PRODUCT_SKU, "09C0"),
> > +		},
> > +	},
> > +	{
> > +		/* Dell Latitude 5511 */
> > +		.matches = {
> > +			DMI_MATCH(DMI_SYS_VENDOR, "Dell Inc."),
> > +			DMI_MATCH(DMI_PRODUCT_SKU, "09C1"),
> > +		},
> > +	},
> > +	{
> > +		/* Dell Precision 3551 */
> > +		.matches = {
> > +			DMI_MATCH(DMI_SYS_VENDOR, "Dell Inc."),
> > +			DMI_MATCH(DMI_PRODUCT_SKU, "09C2"),
> > +		},
> > +	},
> > +	{
> > +		/* Dell Precision 7550 */
> > +		.matches = {
> > +			DMI_MATCH(DMI_SYS_VENDOR, "Dell Inc."),
> > +			DMI_MATCH(DMI_PRODUCT_SKU, "09C3"),
> > +		},
> > +	},
> > +	{
> > +		/* Dell Precision 7750 */
> > +		.matches = {
> > +			DMI_MATCH(DMI_SYS_VENDOR, "Dell Inc."),
> > +			DMI_MATCH(DMI_PRODUCT_SKU, "09C4"),
> > +		},
> > +	},
> > +	{ }
> > +};
> > +
> >  static bool e1000e_check_me(u16 device_id)
> >  {
> >  	struct e1000e_me_supported *id;
> > @@ -599,8 +674,11 @@ void e1000e_check_options(struct e1000_adapter
> > *adapter)
> >  		}
> >
> >  		if (enabled == S0IX_HEURISTICS) {
> > +			/* check for allowlist of systems */
> > +			if (dmi_check_system(s0ix_supported_systems))
> > +				enabled = S0IX_FORCE_ON;
> >  			/* default to off for ME configurations */
> > -			if (e1000e_check_me(hw->adapter->pdev->device))
> > +			else if (e1000e_check_me(hw->adapter->pdev-
> > >device))
> >  				enabled = S0IX_FORCE_OFF;
> >  		}
> >
> > --
> > 2.25.1
> >
> > _______________________________________________
> > Intel-wired-lan mailing list
> > Intel-wired-lan@osuosl.org
> > https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
