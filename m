Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id DA1E19DA403
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Nov 2024 09:34:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id F0F364267E;
	Wed, 27 Nov 2024 08:34:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BXIjQi1qvxp9; Wed, 27 Nov 2024 08:34:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E9E87424A3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1732696485;
	bh=HsBGAG4abOkkJTGRnUPfiL+ttMhvq0ide9VJC4EmAQY=;
	h=To:CC:References:From:Date:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=7Kl0nV+BUGNsvVwByeBoEotgjKlrklYeIyEmUA8eJ9ahVfmNUDSBOQmng5cubjSLG
	 1Qyz/DphTHrqFGv0l8ZqDy9x0jKvrw9LO1cvO+qmNLll5ebMIbILNwsiugb1G+e9un
	 w8+oh7/UF6mPY06tFzqWrSccuXs6nMTXxJRXrTRvo7An1Euh+xqMCJnCkwpN27QTzh
	 Vb96JIxtFvkDqtPyPchsZsiLmbBK/XONTYUUVx2h1NkoAd45xMINh/G7Ss7KQ1G3vs
	 aRV5Y04JPBBdOT5wbPxhdm1FqybkpRrNnTU35kpN7l7Mg28Jc5rEgO6/wRBbwZqsnO
	 kxkSkAU5b/kMw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id E9E87424A3;
	Wed, 27 Nov 2024 08:34:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id F1F5ADB3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Nov 2024 08:34:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DDC5C60717
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Nov 2024 08:34:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9aEUCCIW8wRC for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Nov 2024 08:34:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=avigailx.dahan@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 559EF605D7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 559EF605D7
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 559EF605D7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Nov 2024 08:34:20 +0000 (UTC)
X-CSE-ConnectionGUID: 6Do7AIcNRXatH0UA4YqT6Q==
X-CSE-MsgGUID: WC+XSzzqRiWFAL6nMHNrvg==
X-IronPort-AV: E=McAfee;i="6700,10204,11268"; a="33036067"
X-IronPort-AV: E=Sophos;i="6.12,189,1728975600"; d="scan'208";a="33036067"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2024 00:34:18 -0800
X-CSE-ConnectionGUID: Goe7L5mcTMSsXIL7rqO1fQ==
X-CSE-MsgGUID: ZJTT6a7cQNymVzVGEjeK6g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,189,1728975600"; d="scan'208";a="96801708"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Nov 2024 00:34:17 -0800
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 27 Nov 2024 00:34:17 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 27 Nov 2024 00:34:16 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.171)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 27 Nov 2024 00:34:16 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tPQbG89m3DRZmQ5jrcb7zZEWMOdKI6umf3KGwd0VNhNn+wu+5OP/qS+fWFhubmxv65KtDwPP0gTSUXlvqwePpajgeVW0yXZZ8u8DthjSaRz7YpByNafajlmpkHlch1sJFvmYdQd1NVrwtgNOhk93uHdNwVo/jOvQeHdYh3gW0XCbJDLKtM0GONTDq+L4TG6jLif7hGXTsmRAdH5GW88CdBaoexw3C6I2vXvRrtfzSWtKBLmV2zoL6qPpI95fYHHZLuc5kRW1+EzS+CoQFy84eebfNivWEAiG5QD2gBtDlhbp9I8mZS8/+83qKvziK7bXrnnIfoe0BmyenMh5aRrfcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HsBGAG4abOkkJTGRnUPfiL+ttMhvq0ide9VJC4EmAQY=;
 b=dc1It/c7ayS/JhhuyIzvAQlCqNOiWGGUj2PjYNgq7BcLCfXPzeNb27Sdmz1EDbiRJ/hTojki6czWLhHyO/zvQ21Ti2A3dL/5Es7yLfIQ/xBpTsy5Q5smWYog8hIxiT61skqyLaS2QIZy77X2b+cZpnRXD/LqWH2F9a9wdHWO/mcLyKJOyNGwqttbbNLmkGzMWI0WQ4VYorFwy7F1KXv+c9iri+23hlCI4UEWWgaYq/UG3JHUrL4+cPxV1ht84nmDWLvnCVj4sEp5dFrr9kHJCbOCBNHxC7rBruZmx/ftsMXf05wytWqfc01L+/4IbngSSzo01afYZggG0QdMl+iy3g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BY5PR11MB4194.namprd11.prod.outlook.com (2603:10b6:a03:1c0::13)
 by MW5PR11MB5812.namprd11.prod.outlook.com (2603:10b6:303:193::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8158.30; Wed, 27 Nov
 2024 08:34:09 +0000
Received: from BY5PR11MB4194.namprd11.prod.outlook.com
 ([fe80::9d17:67a6:4f83:ef61]) by BY5PR11MB4194.namprd11.prod.outlook.com
 ([fe80::9d17:67a6:4f83:ef61%6]) with mapi id 15.20.8182.019; Wed, 27 Nov 2024
 08:34:09 +0000
To: Song Yoong Siang <yoong.siang.song@intel.com>, Alexei Starovoitov
 <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, "David S . Miller"
 <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>, "Jesper Dangaard
 Brouer" <hawk@kernel.org>, John Fastabend <john.fastabend@gmail.com>, "Tony
 Nguyen" <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "Eric
 Dumazet" <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, "Vinicius
 Costa Gomes" <vinicius.gomes@intel.com>
CC: <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <bpf@vger.kernel.org>
References: <20241118041545.1845287-1-yoong.siang.song@intel.com>
From: Avigail Dahan <Avigailx.dahan@intel.com>
Message-ID: <66dc22fa-4a57-c52e-33e4-e2047c4e7229@intel.com>
Date: Wed, 27 Nov 2024 10:34:00 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
In-Reply-To: <20241118041545.1845287-1-yoong.siang.song@intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TL0P290CA0002.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:5::10) To BY5PR11MB4194.namprd11.prod.outlook.com
 (2603:10b6:a03:1c0::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY5PR11MB4194:EE_|MW5PR11MB5812:EE_
X-MS-Office365-Filtering-Correlation-Id: 5fce0c55-c739-4066-ea59-08dd0ebe42c9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7416014|921020; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?MHlvUzliNDB5MktZZWd4b3ZXMDU1cXhxOUk5ZGhSWGI5NTQxZDJ5VHRGY1BR?=
 =?utf-8?B?YUNkMmsxRVc1UjRnWGVyamRGQTJtQXhCL0Y0OXlJdmhYTS9GZjNTVWtQNmhS?=
 =?utf-8?B?azJHQUxiSFBtVFNLdDBDbG5DUlVLK2JuVnpGeDRmL0Q0V2NqaE1ZeUtlU3ZQ?=
 =?utf-8?B?Z1A4aVZFTGdBY0FrSDcyU1VQaHdvNVhlU1Q1SjBBb2hnRjdhUmRFTDczb0Rz?=
 =?utf-8?B?aUh6b0dpdXg2UG90dzJ0cE5NWXUwOXZjY2Nod3JTdGpyTm5WVEdvV2FCejFU?=
 =?utf-8?B?NXFSalQwVVdVSnNjU2ZFdTVtUzNqTlpPV09YL3V3bHBPZGdlY2RJQjJVaFND?=
 =?utf-8?B?VWE3MWVUTWEzM1FIcGozZ3BONHZRcHZGMmkzdmUwMTNYclZoK01ORGRFUy9z?=
 =?utf-8?B?aERodWhPcGR4NjZrOUg1Rnl6Q21YYUJUZ215WHpKYUhFY0l4Y0gyT0NmRE8z?=
 =?utf-8?B?TlRnSTBHZVlHM3ZkZWQ5ZEc3OEs3VWkzcWplVitkMGNEUDgzMFViRlFFUk84?=
 =?utf-8?B?V2k1dTExQkFtNnJoTWxEaEQwWFdtbEJWQUhKUFVaNmx0K3NVVUlmRitFbVNi?=
 =?utf-8?B?a2xCZDRWSCtZb2Q1aXJpY1RPSyt3ZjFkVldNamNDbThtcmdhN1M5aXQ0QXRI?=
 =?utf-8?B?ZjV2VnFoaEdDcnhqWkI0ZXNOa0JYcDBQRjBnQUFKakZkTzgvLzRKRDVpcTdD?=
 =?utf-8?B?SVlleDBpTGJ6ZVlvVkJPUnIwaTNlVVdkMHRxSUtFWlFOYjNxUXZ5MGc0NHEy?=
 =?utf-8?B?MHZZZS9LcmpJeWlxY1Yrc1RQNzdwdEVDQVQ3UEJJS1QyaTlTaEppcjZlV245?=
 =?utf-8?B?aXcyUEZVOEN1aldJdllvdlZVWDdxaUxBUnpGaVUvWHNBVDl6MmhLWlkwczRG?=
 =?utf-8?B?MUI0V0ZTTjM4bkhSWEp5Mm1DWHl1cTZjUmhZT0c3OTdETXdUUkhXV0tYUi9z?=
 =?utf-8?B?emFJOFhIODBRWkR3aS9jY0VIb2VSQ3p5LzZjclc2R1FXd1hlN3QzVXNkVE05?=
 =?utf-8?B?UnA5T3dsQzVaSTdNZE5mWVZjc3FlcjhUT3ptQ0tSTHdIZGxYenhLSmNmaGFT?=
 =?utf-8?B?QTZHS3I5M2wvSSs1ekc0NVAvQ2Z3ZnRZcHJ0dXIxMUFBNC9YYkllZ2RXWVlR?=
 =?utf-8?B?bWVyVG9rbHgwQitkMnhEQTd6WmdQbGpFWjVpc1pWVDFZSUkvU0x0cmdrb3Va?=
 =?utf-8?B?Wk5ZY1U4NDdndjVURHBVSHNtL204VUMzTVlFTmVmaTh3dVpaekxaQ216eks1?=
 =?utf-8?B?dEs0d1JyTWNNdlpWdmRFYkNyK1hiWlRMMUl1ZUR4QnhxOGNvK0hjaUZXVk9u?=
 =?utf-8?B?U2Z3dldIOWRVZm4vV1NVajRCbC9wVGVFd3k4NnRVczRsZ21ITk9zMkl0bWRr?=
 =?utf-8?B?MUZkSGd2RW5rcThUSEJvNFdPNXBYOGFZcTR6RVlFNWcxNWZXRnJFallpN3Vy?=
 =?utf-8?B?cUVZSFhOcG12cmQyd01zMGdqY1YvR2t4dk53UEtsaC9MOXdNRW43Q2VvUjgw?=
 =?utf-8?B?RkkwaVNQUFpNeEx6WlN3NzlWV0VKeXZiTldmc3Urc0NXU1ZTdTRVWU50OFpo?=
 =?utf-8?B?Vld0aTVsbFI5L2YzUWNyOHV3Q3QwcWlwKy9TZW5QQjRYWGsrL2MyVzgxY2h3?=
 =?utf-8?B?S0s0eFg1VjQzNW1iVHhkN3ZlMmx0Z3dDT003WFN1c3E2OGwwYzh2SDlQOGVH?=
 =?utf-8?B?Rk81TlVkQzJHZURneklXNHQ3djhlaURmTUR4VkROcjVkZ29laTVBc3hoUXpN?=
 =?utf-8?B?eExZMklYUFIxdStnMUR3ZlFXdEFjYlp4WXJRYndOWDFaYU9hNzdhbTg3RXla?=
 =?utf-8?B?c3ZiYUhSMlAwd0J5SmpyVWdadVhJbzA3OVhOVTVJU0ZXOGJUSDgzNnBHNnhC?=
 =?utf-8?B?YmZjaTZVcFQwM3h6WWJxZTIvTUUzSjJzT2RhRXRSMS9aelE9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB4194.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7416014)(921020); DIR:OUT; SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QktGaFJBcGgyZkw2UCs2TXBDMFE1OG0vTDdvZDBJQmhJQkpEblRBV3JFSU0y?=
 =?utf-8?B?YWNpUUxEanNXV05aNnNLbDRmZ3g5ZjcyTFQ5ZzlTSDdsT213N09tSGY0ejh1?=
 =?utf-8?B?L21HU2lkQmNzUGpQdi9HV1MyZTNaWDFHMXlWM25QWGJPWVZkSTlnVGdxUWJw?=
 =?utf-8?B?bkZCQ2wrV1BGS0VmMG5IZTk1RGVGeUlaa21jUXBUNGRhcWRHdUxtOXNRQmJw?=
 =?utf-8?B?OUZUN2hsa05wWDdjdjJLTHJGanFxUytNOHVTbFNmVUF4dnJWVHdaOEx5TFB2?=
 =?utf-8?B?cWpQSmRTVlh5NUI0c3EvSG9NTDNDd0d2T0JJdnhlMERWYlEvY0w5QklvQ2NQ?=
 =?utf-8?B?RjBCMHFHZnREQXZBMS9BYWd5OFh4SkVpS0RSVVBQNysxRitTVldJTHlQZHBi?=
 =?utf-8?B?RDlpWEtQMHFTMmptM3YweGtIYStRTUhwcm5MSUZ3bDhUYW1oZm4wcHN3czY2?=
 =?utf-8?B?QVRrUlV6VUlxSDlBM1pHTG5nL244UTJJSDluU3lvY2psTkNKTWdGTjFiSWxQ?=
 =?utf-8?B?UEJBRTNCM3dDSDBjdzhxYlFIbGNhK1BOeURmcDlzeGtvalFFaElPc3Y2Zm9k?=
 =?utf-8?B?d2tQR1VEY200dkJ4eUF4YURCcklQTGxQVEdVamppUzVldEpoaTlnWjhTWUZN?=
 =?utf-8?B?Mmt3OG5aRFVXZHNJVUtESC9sN1Bydk1UeFpyUHNVYzU3cXhpeUsvblNXMzdx?=
 =?utf-8?B?TE10UnkxN29aMU1QRk9RVmRWaDZsK1IxTU5nN21sdG03T1h6Sm53WXhEcWNU?=
 =?utf-8?B?WURCNDErN1NCRDBsVFRXbHRpK0Roa2xtNDRPM09RcFREZTJlVER0dXpKZko4?=
 =?utf-8?B?Z0wvZDNsb1dkSmJxczhhbmF6elNFMzN5dCtHY01hZWdTTmdYUjNLY1JydGRB?=
 =?utf-8?B?MEVjSGNxL3NVKzVsbFFFRS9qK2NEVVgxZ3BuSVV6REdpR3F6b25LNEZGVWNG?=
 =?utf-8?B?amI1ZUUxZjFWWW9nU2JtNVhPZ0doeFJISWdCdmlaK0xIaFROd2J1bjlyV0Jx?=
 =?utf-8?B?ekw5cXNHbXRhM25ZNXd4MmNCY3dEOCtDTlBXS3h2WkUwSDhQc1RHL1NyeDc1?=
 =?utf-8?B?dEo1WStwdmJNYzBGanExQUVKb1FCdFl3Qm9VaVdscmdYVUM0cnRoTlNiaERm?=
 =?utf-8?B?a2hWa0RrWVJYcVZlU0k3cENMSk9Jc1g3NTJOWjNVMUxXSWo1WWp1RklJcktE?=
 =?utf-8?B?NFBSTUJuVDBnd2ZyQlBTUGUrTHY1Y3ZKc1N1NVRIak9BR0FscG1DR2QzRDVi?=
 =?utf-8?B?d1Exam0zcFAzamF3ZlRQVTRJdXg4bnR3MkVOTzVvMUxPWlZXdUhWRzhWNWtq?=
 =?utf-8?B?K2R5MlJubUN6RUM4ZVlUVHZvMDBBcEJUQ3VMVDBraUJLWUpqRXZuZTREK1RV?=
 =?utf-8?B?UWR5dytOYW4xMGErLzdqb096bjV1bzBORm5idEZXdzhlb3VUOTd1NEQ3djhi?=
 =?utf-8?B?Y2tpUTNSZzlQYXI2RFR2UjVROTJCY1p0bmVCcVA5TzQzRFFrN1JzUTM5Zmo3?=
 =?utf-8?B?SUFSblZLd255UHdRSWF1TTF6NDRqSUhsOHlWbEIvSGdtOG1RRnR6M3J6b3lP?=
 =?utf-8?B?djRsNGxxdDY1Q21sT3AwQ0pnOW5GUm5UdkdaT1ZlWUZIVlRtenNPeTJtOGNx?=
 =?utf-8?B?VWFQUDFnLzZ5d0lXY0xXQ0hxRmRhOXk2aFRYTUVad2gyQmE4K0lQR1J3ejA2?=
 =?utf-8?B?VEJuWi84QTdQc2duT2NiR2RvRnJibTl0NnRlTUFyTUNFZDlOckVlRDRVTWVP?=
 =?utf-8?B?REU4OXJLSDRXNDZ3R2hhRTdOUW1sZDdmWkpaNzNhaE9JaDFwU1QxbWVsY1Az?=
 =?utf-8?B?bkF5ZnJ6SWR0Y01adFRqb3VjdFJyZTlFNmptWXZmOVJkby9JNE1SRlBaUVhK?=
 =?utf-8?B?bk94Y2NoNXBDRFFBdGN4RUZtcEVWOVNnZC9xNmRDRkF6Z3lFSUhLVnVia0Fj?=
 =?utf-8?B?OHMwT2hiVUhZK1JWUHMvK1BkWlM5eHpJQXo1SVlSdk5HSE84QmZJZTNTcGtv?=
 =?utf-8?B?eGp0aHhMS2pEQjV4ZGVSWUswdnFhRU9EZzFEd3ZmUGFPeWR4VnBRR1pyN2xB?=
 =?utf-8?B?cUZLazBwUjZDQ3RvMTRtVkduSjJKTFAvSFZEREFIaHd5Ulh1TzNhM2twOVU0?=
 =?utf-8?B?N24vYVVwc1hoQTJzQU9OWnZGZDNNTFByVFdHYnlnc21Pc0JhQ2RER3BMS3hE?=
 =?utf-8?B?OVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5fce0c55-c739-4066-ea59-08dd0ebe42c9
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB4194.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Nov 2024 08:34:08.8263 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wIS7jDVYnyiRX3EVj/5Pt8hJZ+1vnPuJigB8LVPyq++UhtrzcJTZDoVjOiG6or/pR74L00YluXjIEyez6/E2Ex5z5MFZSZqGzMsv/j4TnO8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5812
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732696461; x=1764232461;
 h=subject:to:cc:references:from:message-id:date:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ARK1XNtOFfQeie1RPRMVZFm4lfRmSvNnyKRCBZOu+UI=;
 b=mJC1EYNBdXb0vXot9XYoHyylBM2zrDtNqklTiNJ1tvcT+QfEftQRMHLS
 miwfCBZTuausN+iapm3noPCAttQjyRopv2FXP0jXkY1Q5pTKpDAdIwovi
 DuiXlDrAMt9A1Q78TNiH5sFU/aAfLMhBqYppiCLpv1r5ArRLURb3C5gbZ
 ajH/86Ul7Iaa5BVSWEXmbCjAfK25Ir9N7N0k3N4KOVP5w5MrvUjqy1isJ
 eObdFzHeWXWfIIwfr/tqWQawAEwvCckezF+L7pzh3SlZSR1AB0kaSUV3T
 pR0IN5t2BGp/Z4VuN3I1OFcIstlKg/GRVcftMM9PiwlxeHe9VuRWWAtfF
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=mJC1EYNB
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 1/1] igc: Allow hot-swapping
 XDP program
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 18/11/2024 6:15, Song Yoong Siang wrote:
> Currently, the driver would always close and reopen the network interface
> when setting/removing the XDP program, regardless of the presence of XDP
> resources. This could cause unnecessary disruptions.
> 
> To avoid this, introduces a check to determine if there is a need to
> close and reopen the interface, allowing for seamless hot-swapping of
> XDP programs.
> 
> Signed-off-by: Song Yoong Siang <yoong.siang.song@intel.com>
> Acked-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc_xdp.c | 6 ++++--
>   1 file changed, 4 insertions(+), 2 deletions(-)
> 
Tested-by: Avigail Dahan <avigailx.dahan@intel.com>
