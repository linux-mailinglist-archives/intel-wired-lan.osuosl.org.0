Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E5E872DAF4D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 15 Dec 2020 15:48:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AAE0386E5C;
	Tue, 15 Dec 2020 14:48:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iaMyOLE8uuS5; Tue, 15 Dec 2020 14:48:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 28ADD86E71;
	Tue, 15 Dec 2020 14:48:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2EC991BF315
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Dec 2020 14:47:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2A52B87686
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Dec 2020 14:47:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 577RX1qLNvUw for <intel-wired-lan@lists.osuosl.org>;
 Tue, 15 Dec 2020 14:47:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx0a-00154904.pphosted.com (mx0a-00154904.pphosted.com
 [148.163.133.20])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 030F38732A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Dec 2020 14:47:17 +0000 (UTC)
Received: from pps.filterd (m0170393.ppops.net [127.0.0.1])
 by mx0a-00154904.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id
 0BFEcFSx023424; Tue, 15 Dec 2020 09:47:13 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dell.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=smtpout1;
 bh=DMMaVg+lqQ9pOy4CTDUSjQqcHdLTUgFivgM2Fq7lw5Y=;
 b=DSmHZ5rYrhDO/6Kvc/BT1R3YJ2pfLXzDyE5ZUFJmA0HxI4WJJZSDFWsLwrWIzKjoVPlo
 NuAGvV7Kaf4y573eVMUflOB7aziC6VGDeBA3Y2UiF8BOrWKSiyesmxJlxBx/uj9qWJQf
 UNb+RHp36AGWgFGXr3dHh09sDxefGtzDFbnH/skqWF6zVLkRbgXQqBtKqJGDXbxdqmsV
 lBaNuRM3SwaRkuohHsIMgI3Ll9T17JbJnSEzrRKAAB/G4n9XMyQgG6wPkzAvnjOyOoMu
 MawWa2oCqNb9kf4R/AuIpzEVZKtcuzABffaE8uHpxQPLbeIsNvW1xY8FLI7lWmrbmVhR GA== 
Received: from mx0a-00154901.pphosted.com (mx0b-00154901.pphosted.com
 [67.231.157.37])
 by mx0a-00154904.pphosted.com with ESMTP id 35ct2pt646-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 15 Dec 2020 09:47:13 -0500
Received: from pps.filterd (m0089484.ppops.net [127.0.0.1])
 by mx0b-00154901.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id
 0BFEdO70088896; Tue, 15 Dec 2020 09:47:12 -0500
