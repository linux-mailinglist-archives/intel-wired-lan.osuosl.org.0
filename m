Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 951CC33148F
	for <lists+intel-wired-lan@lfdr.de>; Mon,  8 Mar 2021 18:21:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 14FC36F4E8;
	Mon,  8 Mar 2021 17:21:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0EvyyLChDFRY; Mon,  8 Mar 2021 17:21:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 022916F483;
	Mon,  8 Mar 2021 17:21:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A5B881BF3A9
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Mar 2021 17:21:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A06DC45BD3
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Mar 2021 17:21:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=dell.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0vNJ4ZDCZvbr for <intel-wired-lan@lists.osuosl.org>;
 Mon,  8 Mar 2021 17:20:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mx0a-00154904.pphosted.com (mx0a-00154904.pphosted.com
 [148.163.133.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 45E6144ED2
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Mar 2021 17:20:59 +0000 (UTC)
Received: from pps.filterd (m0170389.ppops.net [127.0.0.1])
 by mx0a-00154904.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id
 128GvOMN023505; Mon, 8 Mar 2021 12:20:57 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dell.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=smtpout1;
 bh=g9E6PAbrhhI1LfNvNOsn6AwNsWET2U0veRINIAi3YYs=;
 b=vgh8sCCBLiRIWill63yemKmm1LmzU2N85FAlW7mdgmGCl2LadB/vVYg1YL0TcfMRxWn0
 rTqzxN3aWg3RI52SHaDR5saQPCc+NwM8y1FS9+UKVtDSqwhHkdiqOfk3ijIHXlPeIgUE
 7svUMEH0hguwybU9kd9GhRf7w6Uk1gTC/0iBO4GSNXeYtGl6V6WN2lb82WFwSvd866I/
 MobCrGipVP2vkMIvjJ7ZvYULaV57G5fzXav8SC7h4lTG6nnsd8Nv7nv3dSLyzAbYoRMB
 LFDvKDLS03T1+nx749BBEpdUe9T3VABnvN7FOv83kbuHYqn5VPCMJlHfFLjCzozI87xA tg== 
Received: from mx0a-00154901.pphosted.com (mx0a-00154901.pphosted.com
 [67.231.149.39])
 by mx0a-00154904.pphosted.com with ESMTP id 3746mrnc2g-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 08 Mar 2021 12:20:56 -0500
Received: from pps.filterd (m0134746.ppops.net [127.0.0.1])
 by mx0a-00154901.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id
 128GxWEm172346; Mon, 8 Mar 2021 12:20:56 -0500
Received: from nam10-mw2-obe.outbound.protection.outlook.com
 (mail-mw2nam10lp2101.outbound.protection.outlook.com [104.47.55.101])
 by mx0a-00154901.pphosted.com with ESMTP id 374qn1j6m6-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 08 Mar 2021 12:20:56 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KQLBBM9kZKuf/ws7BxcgffyZ12yjFK/tMCOTT0VJjihDl65LW1wqrBHer1jMrJ/SFE2xZlJCHGoQ0qwRtLBZoRhT+7o4wApmaxoCyhy0rtV1PfGkB1VqazM4ovh68cJMj+ZC5F5KY8rNRn44lrUivYQfqGwHo0mBMRkI5ndymIB5HmNyPnCqwoiTd7WINvP3HvZKbKuSYkLgkareL2ibrcQGcsLg5qzQxsqirfH9ihAHnVIIXIvuoBgmKB+7ulKRGHlCvGzfXaXMMNFy3iYjWj7ATklEuPLGn3c6IxpDc4IABchMD6C2FIvgZuKosoo6SU1oW61KLrEmtlketlWpaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=g9E6PAbrhhI1LfNvNOsn6AwNsWET2U0veRINIAi3YYs=;
 b=UvU4xkJEJe3RpUNYCAaPFs6m4rq0VJZhotLpkhg1Ck9wayTByLNg187BeCi79F3oS8/qTAlY9Gln2rEoGc/XWiTxb6pgwIqu75N+Vyb428kHdYrkPHxOB3O2zm1whYL/VRTkj5vXqbXkxSAU7WQOa6CYkaTsDHc7kORhZQVdub+jDDZv0Y4EB0vBJ4g/3afZAII6BsLDEWeBn8riRqbtCPcQfKCPd2upQnm4Gi2HQKb5mi3A/WoAsKViCVgLV4NboZl1tDlaVUVN/HoUCDDWH2cP0oyhiYTvlG07b5jAaH3nW1f3nWZ5+dB/4YrIoa2k5UeO0GY8ps70I3sNmFuKxA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dell.com; dmarc=pass action=none header.from=dell.com;
 dkim=pass header.d=dell.com; arc=none
Received: from SA1PR19MB4926.namprd19.prod.outlook.com (2603:10b6:806:1a6::18)
 by SN6PR1901MB1999.namprd19.prod.outlook.com (2603:10b6:805:10::32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3890.28; Mon, 8 Mar
 2021 17:20:51 +0000
Received: from SA1PR19MB4926.namprd19.prod.outlook.com
 ([fe80::1c92:24d3:b11f:bc50]) by SA1PR19MB4926.namprd19.prod.outlook.com
 ([fe80::1c92:24d3:b11f:bc50%6]) with mapi id 15.20.3912.027; Mon, 8 Mar 2021
 17:20:51 +0000
From: "Limonciello, Mario" <Mario.Limonciello@dell.com>
To: "David E. Box" <david.e.box@linux.intel.com>, "irenic.rajneesh@gmail.com"
 <irenic.rajneesh@gmail.com>, "hdegoede@redhat.com" <hdegoede@redhat.com>,
 "mgross@linux.intel.com" <mgross@linux.intel.com>, "sasha.neftin@intel.com"
 <sasha.neftin@intel.com>
Thread-Topic: [PATCH] platform/x86: intel_pmc: Ignore GBE LTR on Tiger Lake
 platforms
Thread-Index: AQHXEfLhzYLSroQh8UmKnpvnJJhjqqp6Wj0A
Date: Mon, 8 Mar 2021 17:20:51 +0000
Message-ID: <SA1PR19MB49261823693E915E7D646B07FA939@SA1PR19MB4926.namprd19.prod.outlook.com>
References: <20210305190608.1834164-1-david.e.box@linux.intel.com>
In-Reply-To: <20210305190608.1834164-1-david.e.box@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Enabled=True;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_SiteId=945c199a-83a2-4e80-9f8c-5a91be5752dd;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Owner=Mario_Limonciello@Dell.com;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_SetDate=2021-03-08T17:20:07.5927632Z;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Name=External Public;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Application=Microsoft Azure
 Information Protection;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_ActionId=944ee811-ef5c-4a5e-b04c-64056ad7416f;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Extended_MSFT_Method=Manual
authentication-results: linux.intel.com; dkim=none (message not signed)
 header.d=none;linux.intel.com; dmarc=none action=none header.from=Dell.com;
x-originating-ip: [76.251.167.31]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: cc15a46e-e036-47e8-1887-08d8e256860f
x-ms-traffictypediagnostic: SN6PR1901MB1999:
x-microsoft-antispam-prvs: <SN6PR1901MB19991CFFE4B0F8BF4D8B28A4FA939@SN6PR1901MB1999.namprd19.prod.outlook.com>
x-exotenant: 2khUwGVqB6N9v58KS13ncyUmMJd8q4
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 0T8ED2Ed+QdXZPGc6sAQkLAKfg9+tuEo13hQ+RUsMZYNnaMStvj4f15bcUHYG/4GI7c0tvABsvwaxu9OuIEtXVb4+Pqk4BWgJfFbhNlct4FvJecxoZwkwtXer9ylDUpi31sFAJWTI3ukeiXYpmDrqN0Mg6jxumS3TxDQC8W6iRS7xfTv38bKbaOPnLmNixobnf46sNLUUKbYKd6bsD/07Lr34d6hRrCv/z0SpNHtx8ZPUFEF7cdIRssAuw0LZAsXNWp0LC32xiEC1C8k3lxkg4P0vTSG/o6jSPry/RvgnQvncxSaK3DSyiO+N3+0GiW01YdEbrgso4n5TMPVXfJj7LxC1wnXw8fF3G6emFgEAClRmSEeLI2r3CED8AafA6y2qXi9V2OFoVx6uSa0ij9J9tw1CAClrVMOHmJLWudOL1HiKbVhtKvhqlZtdBsqVwcPvPxLlV+LMQxI1IxU4aFkd5jVb58wRAll7Ot1Mz/m+zUbN428v1EbJjSRwjmcxTmOPjI28P9LCrlaoHOv797icw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SA1PR19MB4926.namprd19.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(52536014)(66446008)(64756008)(66556008)(8936002)(26005)(9686003)(5660300002)(7696005)(55016002)(2906002)(6506007)(498600001)(186003)(4326008)(8676002)(71200400001)(86362001)(66946007)(54906003)(76116006)(83380400001)(110136005)(33656002)(66476007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?Q2WSmOS7HIOApIZv6wa7zIVCZtuwQStBVH271ev8cBA3CzsWPiCjZskO06Kv?=
 =?us-ascii?Q?7/bv4wiiizc/xJfBdUtWvhk5gHYt3/yhWytwemSK7L9i2zkb3l0vRDJmYP21?=
 =?us-ascii?Q?KLxo30lCoufKTMsk1v99K4T6LGTpDOUmpoV3L5+MtiVuBASYNiEZ3euxfLNZ?=
 =?us-ascii?Q?SLTRwk3yNSXEhiRlIhcHIWWh7m5G+lWsrcWL8CbLHRBi1OdC4+9aBnkyI5T/?=
 =?us-ascii?Q?/GoumgsII0ndCYHorDps2iaM6+lla5LTtHASXut+xIsPShs+mnIEfc1Qf6YY?=
 =?us-ascii?Q?Lf2K5foDGx2qEKH1m8Mv9BrAfgI8s+YcYX7Cf42s1KX9mTCpYw9erXuys8Xi?=
 =?us-ascii?Q?9Ewr8rU7yspCq4LNUjuzplrwswb1RZ7oUGu8mYijaU/wwsZFNCaY+5qnsKTb?=
 =?us-ascii?Q?dUUwFy3AEmA9bdAfnLfg3Ga2/dHGOS97vS23SVy0ARJHK695SbP0oCZ83cz5?=
 =?us-ascii?Q?HsaigZFUdT115j7xQUo2jMk4eRMW14ekp0L8tufu8NenM2YgdK549JToCLcG?=
 =?us-ascii?Q?YFiXfvOVN2SWOscznery+ISHesYeGEr7Hq/8iOfDZu/RVjpq4wplAdSC3mgT?=
 =?us-ascii?Q?KSBdOquFcYNC5MVJX70y6eVzeQGX0mQmMjyMh/O97EFKT/+w/NIoF/huyAul?=
 =?us-ascii?Q?3nDvrUh0stAM9QN/BvMuTeKaDQZV/NuxE1Sw/sV8HGdZlAzaAfhiJey0bXRQ?=
 =?us-ascii?Q?ISCnwTypzLiJkU9i9OoMYGwx2amU0KRcIRGMr+fgeeqZPj9Z92WMALMB7izR?=
 =?us-ascii?Q?N0wcYmsaI20SdNxsYsbp8lQjaY4JR4vyVZNIyzQo0Rfy3TGXygZArDsOvCUl?=
 =?us-ascii?Q?K58n30NtPIZcoryU/JGmaofasCktFutt5lGjjd62dQs6CXNbbByeg8f4R5Sl?=
 =?us-ascii?Q?I8agtHwyLUhphvGW1IuG4IZ33vqU7fR0IYmS0DQgSOKrFIp5etlh4vV3C6F5?=
 =?us-ascii?Q?yZx02aGTPsJuKS9p644BQi4mR0kCC0zJA1icIoZw7B3xMuggwI1NzeKvE90f?=
 =?us-ascii?Q?eTqqIzMh9bON5M5k05kJRIt9yqtNJm3Ov53JpirmNg7FfAxsdvuy3lPqKzxj?=
 =?us-ascii?Q?ThrvSNnI/KtYaMqtjTRf7WTtEneZDt1cywtnbuSVsZcYXTNm38PC6AJxa4Vw?=
 =?us-ascii?Q?Ok/QZEJ9x9xcRT/+K03KAMOLSfz/cjdPFll/j1JOyeibDtUbpzpDYnMFARKS?=
 =?us-ascii?Q?gHyuQDPbeAbavY1lAEOcLf1FCSU1WU5q8b0cuCTavGyxkrRXX3bQHM1XDIVj?=
 =?us-ascii?Q?cKa0FUP8UJJvur8nbnogXcW2ZcyrWgLLgE7YKAy9H5FUPG6/0aoW8ISXLMEd?=
 =?us-ascii?Q?8ByZU+mbGbuMGgczGlAEsKkp?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: Dell.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SA1PR19MB4926.namprd19.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cc15a46e-e036-47e8-1887-08d8e256860f
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Mar 2021 17:20:51.5672 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 945c199a-83a2-4e80-9f8c-5a91be5752dd
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: SCT0d7KimDwqfez1pqYJVcxiG0+xB/DZRtcLI9pvpybHPLBwkm5t0MzTkKWJalFmSlLtF8gA/RMlzGzoSPjy1hfuvL1ZFfUceDFA+l+mWeg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR1901MB1999
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.369, 18.0.761
 definitions=2021-03-08_14:2021-03-08,
 2021-03-08 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 mlxscore=0
 clxscore=1011 lowpriorityscore=0 priorityscore=1501 adultscore=0
 mlxlogscore=999 malwarescore=0 phishscore=0 impostorscore=0 spamscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2103080091
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 mlxscore=0 spamscore=0
 mlxlogscore=999 phishscore=0 adultscore=0 malwarescore=0 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2103080091
Subject: Re: [Intel-wired-lan] [PATCH] platform/x86: intel_pmc: Ignore GBE
 LTR on Tiger Lake platforms
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
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "platform-driver-x86@vger.kernel.org" <platform-driver-x86@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> 
> [EXTERNAL EMAIL]
> 
> Due to a HW limitation, the Latency Tolerance Reporting (LTR) value
> programmed in the Tiger Lake GBE controller is not large enough to allow
> the platform to enter Package C10, which in turn prevents the platform from
> achieving its low power target during suspend-to-idle.  Ignore the GBE LTR
> value on Tiger Lake. LTR ignore functionality is currently performed solely
> by a debugfs write call. Split out the LTR code into its own function that
> can be called by both the debugfs writer and by this work around.
> 
> Signed-off-by: David E. Box <david.e.box@linux.intel.com>
> Reviewed-by: Sasha Neftin <sasha.neftin@intel.com>
> Cc: intel-wired-lan@lists.osuosl.org
> ---
>  drivers/platform/x86/intel_pmc_core.c | 55 ++++++++++++++++++++-------
>  1 file changed, 42 insertions(+), 13 deletions(-)

I feel like this driver change causes a weak reference between e1000e and intel_pmc_core.
It would mean significantly different behavior if you use e1000e but don't have PMC module
available for any reason.

In this case does it maybe make sense to at least use "imply" in the Kconfig for e1000e so
that selecting e1000e gets intel-pmc-core enabled too?

> 
> diff --git a/drivers/platform/x86/intel_pmc_core.c
> b/drivers/platform/x86/intel_pmc_core.c
> index ee2f757515b0..ab31eb646a1a 100644
> --- a/drivers/platform/x86/intel_pmc_core.c
> +++ b/drivers/platform/x86/intel_pmc_core.c
> @@ -863,34 +863,45 @@ static int pmc_core_pll_show(struct seq_file *s, void
> *unused)
>  }
>  DEFINE_SHOW_ATTRIBUTE(pmc_core_pll);
> 
> -static ssize_t pmc_core_ltr_ignore_write(struct file *file,
> -					 const char __user *userbuf,
> -					 size_t count, loff_t *ppos)
> +static int pmc_core_write_ltr_ignore(u32 value)
>  {
>  	struct pmc_dev *pmcdev = &pmc;
>  	const struct pmc_reg_map *map = pmcdev->map;
> -	u32 val, buf_size, fd;
> -	int err;
> -
> -	buf_size = count < 64 ? count : 64;
> -
> -	err = kstrtou32_from_user(userbuf, buf_size, 10, &val);
> -	if (err)
> -		return err;
> +	u32 fd;
> +	int err = 0;
> 
>  	mutex_lock(&pmcdev->lock);
> 
> -	if (val > map->ltr_ignore_max) {
> +	if (fls(value) > map->ltr_ignore_max) {
>  		err = -EINVAL;
>  		goto out_unlock;
>  	}
> 
>  	fd = pmc_core_reg_read(pmcdev, map->ltr_ignore_offset);
> -	fd |= (1U << val);
> +	fd |= value;
>  	pmc_core_reg_write(pmcdev, map->ltr_ignore_offset, fd);
> 
>  out_unlock:
>  	mutex_unlock(&pmcdev->lock);
> +
> +	return err;
> +}
> +
> +static ssize_t pmc_core_ltr_ignore_write(struct file *file,
> +					 const char __user *userbuf,
> +					 size_t count, loff_t *ppos)
> +{
> +	u32 buf_size, val;
> +	int err;
> +
> +	buf_size = count < 64 ? count : 64;
> +
> +	err = kstrtou32_from_user(userbuf, buf_size, 10, &val);
> +	if (err)
> +		return err;
> +
> +	err = pmc_core_write_ltr_ignore(1U << val);
> +
>  	return err == 0 ? count : err;
>  }
> 
> @@ -1189,6 +1200,15 @@ static int quirk_xtal_ignore(const struct dmi_system_id
> *id)
>  	return 0;
>  }
> 
> +static int quirk_ltr_ignore(u32 val)
> +{
> +	int err;
> +
> +	err = pmc_core_write_ltr_ignore(val);
> +
> +	return err;
> +}
> +
>  static const struct dmi_system_id pmc_core_dmi_table[]  = {
>  	{
>  	.callback = quirk_xtal_ignore,
> @@ -1244,6 +1264,15 @@ static int pmc_core_probe(struct platform_device *pdev)
>  	pmcdev->pmc_xram_read_bit = pmc_core_check_read_lock_bit();
>  	dmi_check_system(pmc_core_dmi_table);
> 
> +	/*
> +	 * On TGL, due to a hardware limitation, the GBE LTR blocks PC10 when
> +	 * a cable is attached. Tell the PMC to ignore it.
> +	 */
> +	if (pmcdev->map == &tgl_reg_map) {
> +		dev_dbg(&pdev->dev, "ignoring GBE LTR\n");
> +		quirk_ltr_ignore(1U << 3);
> +	}
> +
>  	pmc_core_dbgfs_register(pmcdev);
> 
>  	device_initialized = true;
> --
> 2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
