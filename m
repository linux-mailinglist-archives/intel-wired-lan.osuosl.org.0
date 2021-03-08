Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id BB83533156E
	for <lists+intel-wired-lan@lfdr.de>; Mon,  8 Mar 2021 19:03:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1767D6F5AB;
	Mon,  8 Mar 2021 18:03:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id POE0U_tBN5Vg; Mon,  8 Mar 2021 18:03:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9EB226F571;
	Mon,  8 Mar 2021 18:03:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3FE331BF3A9
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Mar 2021 18:03:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2D9674917A
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Mar 2021 18:03:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=dell.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yozcWmxKy0Mp for <intel-wired-lan@lists.osuosl.org>;
 Mon,  8 Mar 2021 18:03:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mx0b-00154904.pphosted.com (mx0b-00154904.pphosted.com
 [148.163.137.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A5CD0494C8
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Mar 2021 18:03:08 +0000 (UTC)
Received: from pps.filterd (m0170394.ppops.net [127.0.0.1])
 by mx0b-00154904.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id
 128Hl5nl004228; Mon, 8 Mar 2021 13:02:04 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dell.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=smtpout1;
 bh=jH09qDCo8ljOsJl8kuAyqFZrLgkTk3Q9uBvjDzMCw+Y=;
 b=GogrUBOalFtfr7B7SadcB5pk2BCpSrIXuzZMZhqWOz/vvcJAQfnX6arqE4SKYXqlnCcN
 VYulR1P80TmjxGwyeLKkQRkc52qOnB0WEuZIbVkS1jiVfsLfbfU6ZDvnJa+R/1omSiXE
 If58Ddtbn5NiDZe1klNCaWm1HtOAYUBmgCfVQg5EDcXgKyNOxJ6tAr3k7nXuM1DhTIcv
 LixoHOfc3vn1QKQKm9UbdjsOVKtKwI+hUN8s7bip/o6uSHfqgkWuAgB9b87fUpj1PZWM
 bGH+uuDLGWkfwwlqd3GeCu4pkhu0LBl0NdKuzjhCBZf8V3AusGw5SXi7H7H0DQLsQhTo 4A== 
Received: from mx0b-00154901.pphosted.com (mx0b-00154901.pphosted.com
 [67.231.157.37])
 by mx0b-00154904.pphosted.com with ESMTP id 37456bdmsm-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 08 Mar 2021 13:02:04 -0500
Received: from pps.filterd (m0089483.ppops.net [127.0.0.1])
 by mx0b-00154901.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id
 128HjM3c046632; Mon, 8 Mar 2021 13:02:03 -0500
Received: from nam11-dm6-obe.outbound.protection.outlook.com
 (mail-dm6nam11lp2168.outbound.protection.outlook.com [104.47.57.168])
 by mx0b-00154901.pphosted.com with ESMTP id 374qkn2u2d-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 08 Mar 2021 13:02:02 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Tm02rFYxiOij3/9F9UIZfpHzi33e6NXOpjt9X5pZcpM8p4GkHalHJVCsU8t6IBFuZREep5Ja24bpBWE9BAbeT6a9670Q2KgA6XX9hFQS/XZHevLvg+gA60rQGY0sajVBRRNjaHJYI3fPwksjrKto9qBFYD7yv4H2/N2acVnvcoFUKmRufg0niWE69C0hKL8NhrAqVFJnUv2xvk2aP42B8B1HT4wnJpNvoADLc2reFsPZgGTg+p37qqjnr4zyfJCIk2UH/tTNCDjgYhGQg9im93sLsn03rtlya4XHtbR1UO279DSgrUj/f7FHzUBr6pMuzg6Y3KIdyrsF4rW+PcMZLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jH09qDCo8ljOsJl8kuAyqFZrLgkTk3Q9uBvjDzMCw+Y=;
 b=bjNAqByEPJGTZdPL+34sRGC5C7n+TCRSCcmZ5AdHgiTqEMh2cgYvuON0hb6di0INlSu06OanvqDT1NpoyC5JjD+CC4oQnhBP4Ms/CT6WgfgT0O4D4NWidDJkHWCSc1hck8CnlOGAuhY5a16QepjB7JbTNwLch/k615utaFOu1Qco438NQwy9jcDiFE9X+ALBpXczlsfRGCR7rMZ9CGQr1RgNg5YY1No4yzw2AGzsEnuhw9jfMPLQKzuYt19/v25UAj809cWHfto1JogfinO0obFr2NwV0GONBirgI2x0OAzaqJwRWTho+pwAPOH9BmO7MvPV02jubxzL1omvQBYr4w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dell.com; dmarc=pass action=none header.from=dell.com;
 dkim=pass header.d=dell.com; arc=none
Received: from SA1PR19MB4926.namprd19.prod.outlook.com (2603:10b6:806:1a6::18)
 by SA0PR19MB4443.namprd19.prod.outlook.com (2603:10b6:806:c3::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3912.26; Mon, 8 Mar
 2021 18:02:01 +0000
Received: from SA1PR19MB4926.namprd19.prod.outlook.com
 ([fe80::1c92:24d3:b11f:bc50]) by SA1PR19MB4926.namprd19.prod.outlook.com
 ([fe80::1c92:24d3:b11f:bc50%6]) with mapi id 15.20.3912.027; Mon, 8 Mar 2021
 18:02:01 +0000
From: "Limonciello, Mario" <Mario.Limonciello@dell.com>
To: Rajneesh Bhardwaj <irenic.rajneesh@gmail.com>
Thread-Topic: [PATCH] platform/x86: intel_pmc: Ignore GBE LTR on Tiger Lake
 platforms
Thread-Index: AQHXEfLhzYLSroQh8UmKnpvnJJhjqqp6Wj0AgAADo4CAAAd1sA==
Date: Mon, 8 Mar 2021 18:02:00 +0000
Message-ID: <SA1PR19MB49260612D4BEC9AA3FCA85A3FA939@SA1PR19MB4926.namprd19.prod.outlook.com>
References: <20210305190608.1834164-1-david.e.box@linux.intel.com>
 <SA1PR19MB49261823693E915E7D646B07FA939@SA1PR19MB4926.namprd19.prod.outlook.com>
 <CAE2upjT1SabzsEtxnVzFV9hVDVm-KuqXP9QEQqO6HHKVS0-HZg@mail.gmail.com>
In-Reply-To: <CAE2upjT1SabzsEtxnVzFV9hVDVm-KuqXP9QEQqO6HHKVS0-HZg@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Enabled=True;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_SiteId=945c199a-83a2-4e80-9f8c-5a91be5752dd;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Owner=Mario_Limonciello@Dell.com;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_SetDate=2021-03-08T18:01:57.9155413Z;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Name=External Public;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Application=Microsoft Azure
 Information Protection;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_ActionId=df8f9ae3-0702-410c-b19a-7376884fb7c9;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Extended_MSFT_Method=Manual
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=Dell.com;
x-originating-ip: [76.251.167.31]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0617429b-1110-4139-2c31-08d8e25c45ec
x-ms-traffictypediagnostic: SA0PR19MB4443:
x-microsoft-antispam-prvs: <SA0PR19MB4443193AA3442F3435841509FA939@SA0PR19MB4443.namprd19.prod.outlook.com>
x-exotenant: 2khUwGVqB6N9v58KS13ncyUmMJd8q4
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: p+ZehGY5Up5eCrWJGRmdMtB+ER2hZx8NpFLifAOzq3gR0JCJX0rqXbSwsQAWYwjdpU6kc1KHnT9LCzZoeIQW+V1Ph4h3x4WcwbgZ7QpjnTYUk9hgcvhJy26+YaCJRwiYLDgnOtKpa0GVL5M//02+mDiCUSnWy44bKNElwnIT2Lx8rfuaZrVBVG2vhogGSAzOLIrBY8I3r9/t2cela6O59G+lBZyPTh20CIIMkb/yi4gpvT8OyABMjIImzgYjGI3PAkayRQusFaQ6WEXDw8FjwXXOzxwl0tORsc3WB6pP32zeqnkokb0ieVho7CBjdq9msmpAqcebEv+ZkvrmsRt0cym5F3cCqRArDStFjKKHv7ilSNyHvh/4+bsp90WfUfCyvxNugns9IMMfu/FuHlbLc5Z6iscFi/2YIZGbYggjBeKypiXAEbes8A6hRpQ3nzih0SgidYLNnf/+aGgDzGsnlhbEG60nUD0sF0hEX1IBrqGKVJ+cUQGyimA7u+kLUOYGDP5qdMuAu1XMJHXwrYjgJg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SA1PR19MB4926.namprd19.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(39860400002)(136003)(366004)(376002)(396003)(346002)(83380400001)(86362001)(9686003)(55016002)(186003)(33656002)(316002)(6506007)(53546011)(786003)(7696005)(6916009)(8676002)(478600001)(8936002)(66556008)(71200400001)(5660300002)(76116006)(66946007)(54906003)(66476007)(66446008)(64756008)(52536014)(26005)(2906002)(4326008);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?dHJObktTQWkxVmRQdGZ2ZmlKR0F3Q29IWnVzWmo5MXVoakdvSWg1WDc0cjNh?=
 =?utf-8?B?aCtyWTQzMjUxSEVzWS9xRFRGWk8xakkvd3VwT0xUNjJROG1XdXZPaXVZcVRu?=
 =?utf-8?B?T3R0YnNzT1cxSDBtTFFURG5NN2MwYVErQjc5anlQTlNINXpyMWR3KzJDV2VU?=
 =?utf-8?B?bm1aMFZKa1J3bDdGWnFIWnNiSTZPYURDZEtEazNrSkJqQ1htakVzUDV3TWxj?=
 =?utf-8?B?UnRrejVaeWlIa1l1QmZZOTg5d044UERkZnNzb2FSaVZENTAxcERvSVBUL3N0?=
 =?utf-8?B?YW9BOXVsV0M4VElCVHAwUVZFRmE0SlNreXhWdCtLcVJEWHRhU3U0Tm5TU3lO?=
 =?utf-8?B?cnhmNlh0amE1MEs5K1p6WFlDSXdBdGNPbmt1T1FMMXgwRTdkUUFXMVZFeFlu?=
 =?utf-8?B?bGtOTlc0Qk9LeENER2VsdDFNK1Mxai9ES0Nxa0VQOTV5T1NSeUxibEtEOVJM?=
 =?utf-8?B?VXZCTzlOOFZIeUFWWXBCcG5QVG84WVdSQ0VlNmtDZWdMd3k3N0dHVTd6UDVS?=
 =?utf-8?B?NEhjdE5ET1FOM2x0elF0Z2NzVnh1UnJ2THZlTTdzczJGMkJEdUtEV1lMUWJP?=
 =?utf-8?B?T3hIWlhzVnFlcGNIclFGWTZHSUFIRkxVeDdUTUpRWFUxd1JqTTZ6WVFoZUZR?=
 =?utf-8?B?SU1QdDRheFFTQ3RYSzhCSFV3ZHpuUFlaUmdWZVF0ejloZEJ1VzR4NWR2VW1U?=
 =?utf-8?B?WElSV2pyekY4MmVKQ2gvZXZtcTdYbFd3dkdmbXljbUJVOUdKL2tPV01RK1pt?=
 =?utf-8?B?T25Sa1ZRaENrOFpuMTNMSUxIZjM1Y2NaSzRqQ2RUMjhPRW9mSVhudFhuaWF3?=
 =?utf-8?B?eUtkUEhlbUtoUm5RMHBSdURpVm9DT3RodmZsM0pLdFJHaE52ZERqOERsNFAx?=
 =?utf-8?B?YXZiOEliZ3NUTmNmbVdVSnFRamxDdVFmdVFwQno5VHNud0kwMzBSNnJITVNW?=
 =?utf-8?B?K2lhZm5NVlUyNjZQT0hONm9QcHo1YUpHU3RlRmxyeEg1QTk2Y1RzYk5TY01r?=
 =?utf-8?B?ck81ZHhaTGZUNFlNNFlsTjVPNDlzZzRVZFIrRUhQdEdhSnkrZmlFcnczNDRQ?=
 =?utf-8?B?bE4yNkFCZ1NQU05QSWlzTWFxVkttTEJWY0s0V0FQVHFrNURVeEEvdGdvYTRT?=
 =?utf-8?B?OEc1UlBXZ28rOFN6NUtzbzlod1hYcTNBWVFmTFlvMU15elpMbmx1MFNiNjFY?=
 =?utf-8?B?a3ZaS3hjemJZd25EZndHUy82S3NaTnJaRUpDVFo5TjdsZ3pqSm1aVFY1WFl1?=
 =?utf-8?B?TUc4eHZHSGM2a2hyTnByUWtXNGpjZndhYXNWYldaL1FYY1ZUclVGOHdJaG5S?=
 =?utf-8?B?T1QxZE1GQTMrQnVGR2F5T09jMFN6cHFoVGhreUNXWm5PRHBNOWdKbUxYSFp1?=
 =?utf-8?B?UWdoNHhxeXQ4bnMrQkZyVmhuSzZVZUFPTlR6RmgrbDh3OFJ3MkovR0xlRUl6?=
 =?utf-8?B?V3I4YTdoK0c5T3RtNjQwYVdkT2E2enl5V2gxaWtQRzNoaWtYY3VMdlhrSW5R?=
 =?utf-8?B?eXdRSHgrSkt1REUyUzA2Mk9iVmF6MUxUeUNBaGVWamRUWVYwUXpLRzFQRVpt?=
 =?utf-8?B?SS9HYk9HeDhoV1NXQkJidytuYVd4OFdEbUJEYllSMUd4NUlMSGc5NmQyeHlv?=
 =?utf-8?B?dStHSmpKb0YyU2RUSWtxR3E5YmFmZjZVd29waFg5Q0RQbDR6Q2JQYXlxOGNO?=
 =?utf-8?B?cmFEaHpHU3dWZHNKWDNublJuWjdCTjVZWDBEdTRwT2IxL09vYk4rZ2Q3RWxi?=
 =?utf-8?Q?b8YN28LZy9T+o4R7qLNtMBt8glziZj0W/2VZNik?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: Dell.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SA1PR19MB4926.namprd19.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0617429b-1110-4139-2c31-08d8e25c45ec
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Mar 2021 18:02:00.8131 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 945c199a-83a2-4e80-9f8c-5a91be5752dd
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hOj9UNv//mSkSuBEATzzOPA6ylIe4pJXSsTGV5PtYZkUnC4lCep3qUiDZbfxEcElEELR4re6hprZR9BLJcxi7jt8eo9uUm7BGNv8xRWnH7s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR19MB4443
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.369, 18.0.761
 definitions=2021-03-08_14:2021-03-08,
 2021-03-08 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 bulkscore=0
 spamscore=0 clxscore=1015 priorityscore=1501 mlxscore=0 malwarescore=0
 impostorscore=0 lowpriorityscore=0 phishscore=0 mlxlogscore=999
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2103080095
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 adultscore=0 bulkscore=0
 mlxlogscore=999 mlxscore=0 malwarescore=0 phishscore=0 spamscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2103080095
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
Cc: "mgross@linux.intel.com" <mgross@linux.intel.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "platform-driver-x86@vger.kernel.org" <platform-driver-x86@vger.kernel.org>,
 "hdegoede@redhat.com" <hdegoede@redhat.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "David E. Box" <david.e.box@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Rajneesh Bhardwaj <irenic.rajneesh@gmail.com>
> Sent: Monday, March 8, 2021 11:32
> To: Limonciello, Mario
> Cc: David E. Box; hdegoede@redhat.com; mgross@linux.intel.com;
> sasha.neftin@intel.com; platform-driver-x86@vger.kernel.org; linux-
> kernel@vger.kernel.org; intel-wired-lan@lists.osuosl.org
> Subject: Re: [PATCH] platform/x86: intel_pmc: Ignore GBE LTR on Tiger Lake
> platforms
> 
> 
> [EXTERNAL EMAIL]
> 
> On Mon, Mar 8, 2021 at 12:20 PM Limonciello, Mario
> <Mario.Limonciello@dell.com> wrote:
> >
> > >
> > > [EXTERNAL EMAIL]
> > >
> > > Due to a HW limitation, the Latency Tolerance Reporting (LTR) value
> > > programmed in the Tiger Lake GBE controller is not large enough to allow
> > > the platform to enter Package C10, which in turn prevents the platform
> from
> > > achieving its low power target during suspend-to-idle.  Ignore the GBE LTR
> > > value on Tiger Lake. LTR ignore functionality is currently performed
> solely
> > > by a debugfs write call. Split out the LTR code into its own function that
> > > can be called by both the debugfs writer and by this work around.
> > >
> > > Signed-off-by: David E. Box <david.e.box@linux.intel.com>
> > > Reviewed-by: Sasha Neftin <sasha.neftin@intel.com>
> > > Cc: intel-wired-lan@lists.osuosl.org
> > > ---
> > >  drivers/platform/x86/intel_pmc_core.c | 55 ++++++++++++++++++++-------
> > >  1 file changed, 42 insertions(+), 13 deletions(-)
> >
> > I feel like this driver change causes a weak reference between e1000e and
> intel_pmc_core.
> > It would mean significantly different behavior if you use e1000e but don't
> have PMC module
> > available for any reason.
> 
> Can you elaborate what would change significantly? This is a FW/HW
> issue and the driver is just doing a work around to let the platform
> enter a deep idle state beyond PC10. If the system could enter PC10
> and was denied entry by PMC only because of a bad LAN LTR, then that's
> purely an e1000e driver/GBE fw issue.
> 
Because the workaround is in pmc driver, the platform behavior becomes tied
to whether this driver was enabled.  Before this the driver was mostly for debugging
purpose and really not necessary.  Now it has a functional purpose.

As such I think it should be made apparent that you need it now for some systems.

> >
> > In this case does it maybe make sense to at least use "imply" in the Kconfig
> for e1000e so
> > that selecting e1000e gets intel-pmc-core enabled too?
> 
> This change would tell PMC to ignore GBE LTR, regardless of which GBE
> driver is selected. This doesn't bind e1000e.

Yeah, that's a good point.

Maybe my suggestion can be to take this into documentation somewhere instead.

> 
> >
> > >
> > > diff --git a/drivers/platform/x86/intel_pmc_core.c
> > > b/drivers/platform/x86/intel_pmc_core.c
> > > index ee2f757515b0..ab31eb646a1a 100644
> > > --- a/drivers/platform/x86/intel_pmc_core.c
> > > +++ b/drivers/platform/x86/intel_pmc_core.c
> > > @@ -863,34 +863,45 @@ static int pmc_core_pll_show(struct seq_file *s,
> void
> > > *unused)
> > >  }
> > >  DEFINE_SHOW_ATTRIBUTE(pmc_core_pll);
> > >
> > > -static ssize_t pmc_core_ltr_ignore_write(struct file *file,
> > > -                                      const char __user *userbuf,
> > > -                                      size_t count, loff_t *ppos)
> > > +static int pmc_core_write_ltr_ignore(u32 value)
> > >  {
> > >       struct pmc_dev *pmcdev = &pmc;
> > >       const struct pmc_reg_map *map = pmcdev->map;
> > > -     u32 val, buf_size, fd;
> > > -     int err;
> > > -
> > > -     buf_size = count < 64 ? count : 64;
> > > -
> > > -     err = kstrtou32_from_user(userbuf, buf_size, 10, &val);
> > > -     if (err)
> > > -             return err;
> > > +     u32 fd;
> > > +     int err = 0;
> > >
> > >       mutex_lock(&pmcdev->lock);
> > >
> > > -     if (val > map->ltr_ignore_max) {
> > > +     if (fls(value) > map->ltr_ignore_max) {
> > >               err = -EINVAL;
> > >               goto out_unlock;
> > >       }
> > >
> > >       fd = pmc_core_reg_read(pmcdev, map->ltr_ignore_offset);
> > > -     fd |= (1U << val);
> > > +     fd |= value;
> > >       pmc_core_reg_write(pmcdev, map->ltr_ignore_offset, fd);
> > >
> > >  out_unlock:
> > >       mutex_unlock(&pmcdev->lock);
> > > +
> > > +     return err;
> > > +}
> > > +
> > > +static ssize_t pmc_core_ltr_ignore_write(struct file *file,
> > > +                                      const char __user *userbuf,
> > > +                                      size_t count, loff_t *ppos)
> > > +{
> > > +     u32 buf_size, val;
> > > +     int err;
> > > +
> > > +     buf_size = count < 64 ? count : 64;
> > > +
> > > +     err = kstrtou32_from_user(userbuf, buf_size, 10, &val);
> > > +     if (err)
> > > +             return err;
> > > +
> > > +     err = pmc_core_write_ltr_ignore(1U << val);
> > > +
> > >       return err == 0 ? count : err;
> > >  }
> > >
> > > @@ -1189,6 +1200,15 @@ static int quirk_xtal_ignore(const struct
> dmi_system_id
> > > *id)
> > >       return 0;
> > >  }
> > >
> > > +static int quirk_ltr_ignore(u32 val)
> > > +{
> > > +     int err;
> > > +
> > > +     err = pmc_core_write_ltr_ignore(val);
> > > +
> > > +     return err;
> > > +}
> > > +
> > >  static const struct dmi_system_id pmc_core_dmi_table[]  = {
> > >       {
> > >       .callback = quirk_xtal_ignore,
> > > @@ -1244,6 +1264,15 @@ static int pmc_core_probe(struct platform_device
> *pdev)
> > >       pmcdev->pmc_xram_read_bit = pmc_core_check_read_lock_bit();
> > >       dmi_check_system(pmc_core_dmi_table);
> > >
> > > +     /*
> > > +      * On TGL, due to a hardware limitation, the GBE LTR blocks PC10
> when
> > > +      * a cable is attached. Tell the PMC to ignore it.
> > > +      */
> > > +     if (pmcdev->map == &tgl_reg_map) {
> > > +             dev_dbg(&pdev->dev, "ignoring GBE LTR\n");
> > > +             quirk_ltr_ignore(1U << 3);
> > > +     }
> > > +
> > >       pmc_core_dbgfs_register(pmcdev);
> > >
> > >       device_initialized = true;
> > > --
> > > 2.25.1
> >
> 
> 
> --
> Thanks,
> Rajneesh
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
