Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DF6A2952C8
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Oct 2020 21:14:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id BCC9C868AA;
	Wed, 21 Oct 2020 19:14:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iAtX1+IlCuaF; Wed, 21 Oct 2020 19:14:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8382286884;
	Wed, 21 Oct 2020 19:14:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4DD761BF580
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Oct 2020 14:54:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 4651B870DE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Oct 2020 14:54:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IBVk7gNS30px for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Oct 2020 14:54:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx0b-00154904.pphosted.com (mx0b-00154904.pphosted.com
 [148.163.137.20])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1E58287092
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Oct 2020 14:54:35 +0000 (UTC)
Received: from pps.filterd (m0170398.ppops.net [127.0.0.1])
 by mx0b-00154904.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 09LErpBI031526; Wed, 21 Oct 2020 10:54:33 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dell.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=smtpout1;
 bh=dYdXxKIV+ASindNy5D8M1IRGeG4vPwLmADmsX5xcpks=;
 b=y/LcpYi8U8y8wrtO/Az7gL3VgeEFMKWAwJxQFhjybAp4yFdPKp8ej6Vd5a5eebrhe1Fw
 WurjCashTubCdM13U8kYtlzXuCTMAl9ltUMCGxyK9/IeLAPJtE96l+ubx4QEWi/9KNFG
 5hCal/VHTmxEdklXe+0bDaMo+EbgWdr1368mPKlXs+rRdcj9EWL9e8uNZCopqMphyy7s
 LrOHlxAWKwxigAXulKAHP7WScMgwlmcKRs8SRDJKoC8wE+GW9iVd5aPXNkGSSyOeU735
 JCfd2LPJM1d1THcPptDw7iY8h/ULsfi+iJKg/xJYIgrK7ZLkCPxBGmeRkrNxn2OsbDBz Pw== 
Received: from mx0b-00154901.pphosted.com (mx0b-00154901.pphosted.com
 [67.231.157.37])
 by mx0b-00154904.pphosted.com with ESMTP id 347uu8ebhu-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 21 Oct 2020 10:54:33 -0400
Received: from pps.filterd (m0134318.ppops.net [127.0.0.1])
 by mx0a-00154901.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 09LEqkVD145604; Wed, 21 Oct 2020 10:54:32 -0400
Received: from nam02-sn1-obe.outbound.protection.outlook.com
 (mail-sn1nam02lp2058.outbound.protection.outlook.com [104.47.36.58])
 by mx0a-00154901.pphosted.com with ESMTP id 34ag8qx5vw-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 21 Oct 2020 10:54:32 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hh+Zm/wRYHQh0fVwZWYoqm8xsG2C9QOkMe+CAuOObbb39vlotPyu+rv13akSNwwtFTr9lLK1CoPid5Mwni3Av+pibb3RpvdW6KQjnXj3+DlemHlv79IChKU7LNkDW2XHHcBcuOxCUONNkw+sjusNi+jcG2aamnDNVvuCkIWSkqZFsBxwlVdYo2IIYPM/W/2FYdsQ3Ogc2NRhd2RjDjqgzlAKKoivljNeSJ6vnp5NUUyNET/SVV2/UX8te9fkxCOQSJjocAgBtzy8Or0CJ1IPiq6Vo1BhIZ981Mc53hPAU658p+IZ0EE5O2xprjjVRbzBMncCO4olDhLgtRjscGJcMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dYdXxKIV+ASindNy5D8M1IRGeG4vPwLmADmsX5xcpks=;
 b=XeclxzWWrNP/c1H17hnyDB3SyiSsMvSrcrO3nAUqirnj9nKI9QeHAjdMN6ATq5m7Vp6vtQnoiPEjIyXq/LHVGmUJD42dS6AF5jC9SEmUZY2vQfxVS30IacQdD5raoxMlhDpatT83AwlPCuEKGIbiOEYpIH5cQDweVHoB6psW0KEiRbycEo1kaSTH9vRS8TL2iQp/YpIvgjGP+rP4DorO29dYUkxECLQZj28B4sVECj+L59T7JpKwEt6qo796VVmLYO8tu3o7tQXhWDdviTBaTBNcYXs53E9m6A2L4hZc5khF42fTszgrivkXmqpx+VKlwLA/erzjS7LIfH2C0fMb4A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dell.com; dmarc=pass action=none header.from=dell.com;
 dkim=pass header.d=dell.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Dell.onmicrosoft.com; 
 s=selector1-Dell-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dYdXxKIV+ASindNy5D8M1IRGeG4vPwLmADmsX5xcpks=;
 b=YJTGXxEOrq1Do4ysuJnYxO47qaQ0UjLhtVm7yV+So0Co9tON+utsZnlTd7dsIFwjwezjlrVLugHpINs92k6DdtEio53jF26zZYo9aVqGhmIo1Op5wtf+2O5kn3DlJ4q0XQroeuyQVkbwFlrf+IRt3N9u82cyJQnHTJ3dVD/nits=
