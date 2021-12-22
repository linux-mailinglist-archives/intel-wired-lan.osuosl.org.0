Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 51FD547D3C8
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Dec 2021 15:34:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C714B410E9;
	Wed, 22 Dec 2021 14:34:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yWrB7bZ-gfOP; Wed, 22 Dec 2021 14:34:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id BCBA3410E3;
	Wed, 22 Dec 2021 14:34:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2C64C1BF9AF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Dec 2021 14:34:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2913B410E3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Dec 2021 14:34:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bJWaxMdRq8n4 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Dec 2021 14:34:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 85AB8410DC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Dec 2021 14:34:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1640183688; x=1671719688;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=As2KA7kxVevs3BUUrTcJEAcAlpx0oELG+bn9i7tAQPo=;
 b=PktQ/ix/1fHAvUUzPZ+vD7wDbU0Q07rry51TfKJrzUMg2mMmmNtlZz1C
 VMfJQAwXOs9ugiNYsL9306YeKkKp2tVqdWTlzcvvROE+ZZA4txjEZbxJS
 tH4hEpEcqwUiHXajH8AA0WoFr7AGC/43dothSV7NEcZVUQkepbpjlf/2e
 oEc4E3HcokSN97RfVdcGek3f30N3mHllq1kMPkINw+If+XRS7IcRxGedy
 7YECotNvIWkE+PL38KgAK3VdkEgMa0j28Xdj2m5gHIcaBRBbFKWjPWcCc
 X5VGTHR2HWel3DJDEZCy27B1iM78YTqNrzjExZwZP7MVR6fqzKGnzJ/SA w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10205"; a="264826439"
X-IronPort-AV: E=Sophos;i="5.88,226,1635231600"; d="scan'208";a="264826439"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2021 06:34:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,226,1635231600"; d="scan'208";a="522118085"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga007.fm.intel.com with ESMTP; 22 Dec 2021 06:34:44 -0800
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 22 Dec 2021 06:34:43 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 22 Dec 2021 06:34:42 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Wed, 22 Dec 2021 06:34:42 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.170)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Wed, 22 Dec 2021 06:34:38 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XVZi54FVaVn8v8K8aX5tnS6VBmosKglgTT1QKx4xW31tLArzAddSb5F5r3ZxsblDEAbtSB1tyxovoy3+U0FzgLiXaxcXSS+uLQhRGC918QsZ3vWcfQjIiJ2K5L9dcP0QKj7E656npdTxhWseRs7HpfdMos3PD5N5TjuewAv7tytkuoaOw8ERvo1bXf4cw2M9CWOOmRHNGT9bffY7OidyBrLPE2RFBa6ucf34E9gzdHFH08vyNt2MozmDrKGTaEmcul8DJUFTxhuTcBamduj91lIsGVwCUUHxQh7le3lkVo7x0ReeZeSuZfkPSx3frvuk6IUXPFs0RgLe544OvB++JA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CmEfWk6OmYlC6+kB0nqjedSzuxSOvPDMa+25ldJ6aWw=;
 b=h7+3JI19p0o8Ph4XC88Btk+CyFURA09AnpL6OC7X3Tzyjw3aUE8DFoj8XJMcfVIQienN1+CiHOCVezExJfL/pdGd2RzkvOoE757hGHhZACd8wqViqZAAO34EHZ25aersCTxTm/rWWE1sLX9FhCzHO9rzcOI1nGkh58lI7iM/wIedvhhapL1D6dVwINCx7RuPkCejs5kfePDtY6OyQE/xcPLdawqw2BFw7eKuyu0YV98UyY/OAFeFHV6ZrWyryO802PlInTQqBtB9wBDClBLfTJ0EfZBs193kXYpIkAizT5+1DCTS+BO7757XDKMKcwRNcqpReG+xv2laz0MwelI40g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by BYAPR11MB3751.namprd11.prod.outlook.com (2603:10b6:a03:f8::31)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4823.18; Wed, 22 Dec
 2021 14:34:36 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::bc02:db0b:b6b9:4b81]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::bc02:db0b:b6b9:4b81%5]) with mapi id 15.20.4801.020; Wed, 22 Dec 2021
 14:34:36 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v5] i40e: Fix for displaying
 message regarding NVM version
