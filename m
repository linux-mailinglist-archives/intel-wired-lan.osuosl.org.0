Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9862088C7FE
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Mar 2024 16:51:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0BED34151A;
	Tue, 26 Mar 2024 15:51:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id g6_SiIwES5LC; Tue, 26 Mar 2024 15:51:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 09D82414F6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711468295;
	bh=KsGpgWfO7/om4c0ojXzTqlNkq+aQOX5MI2CbsmekNtQ=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=53VDdAukya6+goiRFhyYEeSR3MBsfPLW/NaZg+mlkkpLZIwiLkbWBz6AEHfyRzED7
	 6MbCiflXh0Wm83vt0D3ex0F/1wX2oJSDSMV1wzooEvrGQzn4GCIVp9A/ae1sxt+6r6
	 wVuHwhdFJvvFGGSG1jBjrum8J4OwfjGw/NlT7h2MtYOBftzB2EFTQ+f4lUaFVp2F6x
	 sctqnYD+xSMDvklndek8MajUMi6UGEW5iGE+ZS8W+fzfs5cvvvTRqKt3F+KnXRaf2g
	 CdP5SOPwC+n0rQo0OKMAdCeypWTDdS559M2x3L7UWKRFuqXLN9Xv66I8Q5NUfnJd7x
	 F2wyPL1a2cA1Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 09D82414F6;
	Tue, 26 Mar 2024 15:51:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3243F1BF306
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Mar 2024 15:05:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2A7EE60AF2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Mar 2024 15:05:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LKy49cnFJZue for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Mar 2024 15:05:54 +0000 (UTC)
X-Greylist: delayed 1174 seconds by postgrey-1.37 at util1.osuosl.org;
 Tue, 26 Mar 2024 15:05:54 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org C2DCA60AEA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C2DCA60AEA
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=67.231.148.174;
 helo=mx0b-0016f401.pphosted.com; envelope-from=saikrishnag@marvell.com;
 receiver=<UNKNOWN> 
Received: from mx0b-0016f401.pphosted.com (mx0a-0016f401.pphosted.com
 [67.231.148.174])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C2DCA60AEA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Mar 2024 15:05:54 +0000 (UTC)
Received: from pps.filterd (m0045849.ppops.net [127.0.0.1])
 by mx0a-0016f401.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id
 42QCmnMI017675; Tue, 26 Mar 2024 07:46:17 -0700
Received: from nam10-bn7-obe.outbound.protection.outlook.com
 (mail-bn7nam10lp2101.outbound.protection.outlook.com [104.47.70.101])
 by mx0a-0016f401.pphosted.com (PPS) with ESMTPS id 3x3xpu0fqn-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 26 Mar 2024 07:46:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mwkkoIpsfopkZSYajjBYqmQm52IVQtae3xOi5BomgIqAwcGSvntlC4bjlhTO6h69jTYZlJH4Gl68QKRPneJABYa0ZrwBBPkiIF07Yx0XamMGmCOkjpt4mzvl1mmsWveSJ8oQcPa0dZWEIrRSYsN7ffVKpvqpDeBTqemdcoDrrfYLuXJkr/eiP55D2ln6c+8vW45HEVUECYDtYSQfoeLmGzrt07LOMp2Zs+N/gyaSiVSIcEG7647wCkRmkIwiAgdppY7GHczQHkzkevdN1WEjaUkwABGNMAbIguOjo2nQZ1M7P9nSAD7v1gT/jQqTcwdZ7zmHVUS+KJM0dFIWyZwddA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KsGpgWfO7/om4c0ojXzTqlNkq+aQOX5MI2CbsmekNtQ=;
 b=k3ZHUjcnW7/W0Ee7Wd3Nkfnj0IYrp91LikhJ2Uo7Xa6PKghiWGCUZNV9sksrsCf8JvHuQIT1zb2c0Gk0N4++JPyl9UWx7ic12K0aOKRXFTUbVWwzVv3DFu0hZIa9fQLB6iKtZCn0ls4g4SiHZhrOWeLwsaNCdWFLSZ6TL71z+Z8N5eML9icwRUbI/vxBDkGXM6bi8BFNlrcwdbH5oV08pjEcGZlitrAwuvCXpE83LwcX8OKWvZe2Ahz9+M5eXWFAl4MpQQNH/zO1t3tkHg/HkbSDVFf/Ugu17qmGt8ztCXNuhVvMqSim8dC82LWjQQJYwPs8OdU+CyviP5DZV3LUIw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=marvell.com; dmarc=pass action=none header.from=marvell.com;
 dkim=pass header.d=marvell.com; arc=none