Received: from SJ0PR19MB4463.namprd19.prod.outlook.com (2603:10b6:a03:282::9)
 by SJ0PR19MB4794.namprd19.prod.outlook.com (2603:10b6:a03:2e5::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3499.18; Wed, 21 Oct
 2020 14:49:31 +0000
Received: from SJ0PR19MB4463.namprd19.prod.outlook.com
 ([fe80::c033:4691:b4f7:5ef]) by SJ0PR19MB4463.namprd19.prod.outlook.com
 ([fe80::c033:4691:b4f7:5ef%6]) with mapi id 15.20.3499.018; Wed, 21 Oct 2020
 14:49:31 +0000
From: "Shen, Yijun" <Yijun.Shen@dell.com>
To: "Brown, Aaron F" <aaron.f.brown@intel.com>, "Limonciello, Mario"
 <Mario.Limonciello@dell.com>, "Kirsher, Jeffrey T"
 <jeffrey.t.kirsher@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH 3/3] e1000e: Add more Dell CML systems
 into s0ix heuristics
Thread-Index: AQHWlVGQNCC2JTiqu0ySgmetkcxf3KmLU4DAgBb0CHA=
Date: Wed, 21 Oct 2020 14:49:31 +0000
Message-ID: <SJ0PR19MB4463C698A4DCCD10600A25859A1C0@SJ0PR19MB4463.namprd19.prod.outlook.com>
References: <20200928044024.7595-1-mario.limonciello@dell.com>
 <20200928044024.7595-4-mario.limonciello@dell.com>
 <DM6PR11MB2890D867948806FF79EC94E0BC0A0@DM6PR11MB2890.namprd11.prod.outlook.com>
In-Reply-To: <DM6PR11MB2890D867948806FF79EC94E0BC0A0@DM6PR11MB2890.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=Dell.com;
x-originating-ip: [101.86.22.46]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: aa8d9243-f67c-443d-cbab-08d875d08516
x-ms-traffictypediagnostic: SJ0PR19MB4794:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SJ0PR19MB4794509BAD0AB3140742CE5A9A1C0@SJ0PR19MB4794.namprd19.prod.outlook.com>
x-exotenant: 2khUwGVqB6N9v58KS13ncyUmMJd8q4
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: B8CZAfCmUAjud6qsaAP0h/uNj7XxsBFmm1h5WXxNCykOZaUIiwmvBuqyaDY7VBHfj4iYouqS6TU4Sucb2qFUr7W3J/1U/2uu0SVm0ioZ/JV/6baqbQDSWaFy+yfCiZT8ru21nI2ezeV1kBfaK/9//Ks1IyOofC9LG1OS3MnYa9f5bA3O/Vse0yLwt0+KxeWvZr3PcRdFDXnj8Eppjm8zRSV8EaW4+pQk7zsKPdcr2xhXN0tMhht1srFMnQkLW2ULfD9qUQMNDSoOdssoAm9W2I6pDTJ5elG/lXyqzSjBx1CVGQnX6vtVNXPDzT72Ds/mFfcAxShudWcBR5LWUTEt7Wsu7Spbhqh2MrE0oPLy6TOU+qQ5UuOsqv0k1NFXxlHjxqOzrhwAgh/ACrt03RoVGnUJl95wzQSBES7aJBw9X7ob5vQRVZn+MdKHf8MWcMZRdtMJYJf1OZ7dRPeiiVlC6w==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR19MB4463.namprd19.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(136003)(376002)(39860400002)(346002)(366004)(396003)(6506007)(66946007)(2906002)(53546011)(110136005)(26005)(966005)(9686003)(54906003)(86362001)(478600001)(8936002)(186003)(8676002)(786003)(55016002)(33656002)(316002)(7696005)(4326008)(66446008)(66476007)(5660300002)(76116006)(71200400001)(52536014)(83380400001)(64756008)(66556008)(32563001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: 1gYzKSU344U4zyZs07Kns8trYc2dTE3pysMcA7IjrcRL4ecySY5wYr3keIXwX/+2BD5ywgAsBoeAfPf4pE3uwGC+bZ73s9827bjYC/Z6puodQ2P7zVUh829NIbn7+IGD0wS/zmOCRyzL3dE0dw9M8U50lHF6jp2rPuZRZxFw4ncUxls67dR5r8JhhdQF2KQa45TwG51Bd8dsv/iGdHj89l1h80GNqxBZPahf+U9VAOAsT+EStfXmvb+w4UVyEzjj/8StLUutLK+Vu7FOoXY7pg1MWVmNxPRSAfKSDIWo8WJGZW7Fl9t+IS8N94MTdEfSEjMjA/PJJK3ETrg2azniogCy5Hy33nyaYdn9XPszfp+oJf/WkQ4ipBtcxGVvyyLl0qr6kwjSNcdXgXSD2IFhSpt3gf/LO9dlYQRTh8lk9tFumLj72wS9qx1XRNZaIcnqwny3U0ebyvUj6PAZSHyXOeqpt57YYlw6+akDbvUODn+t464tVkSgpWzjJHhl+qtJo0VOggZ4XYVWAFa3OumuxD53hF4fPmYTMHFSn5WufVNc9unfKl8NnQxlWYrbTJdeA9n4Ayz7vOYHltayLresEUzGaZcFa1qCEEB9jmoVoNaNB1eR994495HL3qLP1WnrS1rwEAQDJKKeesi8UJc9Jw==
MIME-Version: 1.0
X-OriginatorOrg: Dell.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR19MB4463.namprd19.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: aa8d9243-f67c-443d-cbab-08d875d08516
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Oct 2020 14:49:31.8171 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 945c199a-83a2-4e80-9f8c-5a91be5752dd
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WIRClNeoq33IWh+X8fd/TIO7qJzZrgBONdaT3U0ccXJsOcuGf4rSaEEoqMKx2HMFEQMnJy+yKZCF+JWvMkSN1A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR19MB4794
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.235, 18.0.737
 definitions=2020-10-21_06:2020-10-20,
 2020-10-21 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0
 impostorscore=0 adultscore=0 mlxlogscore=999 spamscore=0 bulkscore=0
 mlxscore=0 priorityscore=1501 malwarescore=0 clxscore=1015 phishscore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2010210112
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 phishscore=0
 mlxlogscore=999 suspectscore=0 spamscore=0 mlxscore=0 adultscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2010210113