Received: from nam11-dm6-obe.outbound.protection.outlook.com
 (mail-dm6nam11lp2172.outbound.protection.outlook.com [104.47.57.172])
 by mx0b-00154901.pphosted.com with ESMTP id 35ewxphs38-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 15 Dec 2020 09:47:12 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IWIbLVZ9Suewjgm84dxfMpQiBV9c5bpP1bnc/ptfOsWyI2/3b+fdXKYREc9Ldv7dUSfEtPbzd+tCsgXoxdhOku2+O/dyXwT9Ob3EEOIGxBdid+T9I1c6yBpmwL50RszTwK4eZPJ2qJNG1wF2t6x0mKONleqMtcxHijVphrLR0UIuU//EClrjxsZrUU7WMhrqr413BPkKNBVpl9FjmkuuQ6VkMnP2yarotB+GfLPHW3f97YWYDwx7Efn2tScCtnANDlP4zw16Z+pQ1cUtJRENNo9kIilKrcNvaiwD5asukBrhQPZLzqVcq2eKffpQ4+373qNonvVSohckhDhsUNDrAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DMMaVg+lqQ9pOy4CTDUSjQqcHdLTUgFivgM2Fq7lw5Y=;
 b=U3dOdAweoficW42tF3xhvTE0LBODX1Xo0M0A2n/soA8f1Jz60wGAPx0CWNHCFjZcuwA8qiikj5TJuvePaCHWAE3uHXLpRFrBHwckJafWEl1BJoqFEyEjzjKcMUpC5bPPAj2ud3EPrYbNnUQjfZ6fLld93ZQ1jTn7ofNbU1p7CvF2kMo0mw6FXIIzaoRZ1uBLH8WzUfCzYhfaBiU+LGmyET/0p95fwvRbx7OfYQVBlmHDBVludRznBMBj/DmHXFntVG/aQAU8xeRGLQcOIKKazV3OiCfxvSKht15BHtuzn7pe+ITKE+nhVR5ssSwUveFpO34D9RHAOBU0iuXw1O+Y2g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dell.com; dmarc=pass action=none header.from=dell.com;
 dkim=pass header.d=dell.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Dell.onmicrosoft.com; 
 s=selector1-Dell-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DMMaVg+lqQ9pOy4CTDUSjQqcHdLTUgFivgM2Fq7lw5Y=;
 b=AfN/RHMZUSVlLZq2/xyysK0pDHIj6NzFqKxd6wSM7edsEzMP6A0ZlWrMzqe9OaiSymeuiI3+FehrUOpPA/MzeEIGEjLWEsodgr08/uCDZ1+yU6hBQ0OORs4htWvhHYvpxuQuI6655AA5iARJTBQDJvJY1/GVnzbiSEzojSoLJkY=