Thread-Index: AQHX7ORSq5VACb3J+EyzvGptLKDa26w+qC7A
Date: Wed, 22 Dec 2021 14:34:36 +0000
Message-ID: <BYAPR11MB3367CD7AD31A5FA68E6AC162FC7D9@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20211209100435.14378-1-mateusz.palczewski@intel.com>
In-Reply-To: <20211209100435.14378-1-mateusz.palczewski@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ecf7d118-8545-4184-ac64-08d9c5582de0
x-ms-traffictypediagnostic: BYAPR11MB3751:EE_
x-microsoft-antispam-prvs: <BYAPR11MB3751037543F88B8A608CE3FBFC7D9@BYAPR11MB3751.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: hY8F2zqrk6LaFn+mszMoTaUoZE/NJDjY214L7Wrg4FYVQdbvF0xkfJGGZXUmxqoesTKjl1KHnnmV4vMazwktuNwbdHXD/4wLPv16kZIcHSFJ2nXJqKTdq3a7gRxIyt5vqVOlwFibno6+PSba1hMVnWXchD65YtEVtD5zslZqth55GItuT24D0D/IXF2bVvwSfjcXK6ZB8yNNjl++l4yCNss7415Xxn7JH4qndkEtNPks/mmQUMPoboNMoGGfAhvLaNMiNxLbGVu3+Fk7rizhvhSV5WuW9rE+ueqCMDIkpdn6xOkOR3M1A4v+fsHYvmn/B9OGg09QRapouJZlDSYUw27Kb5QPDyFgPut4P+rHiXPiwqtwwqw+om7VVIpLO72FqkoBXWdpYT3/xL5pmDmkZ+MwDaLI7GHlxikJZssfdQqTCexOgYvPHzqoUtj0pq06Eg3+u3TxnREFoFTIGYvrTA99kxy1bziJot1wR+XJUqnUMK4xuwb2qg5Yy1qU2HJk70TdiqoNqBPhJYIXzoiXYp7R2UiCATM6LR0hX3mAtAmBqOhNQw82P5p6unnMHPhaoRNiqSbPkp9LtEQSZmTl7f5MFssMz6jDwr3PSzK0mrgdQXf5280tTttZAO1SAYknV+qCt0468OTJ8sGry2Sv2E0m4o4eRNZzUMN2jWN1JkUfydh9fIOzP3Yo0Saw4likMrBbLOQeSMuR2mFRQmRzoQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(7696005)(186003)(15650500001)(8676002)(38070700005)(33656002)(8936002)(52536014)(55016003)(6506007)(64756008)(71200400001)(66556008)(107886003)(82960400001)(122000001)(66946007)(76116006)(9686003)(316002)(2906002)(83380400001)(4326008)(26005)(5660300002)(508600001)(86362001)(110136005)(66446008)(53546011)(66476007)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?3U47XS/ZnfETMo0R326L3Wn2lBneImibyHIcBWxrRW4INU+Z73WQiU2eKjOC?=
 =?us-ascii?Q?WERZYhpNIJKXWAkCy+wk3WjkScuTloVKPhaxSlEhO+AWi+KIVEp+eoHmBQ1j?=
 =?us-ascii?Q?G3/GIo6POGSOX+vVLBK/r8z8uztRD0froe2MKoO/F9Cn7R7JqF24bLwC8j45?=
 =?us-ascii?Q?odS8J7Z/0X8y83rEzzb3lOznA3a0Jc2CunXuWUexK1NCmMn4rILa9Na2ztFI?=
 =?us-ascii?Q?P5XmKzXI9hS2OS7RUAQ3v6zpXc3m5U7KTrl1e5IbYDvlCqfW8/WUGXB0V/t7?=
 =?us-ascii?Q?ST5TOMlU0unYeeJcvhwVPzwvS0i6Vv6UMbbqCRlzEa5YjwR75aLulwyqeXw7?=
 =?us-ascii?Q?X8Dp6NoLT4NUC/TFnDIRfxS9mT4pvds/H6SnA+vbRe2ODQ3UNk0ZK6TBsf24?=
 =?us-ascii?Q?BD3S9LumFRbLLfwly006wLk3CnWAG1Jrab4ymAqJuiST223FPJLqP3t6MS7q?=
 =?us-ascii?Q?ALIjPC0AxZ2uRmEKxq3Gyw4OqIErKPVWXIwey8Hc43qgQo4IEQIATdOQHxdl?=
 =?us-ascii?Q?leJid+fSeK74wkMVlviS0KdyL60JfcWYQDloX5enPSwIG5Iimw64xTNsU8Ry?=
 =?us-ascii?Q?SLeDHjdFF7MUClOJLbg1rX2oqGBgwWHwnju7boDzvGQ1vx4kPybeCmEVV4Sp?=
 =?us-ascii?Q?riFRjYbT27GgEjyyMIjLQH+wHGXgftNwmGzeGm5iU/cGtJ67pQjhYEHyghxj?=
 =?us-ascii?Q?9zVZwD9USc4WKvuZZYWxBBX3qV/BnKlZUAF9XKhKgbnAWAY9j02/n5xuaD9b?=
 =?us-ascii?Q?+o532RAur1g8S4muYc6+23So1HuGwolyDgys4+tFxJxrapcRxMSBRxXBlcgh?=
 =?us-ascii?Q?9zDzAZaeCDGrvL11qhHBj6t7N5hBFyzqfK5C7aqNQ73v0xyvmXkoRAK6jucI?=
 =?us-ascii?Q?t+HKirKfyc2rat7db5rV3Z5hea9G5E82unXt6K05bfIpgEMhBAwU6KLrxbVc?=
 =?us-ascii?Q?lEvuH3NARdhZ46m+m4JFrZEaHLZ3VdUS0HT2CiH2A6/PkYtus2lNc+6N6Del?=
 =?us-ascii?Q?lBdoc6XOuetz+c7ntnpMiXU+qbgDDAFK9jlpDsYs67oJ+/glWQ8bN2+owmcR?=
 =?us-ascii?Q?QJ7tgx1LytnL5CFgyFEIT/HhJxkjE+/gBax1fTopsTMucZDQ6/0gsnTCmnWa?=
 =?us-ascii?Q?aoZKf59C8cpZ1wFPAIIgv5gJkB7EOs8twSJxyYnqttvqx3ULCoBbHlULvHU7?=
 =?us-ascii?Q?c7XC/5UKwlp3FA0cu/0T1dZADqZW+6tshBp1cXkdkmvHly1EPFWek2PuogDA?=
 =?us-ascii?Q?WSU4aSuAMn3xeuBT7KOAohtklk12nCVm+Fya6v3JiHHEyIFkMniWPOJvSUDz?=
 =?us-ascii?Q?Ae6ExKpLLrbuNI8AHcu8+htY1adLIdVYWvsiu+CYsIibLEchET3eFniX8F50?=
 =?us-ascii?Q?EDNxjkde9ATuQ0bEtRyG0tu2nmmvKbiMkCNYKzQRR5JKwTBUdgShredVNjDc?=
 =?us-ascii?Q?srMcWn6gN4c6D3qT76aAYdLunxV6T7CQLHBb2nvcdvjes5wgOy54DBM/sL1u?=
 =?us-ascii?Q?YkmZi1jNAawkwbECgHaAuYN8msF6vusOrcteoIAFxd1fNew0dtA7woXNGtu+?=
 =?us-ascii?Q?c4Y1Ztg2LMIQ3ejwW71gcAMrNGAzdL3jX7sPROXpqOU/WWU5+Y+ANpcgNBQp?=
 =?us-ascii?Q?YTvr+CmvpsVgL4NNJd5S0Ik=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ecf7d118-8545-4184-ac64-08d9c5582de0
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Dec 2021 14:34:36.5878 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tI2T+wb4xtnvbTfpZ2WBV6cjnAKLdnFAh40veGWvHgisUpL41giO1n/cxVAam7j0LaPm/7rRNnPIIGNcqsHA/w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3751
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v5] i40e: Fix for displaying
 message regarding NVM version
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
Cc: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Mateusz Palczewski
> Sent: Thursday, December 9, 2021 3:35 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Palczewski, Mateusz <mateusz.palczewski@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v5] i40e: Fix for displaying message
> regarding NVM version
> 
> When loading the i40e driver, it prints a message like: 'The driver for the
> device detected a newer version of the NVM image v1.x than expected v1.y.
> Please install the most recent version of the network driver.' This is misleading
> as the driver is working as expected.
> 
> Fix that by removing the second part of message and changing it from dev_info
> to dev_dgb.
> 
> Fixes: 4fb29bddb ("i40e: The driver now prints the API version in error
> message")
> Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
> ---
>  v5: Fixed wrong formatting
>  v4: Removed the word "expected' as this might have been misleading
>  v3: Changed the patch after community review
>  v2: Fixed the fixes tag to be 12 digits long
> ---
>  drivers/net/ethernet/intel/i40e/i40e_main.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