X-Mailman-Approved-At: Wed, 21 Oct 2020 19:13:58 +0000
Subject: Re: [Intel-wired-lan] [PATCH 3/3] e1000e: Add more Dell CML systems
 into s0ix heuristics
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
> From: Brown, Aaron F <aaron.f.brown@intel.com>
> Sent: Wednesday, October 7, 2020 8:22 AM
> To: Limonciello, Mario; Kirsher, Jeffrey T; intel-wired-lan@lists.osuosl.org
> Cc: Yuan, Perry; Shen, Yijun; linux-kernel@vger.kernel.org
> Subject: RE: [Intel-wired-lan] [PATCH 3/3] e1000e: Add more Dell CML
> systems into s0ix heuristics
> 
> 
> [EXTERNAL EMAIL]
> 
> > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> > Of Mario Limonciello
> > Sent: Sunday, September 27, 2020 9:40 PM
> > To: Kirsher, Jeffrey T <jeffrey.t.kirsher@intel.com>; intel-wired-
> > lan@lists.osuosl.org
> > Cc: Perry.Yuan@dell.com; Yijun.Shen@dell.com; linux-
> > kernel@vger.kernel.org; Mario Limonciello <mario.limonciello@dell.com>
> > Subject: [Intel-wired-lan] [PATCH 3/3] e1000e: Add more Dell CML
> > systems into s0ix heuristics
> >
> > These comet lake systems are not yet released, but have been validated
> > on pre-release hardware.
> 
> Same basic question as with 2/3 of the series, would it be possible to get
> someone who touched / validated the code on the pre-release hardware to
> provide a Tested-by: to this patch?

 Verified this series patches with Dell Systems.

Tested-by: Yijun Shen <Yijun.shen@dell.com>

> 
> >
> > This is being submitted separately from released hardware in case of a
> > regression between pre-release and release hardware so this commit can
> > be reverted alone.
> >
> > Signed-off-by: Mario Limonciello <mario.limonciello@dell.com>
> > ---
> >  drivers/net/ethernet/intel/e1000e/param.c | 21 +++++++++++++++++++++
> >  1 file changed, 21 insertions(+)
> >
> > diff --git a/drivers/net/ethernet/intel/e1000e/param.c
> > b/drivers/net/ethernet/intel/e1000e/param.c
> > index 58e6718c4f75..fe3157c8aa4a 100644
> > --- a/drivers/net/ethernet/intel/e1000e/param.c
> > +++ b/drivers/net/ethernet/intel/e1000e/param.c
> > @@ -273,6 +273,27 @@ static const struct dmi_system_id
> > s0ix_supported_systems[] = {
> >  			DMI_MATCH(DMI_PRODUCT_SKU, "09C4"),
> >  		},
> >  	},
> > +	{
> > +		/* Dell Notebook 0x0A40 */
> > +		.matches = {
> > +			DMI_MATCH(DMI_SYS_VENDOR, "Dell Inc."),
> > +			DMI_MATCH(DMI_PRODUCT_SKU, "0A40"),
> > +		},
> > +	},
> > +	{
> > +		/* Dell Notebook 0x0A41 */
> > +		.matches = {
> > +			DMI_MATCH(DMI_SYS_VENDOR, "Dell Inc."),
> > +			DMI_MATCH(DMI_PRODUCT_SKU, "0A41"),
> > +		},
> > +	},
> > +	{
> > +		/* Dell Notebook 0x0A42 */
> > +		.matches = {
> > +			DMI_MATCH(DMI_SYS_VENDOR, "Dell Inc."),
> > +			DMI_MATCH(DMI_PRODUCT_SKU, "0A42"),
> > +		},
> > +	},
> >  	{ }
> >  };
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