Received: from SJ0PR19MB4463.namprd19.prod.outlook.com (2603:10b6:a03:282::9)
 by BY5PR19MB3953.namprd19.prod.outlook.com (2603:10b6:a03:219::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3654.12; Tue, 15 Dec
 2020 14:47:10 +0000
Received: from SJ0PR19MB4463.namprd19.prod.outlook.com
 ([fe80::6d3e:acc:b93c:11ef]) by SJ0PR19MB4463.namprd19.prod.outlook.com
 ([fe80::6d3e:acc:b93c:11ef%9]) with mapi id 15.20.3654.025; Tue, 15 Dec 2020
 14:47:10 +0000
From: "Shen, Yijun" <Yijun.Shen@dell.com>
To: "Limonciello, Mario" <Mario.Limonciello@dell.com>, Jeff Kirsher
 <jeffrey.t.kirsher@intel.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [PATCH v5 3/4] Revert "e1000e: disable s0ix entry and exit flows
 for ME systems"
Thread-Index: AQHW0k99rHXStnU1B0muYVTGEf35Zan4PRqg
Date: Tue, 15 Dec 2020 14:47:10 +0000
Message-ID: <SJ0PR19MB4463CCDAD3CA23507FD6B98C9AC60@SJ0PR19MB4463.namprd19.prod.outlook.com>
References: <20201214192935.895174-1-mario.limonciello@dell.com>
 <20201214192935.895174-4-mario.limonciello@dell.com>
In-Reply-To: <20201214192935.895174-4-mario.limonciello@dell.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: Dell.com; dkim=none (message not signed)
 header.d=none;Dell.com; dmarc=none action=none header.from=Dell.com;
x-originating-ip: [101.86.22.85]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 51f508c8-f56a-4b96-850c-08d8a1084d4f
x-ms-traffictypediagnostic: BY5PR19MB3953:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BY5PR19MB39532D3DA80B72D88D1FBBF79AC60@BY5PR19MB3953.namprd19.prod.outlook.com>
x-exotenant: 2khUwGVqB6N9v58KS13ncyUmMJd8q4
x-ms-oob-tlc-oobclassifiers: OLM:193;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: nITeiHMVeJk5g/Y8wOAou53AY1zlp6NKAU2ZwHKg8/UvOF766KkdQTCOI3mzFcq8Qot38RFDOAlmeGUggoXQ0j+B4MzVo7XDd3lp1+apW/0eNZ3tjDD4IL8EYWAy0JnvKR2PSsh+IPsYhkR8WRuj5EdLRtATGQ8hM6N4jx8mdHtPOUaSkWGg30I9MskjEFV8PrbxxttQUZT3mH7Tq2RbX5QznVQ9y6La+HQPm4Om7rnhA+/x47mXoH/qWJHLHJ2062OpbUpg5QIiVoHNa9Jl3oB4l9ivBrtXx0B8bT+HTjRgR6pcyjfljhhkpaP44Lt+Lm27puxdK4xTqeIDk2lHYc0NuvS9awc6RhuAXfqNJ6OUftyAN3qtiF0Xb3TCl8Ic
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR19MB4463.namprd19.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(136003)(376002)(346002)(366004)(66556008)(186003)(86362001)(66446008)(83380400001)(64756008)(66946007)(66476007)(53546011)(71200400001)(2906002)(7696005)(5660300002)(508600001)(33656002)(6506007)(786003)(8936002)(8676002)(7416002)(54906003)(52536014)(110136005)(55016002)(9686003)(76116006)(4326008)(26005)(32563001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?HIN1+WdXrqU9Uj1SFNTKd2TBHxM78E86ikXqB8QR7qVacCW6yaU8F/HXToeX?=
 =?us-ascii?Q?tTpwicYkfiz2Sy7ER1Zdns45EDnevcOt6r86GCdHbupsO7x+JbMdKHLce01e?=
 =?us-ascii?Q?4/vb7eXKdXeqbY0ZWpdYGPYmPRb8nteWP5ayAuyWunwvmHPNCoMOVN0KK83G?=
 =?us-ascii?Q?iUNxr2FY2xZ3HutZDKq7D5KxlXjH4lbZN2a5RNXkAg+mXPEBlpk8f8tlRQkH?=
 =?us-ascii?Q?cLGz3djyqmu3/sK3qVITbcAfIcq1HsRQJ5V7LH0jrn3kemvbhBKXnWxHaY9K?=
 =?us-ascii?Q?zqlvrMbSF5KB/Ugf2JdYSOKoqyCHEpKJG7aQNxbH/EhEeDaqJMmrX7rCa+sW?=
 =?us-ascii?Q?FeKHX6FU66hH0Iw8Qmladw50/3o7eLXSs1ycZi0sAdEBWbh10mP5/ExM2AuJ?=
 =?us-ascii?Q?9AgvQzDgdJh4CwzaJdpr/fqtC1TYCb3M7axRc4GMJ6jfOH9L+8RGdmsCFAb9?=
 =?us-ascii?Q?6LovAiRBr3YjCKz1oDdzoY8mr4ZW1xt1CucgsrPoJb0QY38wMI2gWkRiPr7Z?=
 =?us-ascii?Q?2f1IFUOMfKPQ08y1B0R/mH9ITzgW2wD8kGyxveSTclk0siXoBMeRmtJ0hAfU?=
 =?us-ascii?Q?hgxCKgVQrZ3UbCwsn0+Q13SqwVBqtOyLkfLjkUNhHuQoap5YxmJKbtpfSgyh?=
 =?us-ascii?Q?gn1KLZqLIPbEcysLFmLNRl18Zq+Lvr8gQ3HD1iROvI8VOC9E2GbKSKC+PdCQ?=
 =?us-ascii?Q?zH01DsmReoA+Pu0MQKb3nMu/BkvXAIGAlfXTj+P5Jfwk6ZrtxzT7v8ODiMl5?=
 =?us-ascii?Q?53xXM/wEQrQj+BJNTNc2CL6+HCK+qsBsPk2ZzTSdwhhT0qNve+Q5kMvl5Upt?=
 =?us-ascii?Q?4SDumbEWNgcZSr57dkwhMj5SIIo2N++syc3SAV6+0HUGsyWRBSuEz36aTExu?=
 =?us-ascii?Q?ByKxtaKIF05U0ssRluAN3prxX9ABkwSP8kC+Q6s9MTcVVa+mF3V5U0SLwiG9?=
 =?us-ascii?Q?uJFHk8On+i0iqAZeD2ybbyWA6GMwSGwwAXyI852dtlM=3D?=
MIME-Version: 1.0
X-OriginatorOrg: Dell.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR19MB4463.namprd19.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 51f508c8-f56a-4b96-850c-08d8a1084d4f
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Dec 2020 14:47:10.0826 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 945c199a-83a2-4e80-9f8c-5a91be5752dd
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lLBzUVBEIgYUDaqoq3A8dkzV2ufWVHhuGCehr/RJyavaG9ALz72rVXs8wwUZdlzsMMkP+3JYTXTJWzG1k8e6ow==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR19MB3953
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.343, 18.0.737
 definitions=2020-12-15_12:2020-12-15,
 2020-12-15 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 mlxlogscore=999
 impostorscore=0 mlxscore=0 clxscore=1015 bulkscore=0 malwarescore=0
 phishscore=0 adultscore=0 lowpriorityscore=0 priorityscore=1501
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2012150105
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0
 adultscore=0 mlxscore=0
 suspectscore=0 spamscore=0 mlxlogscore=999 bulkscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2012150105
X-Mailman-Approved-At: Tue, 15 Dec 2020 14:48:06 +0000
Subject: Re: [Intel-wired-lan] [PATCH v5 3/4] Revert "e1000e: disable s0ix
 entry and exit flows for ME systems"
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
Cc: Hans de Goede <hdegoede@redhat.com>, Netdev <netdev@vger.kernel.org>, "Yuan,
 Perry" <Perry.Yuan@dell.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "anthony.wong@canonical.com" <anthony.wong@canonical.com>,
 Jakub Kicinski <kuba@kernel.org>, David Miller <davem@davemloft.net>,
 Stefan Assmann <sassmann@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Limonciello, Mario <Mario_Limonciello@Dell.com>
> Sent: Tuesday, December 15, 2020 3:30 AM
> To: Jeff Kirsher; Tony Nguyen; intel-wired-lan@lists.osuosl.org
> Cc: linux-kernel@vger.kernel.org; Netdev; Alexander Duyck; Jakub Kicinski;
> Sasha Netfin; Aaron Brown; Stefan Assmann; David Miller;
> darcari@redhat.com; Shen, Yijun; Yuan, Perry;
> anthony.wong@canonical.com; Hans de Goede; Limonciello, Mario
> Subject: [PATCH v5 3/4] Revert "e1000e: disable s0ix entry and exit flows for
> ME systems"
> 
> commit e086ba2fccda ("e1000e: disable s0ix entry and exit flows for ME
> systems") disabled s0ix flows for systems that have various incarnations of
> the i219-LM ethernet controller.  This changed caused power consumption
> regressions on the following shipping Dell Comet Lake based laptops:
> * Latitude 5310
> * Latitude 5410
> * Latitude 5410
> * Latitude 5510
> * Precision 3550
> * Latitude 5411
> * Latitude 5511
> * Precision 3551
> * Precision 7550
> * Precision 7750
> 
> This commit was introduced because of some regressions on certain
> Thinkpad laptops.  This comment was potentially caused by an earlier
> commit 632fbd5eb5b0e ("e1000e: fix S0ix flows for cable connected case").
> or it was possibly caused by a system not meeting platform architectural
> requirements for low power consumption.  Other changes made in the driver
> with extended timeouts are expected to make the driver more impervious to
> platform firmware behavior.
> 
> Fixes: e086ba2fccda ("e1000e: disable s0ix entry and exit flows for ME
> systems")
> Reviewed-by: Alexander Duyck <alexander.duyck@gmail.com>
> Signed-off-by: Mario Limonciello <mario.limonciello@dell.com>

Verified this series patches with Dell Systems.

Tested-By: Yijun Shen <Yijun.shen@dell.com>

> ---
>  drivers/net/ethernet/intel/e1000e/netdev.c | 45 +---------------------
>  1 file changed, 2 insertions(+), 43 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c
> b/drivers/net/ethernet/intel/e1000e/netdev.c
> index 6588f5d4a2be..b9800ba2006c 100644
> --- a/drivers/net/ethernet/intel/e1000e/netdev.c
> +++ b/drivers/net/ethernet/intel/e1000e/netdev.c
> @@ -103,45 +103,6 @@ static const struct e1000_reg_info
> e1000_reg_info_tbl[] = {
>  	{0, NULL}
>  };
> 
> -struct e1000e_me_supported {
> -	u16 device_id;		/* supported device ID */
> -};
> -
> -static const struct e1000e_me_supported me_supported[] = {
> -	{E1000_DEV_ID_PCH_LPT_I217_LM},
> -	{E1000_DEV_ID_PCH_LPTLP_I218_LM},
> -	{E1000_DEV_ID_PCH_I218_LM2},
> -	{E1000_DEV_ID_PCH_I218_LM3},
> -	{E1000_DEV_ID_PCH_SPT_I219_LM},
> -	{E1000_DEV_ID_PCH_SPT_I219_LM2},
> -	{E1000_DEV_ID_PCH_LBG_I219_LM3},
> -	{E1000_DEV_ID_PCH_SPT_I219_LM4},
> -	{E1000_DEV_ID_PCH_SPT_I219_LM5},
> -	{E1000_DEV_ID_PCH_CNP_I219_LM6},
> -	{E1000_DEV_ID_PCH_CNP_I219_LM7},
> -	{E1000_DEV_ID_PCH_ICP_I219_LM8},
> -	{E1000_DEV_ID_PCH_ICP_I219_LM9},
> -	{E1000_DEV_ID_PCH_CMP_I219_LM10},
> -	{E1000_DEV_ID_PCH_CMP_I219_LM11},
> -	{E1000_DEV_ID_PCH_CMP_I219_LM12},
> -	{E1000_DEV_ID_PCH_TGP_I219_LM13},
> -	{E1000_DEV_ID_PCH_TGP_I219_LM14},
> -	{E1000_DEV_ID_PCH_TGP_I219_LM15},
> -	{0}
> -};
> -
> -static bool e1000e_check_me(u16 device_id) -{
> -	struct e1000e_me_supported *id;
> -
> -	for (id = (struct e1000e_me_supported *)me_supported;
> -	     id->device_id; id++)
> -		if (device_id == id->device_id)
> -			return true;
> -
> -	return false;
> -}
> -
>  /**
>   * __ew32_prepare - prepare to write to MAC CSR register on certain parts
>   * @hw: pointer to the HW structure
> @@ -6974,8 +6935,7 @@ static __maybe_unused int
> e1000e_pm_suspend(struct device *dev)
>  		e1000e_pm_thaw(dev);
>  	} else {
>  		/* Introduce S0ix implementation */
> -		if (hw->mac.type >= e1000_pch_cnp &&
> -		    !e1000e_check_me(hw->adapter->pdev->device))
> +		if (hw->mac.type >= e1000_pch_cnp)
>  			e1000e_s0ix_entry_flow(adapter);
>  	}
> 
> @@ -6991,8 +6951,7 @@ static __maybe_unused int
> e1000e_pm_resume(struct device *dev)
>  	int rc;
> 
>  	/* Introduce S0ix implementation */
> -	if (hw->mac.type >= e1000_pch_cnp &&
> -	    !e1000e_check_me(hw->adapter->pdev->device))
> +	if (hw->mac.type >= e1000_pch_cnp)
>  		e1000e_s0ix_exit_flow(adapter);
> 
>  	rc = __e1000_resume(pdev);
> --
> 2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