Received: from BY3PR18MB4707.namprd18.prod.outlook.com (2603:10b6:a03:3ca::23)
 by CO6PR18MB3906.namprd18.prod.outlook.com (2603:10b6:5:34c::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.32; Tue, 26 Mar
 2024 14:46:13 +0000
Received: from BY3PR18MB4707.namprd18.prod.outlook.com
 ([fe80::1f55:2359:3c4d:2c81]) by BY3PR18MB4707.namprd18.prod.outlook.com
 ([fe80::1f55:2359:3c4d:2c81%5]) with mapi id 15.20.7409.031; Tue, 26 Mar 2024
 14:46:13 +0000
From: Sai Krishna Gajula <saikrishnag@marvell.com>
To: Michal Schmidt <mschmidt@redhat.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [PATCH net-next v4 3/3] ice: fold ice_ptp_read_time into
 ice_ptp_gettimex64
Thread-Index: AQHaf4xZt53ha8p7QEuhkuQNjvqA4Q==
Date: Tue, 26 Mar 2024 14:46:13 +0000
Message-ID: <BY3PR18MB470764790C39F0CA7BABAB0DA0352@BY3PR18MB4707.namprd18.prod.outlook.com>
References: <20240325232039.76836-1-mschmidt@redhat.com>
 <20240325232039.76836-4-mschmidt@redhat.com>
In-Reply-To: <20240325232039.76836-4-mschmidt@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BY3PR18MB4707:EE_|CO6PR18MB3906:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 50OJSAVfYECnXBL5w7yrjqxg38vS05rVqdlOtzyXesrgYriyCWIaP3iQeUPU1+RYCUlZAZzx6fIcFSHbCsPPPTcY+1BP8ZXGDvX7HOkg0ITVzoy55Ge3FCYE0WSkqFtXRqwwE3omoiLXnKI22AeXZ0wOua1Q0YDiGGykXqc45V9U2jzsFefhDAimRbgzAoLezJT8r/Z3jnHiRKkA2Tyz+qNnog5rhCt7eklqqPmJb2p8cwarx9+S2EwOlE+3qtG4S+XUWFwlLPsn/RuCD1c7U9LnoV/LmPKoHL4hXMmTmfVWI+32Ez7nI8Um0BUQGTKWJLHgILIg2HYJY9EqAwHqYfaCZ39MCvCPvAxnlzc3xroecJlKzxy3dgg+xbC62p2gTcdw457G1LTYb/YjuYK0kvrgm+vyjN3gYnnRp0M25a2KS2cN9Q1QHnT4KfM64k4OB9APcwbno7nr/gDO2KE/hEf3+h9SmI63KrskhsCAgpPrqytABqzNBYmvS7ukyufk28CzpiJzMfRXRJMLgFNOiV8qogVmiiabJF4Nm+ip+qL5DBP9G9Jkbvvt4UnXIV2Qrs9PE4IiBcKJL6jk/6HHY6wwgVBVGTtzcmOSCHWqESt8HxVY+NjugynrJrB9odGJhKJBSsB7e0Aj1gaI2k9ZS9ZwAkpY59xL85YwhV0LGx8=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY3PR18MB4707.namprd18.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7416005)(376005)(1800799015)(366007); DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Wee1QFgmeHQFGxGaw/iOM6Lc2Z6Mwgh6KbcbGozKtQH1vCCiybvCIFGKBf/t?=
 =?us-ascii?Q?6sleTjigeAnLQPpXAab9ZFF50uJ3zNLTP/i03rqz/41q1QHL9wYdxWAYYdwi?=
 =?us-ascii?Q?2GZMdhrMg+XD1PN6hSIhH9K/9fjK0fk7AcKxTOo4dzsTp3SkwPuVYKWUbTl3?=
 =?us-ascii?Q?6Mmu6WDvsv0GIJ7dXIlmKRA1yYOBO5835x7KiaKwRaIfAUZV8NVZ97By6Tes?=
 =?us-ascii?Q?WOYy9SaW30FSCW71q7ozui0eUKI1OK6o4F3alQDL/2sk42Hws275c6DeYDI9?=
 =?us-ascii?Q?5ZxU4V3FB01WHq/T5B6k0VzHaLuIFWM4ASSXzoUrmOsDJ+c+6N/U5RoIc1Sf?=
 =?us-ascii?Q?uK5h97GT2WfBrliQElvlEXf1W32XVmuZtWAS3cIhv7J6mXmw4zOpwiZto9HD?=
 =?us-ascii?Q?TfCKa2iBBqCDvdl9hEkap4al45hPGSiYR5b7lJEmPzSv7l8X/JFHgIBfmMJO?=
 =?us-ascii?Q?yIVn9lHFoA2HGVuc0QUeFXIyV4KdoXKwnBfEPALj8221BGFn9/Q9eq04JpOY?=
 =?us-ascii?Q?ABjNEZhOQrfXHmEcqK6vNx9RJJqo84vaHt8IWpsI+kuaIfYlwuWedJBiMQF1?=
 =?us-ascii?Q?uod1O8xtyb+BJYzRDBLo16FxtgISUJx4B9PH5fZH7Sr/+G3R9nqgBwTqbG7t?=
 =?us-ascii?Q?kYc9stqGrNhyETZh7kYlzzM3OqVbegEt7jtS7ZdlBhMg/+1krZysOh9g7ASS?=
 =?us-ascii?Q?Rt808JGB2ly2jlPjSyHl9A1T+7EOawcOno/X88oU/GHtH9J0vyBXBDtQS1hl?=
 =?us-ascii?Q?fxUbeTPdgn7UOCQfc14j5GOcozPDy1XYuNXH8mB6+bKbdgRaNfDujwkW2maA?=
 =?us-ascii?Q?9YOyH/ajvzArHo1G35UH10dBCa2vBSmaXgUrpkPd++RGSeHZtm8ewoWA/Ygn?=
 =?us-ascii?Q?IzK9ne1PXtsIJkY3IJf/8sOxSrgbRrwtp2WZaF0x2ZfRnce3lJMPKYQkfotK?=
 =?us-ascii?Q?Z1QsTUYaQnHdnXdz9TtFvkZ4D00ZG+GkvglejKWHhYVZ5+6oRYj0zSYInaYw?=
 =?us-ascii?Q?Ewk+J13Du8m81Qba5L/dtOa9spywAKwtxCKzWdIwOFuJQ4p6BY1eur6mC3xs?=
 =?us-ascii?Q?Rqgf1daTMMal+cr3U0zRaOmnl3weF1u8rFwHwZenWolGSCrahPMSE/Q0Gxmk?=
 =?us-ascii?Q?cr/AKKxCRo0Oem86nEHjRBn3Dlo9ds3qHNGwdB8TN7H904lw2SUiqkN8rrPD?=
 =?us-ascii?Q?Y6FaqoAIyvJCOxyhfbhIRBMObo0KM0Ier50kTVdEY+L+DTCejTKH7RZviOl/?=
 =?us-ascii?Q?A8gW66rtntVIRYutrAusODCMR8uUGj1KQJF+pi6qy5N5HF564+c/sUaXZEgG?=
 =?us-ascii?Q?bNxwhE1HHqdtJ+VS2rJaSOk/hQ5N2ZtVEta9aTjLTO8A16+PL3+Il1jX5aiJ?=
 =?us-ascii?Q?UsTzqR2NXnLcJtLTcGe3ZZVGiBuv4Flni5hjGbk3xG7oO48MKyJbh14Onxyy?=
 =?us-ascii?Q?U14B/22dgJkQPgW8QHzPk28QWZ+BptMUuNwFzRHV360rwtM7r0MABD+if70M?=
 =?us-ascii?Q?1MKowMUGMWPEDqAHxkYnH1LgVrX/dE/vXXDPxRyyiU08PmlbQk6hNxAIYWf6?=
 =?us-ascii?Q?Jhf87J+z8w9jJn/Qi341SIZk+wYAhxDYMJIR3lHP?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: marvell.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BY3PR18MB4707.namprd18.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: efa5dc62-1bd4-4535-e6ba-08dc4da37bf5
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Mar 2024 14:46:13.4345 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 70e1fb47-1155-421d-87fc-2e58f638b6e0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: D+4pyoTlfzG6SpXEpYR10tI+eqisqhY4xXePxleWMN3/Lem/BQSkCdSTdT1kNmHOY01taRUwu3hxdjGK0CRkCA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR18MB3906
X-Proofpoint-ORIG-GUID: av9kfTC5Ekk9QvjSujyEqaeazmdRJ5YI
X-Proofpoint-GUID: av9kfTC5Ekk9QvjSujyEqaeazmdRJ5YI
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-03-26_06,2024-03-21_02,2023-05-22_02
X-Mailman-Approved-At: Tue, 26 Mar 2024 15:51:32 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=marvell.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KsGpgWfO7/om4c0ojXzTqlNkq+aQOX5MI2CbsmekNtQ=;
 b=rfnsB4ACYGk3Fta3B+ltVvQha6roc84nE1+N5APHPrZxAH1jAZJFbboB8NOXlf23gcrKAm8MCHP1M/qte4aIHyV0MQwHn/B/UOj4OiVu+nxb+89Wsc0fPV0hKYt5lYPSfDG+abo2oQe6bNxY1O4kUgvnINQPJoUPYTZiY+Qt4ys=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=marvell.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=marvell.com header.i=@marvell.com header.a=rsa-sha256
 header.s=selector1 header.b=rfnsB4AC
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 3/3] ice: fold
 ice_ptp_read_time into ice_ptp_gettimex64
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
Cc: Jiri Pirko <jiri@resnulli.us>, "Temerkhanov,
 Sergey" <sergey.temerkhanov@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Richard Cochran <richardcochran@gmail.com>,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 Karol Kolacinski <karol.kolacinski@intel.com>,
 Marcin Szycik <marcin.szycik@linux.intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


> -----Original Message-----
> From: Michal Schmidt <mschmidt@redhat.com>
> Sent: Tuesday, March 26, 2024 4:51 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Jesse Brandeburg <jesse.brandeburg@intel.com>; Tony Nguyen
> <anthony.l.nguyen@intel.com>; Richard Cochran
> <richardcochran@gmail.com>; netdev@vger.kernel.org; Jacob Keller
> <jacob.e.keller@intel.com>; Jiri Pirko <jiri@resnulli.us>; Arkadiusz Kuba=
lewski
> <arkadiusz.kubalewski@intel.com>; Karol Kolacinski
> <karol.kolacinski@intel.com>; Marcin Szycik <marcin.szycik@linux.intel.co=
m>;
> Przemek Kitszel <przemyslaw.kitszel@intel.com>; Temerkhanov, Sergey
> <sergey.temerkhanov@intel.com>
> Subject: [PATCH net-next v4 3/3] ice: fold ice_ptp_read_time into
> ice_ptp_gettimex64
> =20
> This is a cleanup. It is unnecessary to have this function just to call a=
nother
> function.
>=20
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Michal Schmidt <mschmidt@redhat.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_ptp.c | 25 +++---------------------
>  1 file changed, 3 insertions(+), 22 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c
> b/drivers/net/ethernet/intel/ice/ice_ptp.c
> index 0875f37add78..0f17fc1181d2 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
> @@ -1166,26 +1166,6 @@ static void ice_ptp_reset_cached_phctime(struct
> ice_pf *pf)
>  	ice_ptp_mark_tx_tracker_stale(&pf->ptp.port.tx);
>  }
>=20
> -/**
> - * ice_ptp_read_time - Read the time from the device
> - * @pf: Board private structure
> - * @ts: timespec structure to hold the current time value
> - * @sts: Optional parameter for holding a pair of system timestamps from
> - *       the system clock. Will be ignored if NULL is given.
> - *
> - * This function reads the source clock registers and stores them in a
> timespec.
> - * However, since the registers are 64 bits of nanoseconds, we must conv=
ert
> the
> - * result to a timespec before we can return.
> - */
> -static void
> -ice_ptp_read_time(struct ice_pf *pf, struct timespec64 *ts,
> -		  struct ptp_system_timestamp *sts)
> -{
> -	u64 time_ns =3D ice_ptp_read_src_clk_reg(pf, sts);
> -
> -	*ts =3D ns_to_timespec64(time_ns);
> -}
> -
>  /**
>   * ice_ptp_write_init - Set PHC time to provided value
>   * @pf: Board private structure
> @@ -1926,9 +1906,10 @@ ice_ptp_gettimex64(struct ptp_clock_info *info,
> struct timespec64 *ts,
>  		   struct ptp_system_timestamp *sts)
>  {
>  	struct ice_pf *pf =3D ptp_info_to_pf(info);
> +	u64 time_ns;
>=20
> -	ice_ptp_read_time(pf, ts, sts);
> -
> +	time_ns =3D ice_ptp_read_src_clk_reg(pf, sts);
> +	*ts =3D ns_to_timespec64(time_ns);=09
>  	return 0;
>  }
>=20
> --
> 2.43.2
>=20
Reviewed-by: Sai Krishna <saikrishnag@marvell.com
