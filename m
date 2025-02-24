Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CB108A42FD2
	for <lists+intel-wired-lan@lfdr.de>; Mon, 24 Feb 2025 23:10:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 747D560E16;
	Mon, 24 Feb 2025 22:10:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JifEwiIA_UcY; Mon, 24 Feb 2025 22:10:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B664060B19
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740435025;
	bh=x7ypb3ZfvSBqf40tSRxR4VvY0q7acUd3nedQtVxvJME=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=FjpxrN0+aRTfAhCsXRVSKciArMp1EcFJrfTiYpqn24aysjl3k71wR6WKgY/uIqBe8
	 stoo+ILdz6U1/5O3d7RPwnI+W499WjVMGh8i9hh10/Uj+X8jRCeE80xBgHbrFVNCGc
	 C3V3mXXzIaZLBhJ8nMTwaXkCSqQxINrCBD7TFUgMuQ8acFNYs16Wq78UMzTzk6kvNi
	 96b0XRXtbFG8HdVcYsQHq4mipxFlOZdll9lfUcSPh7pLNPnAejR3QcHW1alTF6C7QR
	 KYddE4w9MoFWhRFUeqFXyQrwa8CPXjXkJGUFrHGE6U6qQbQRCQVT2w5KSGxf36k9NE
	 8QlpDtjT1+YPA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id B664060B19;
	Mon, 24 Feb 2025 22:10:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 89E2794E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Feb 2025 22:10:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 59B74405D1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Feb 2025 22:10:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZT728Yp384ia for <intel-wired-lan@lists.osuosl.org>;
 Mon, 24 Feb 2025 22:10:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 2BA3340550
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2BA3340550
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2BA3340550
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Feb 2025 22:10:21 +0000 (UTC)
X-CSE-ConnectionGUID: LGqW73iXS5apxi8HCll6Wg==
X-CSE-MsgGUID: 1YTUDX3QQOKFXcKrci3lGA==
X-IronPort-AV: E=McAfee;i="6700,10204,11355"; a="41095093"
X-IronPort-AV: E=Sophos;i="6.13,312,1732608000"; d="scan'208";a="41095093"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2025 14:10:15 -0800
X-CSE-ConnectionGUID: eT9jzc2YSDy/2EVFf9AufA==
X-CSE-MsgGUID: q1mAWKjtRTyOny0m3g7r1A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,312,1732608000"; d="scan'208";a="121124467"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Feb 2025 14:10:15 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 24 Feb 2025 14:10:14 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 24 Feb 2025 14:10:14 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.44) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 24 Feb 2025 14:10:13 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=oZKRcmJJ11pWpeuAPA4KVQcv+G3r9gLkHUeTdzSYaXVyWvmwdBnIOuRYqlUbW5Vb7pj6C3HP/7LohJv55odDeOT9/fQFrywDzZup9rHUUJtHzB0crbXooR+5KQFikgSSTNv+AhSCWDXMhCIAZIkvnnwnE/IN6bHrmF7xNJ4QkhUbh5XdLAPSV36BkeG0rrSvi7gGpH1kTA8Kq1/jXIBxX/el22RrzpHyzzrS6v4+OzslUHsup8l192OwCLcrDjvSImydpikP+u+lYZDeMTQ/0+fMYPa6th3hkjKBfXZV0SBlIYlDk8gMIkYos1uEqc+955apbqt69Ynweq9E6Y7hYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=x7ypb3ZfvSBqf40tSRxR4VvY0q7acUd3nedQtVxvJME=;
 b=WQ5b61pov9jL8NrPb8ynCLh+J32NmVFDMmg+4gOxkHGAiLPAzqE81uEri7V35FwdRkQz43lMKZwRjk96Z4Qnj+OcRSUm/sau1ji2tqdw5ao12Ed8g13Oyl4b/OGuKwRJmSpGN/3ab8wmRUpWnsEENMSmVShh+e/xFjnciRBashxMpCYLyJGxNo6CYbfP1LXJK0IeQKN9krqFZnUsxagyBKJdzF1LcZMZe4zlJ9FzGY7Ycv3ygpRvDc6nvuMhfIY6MSNAlYfiTBlNT20S4N83UiZ67+y5wReg56btDf7KKScrkeZD+Xc1b0ROlyClncuJvalPDJCOEbZJk1/qw+OylQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by DS0PR11MB7997.namprd11.prod.outlook.com (2603:10b6:8:125::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8466.21; Mon, 24 Feb
 2025 22:09:24 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%3]) with mapi id 15.20.8466.016; Mon, 24 Feb 2025
 22:09:24 +0000
Message-ID: <364fdb08-5666-4028-8593-bfd921cee2c7@intel.com>
Date: Mon, 24 Feb 2025 14:09:23 -0800
User-Agent: Mozilla Thunderbird
To: Jiri Pirko <jiri@resnulli.us>, Jakub Kicinski <kuba@kernel.org>
CC: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 <intel-wired-lan@lists.osuosl.org>, Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Cosmin Ratiu <cratiu@nvidia.com>, Tariq Toukan <tariqt@nvidia.com>,
 <netdev@vger.kernel.org>, Konrad Knitter <konrad.knitter@intel.com>,
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Paolo Abeni
 <pabeni@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 <linux-kernel@vger.kernel.org>, ITP Upstream
 <nxne.cnse.osdt.itp.upstreaming@intel.com>, Carolina Jubran
 <cjubran@nvidia.com>
References: <20250219164410.35665-1-przemyslaw.kitszel@intel.com>
 <20250219164410.35665-2-przemyslaw.kitszel@intel.com>
 <20250220174512.578eebe8@kernel.org>
 <wf5ugq4h4lv2uic3622xurjbfwf534gj2jx6jbhaxoncingb3z@ceo4xkikjbdn>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <wf5ugq4h4lv2uic3622xurjbfwf534gj2jx6jbhaxoncingb3z@ceo4xkikjbdn>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0303.namprd03.prod.outlook.com
 (2603:10b6:303:dd::8) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|DS0PR11MB7997:EE_
X-MS-Office365-Filtering-Correlation-Id: 600012e1-4ee6-4f19-ff91-08dd551fe597
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|7416014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?STBiRHEvRlpPZXdzL2YxUy9HcmpKanczdEVlZElkUWVPckZ4RVZURVZhVHkv?=
 =?utf-8?B?VytKR3NScjVneHpaKzVmVnVFRFl3YlMrS2N4WXgrMWU1OG5Fby9BWDFLNXJI?=
 =?utf-8?B?cFcyM0JoRXpGQ3ZPbUJhRmlNcXZrRnFWMUtvcFZqVEszUjk1OS8zakl3RWdr?=
 =?utf-8?B?RS9zaDBETXF1YUluZmJIa0t6NWtlNjBuK1NwTkdkbEVVRjBtdkdUQ25LOS9r?=
 =?utf-8?B?bGI3dkJzNUpBald4ZzYxaklhRUtLK3M1ZEtEbm1LdjhJQUVFYnhvdHozb1VV?=
 =?utf-8?B?TzROdEZKd3NBTXZrM2o2a0lZMkQyRkN6TEZvM0RqZjA0QmltMjhFU2Jwa2M2?=
 =?utf-8?B?WGx5ZllSWnY2bVVKRDJFcW5KK0dXZXh4aGpVN29oMUp5QitpVkNLWFhIRVhN?=
 =?utf-8?B?ZVkwa1ZMWG1mVEZRTTJCODRJakVkWDd5ZGRyUmtlbnRCTjUxWmtuNWVUY2hP?=
 =?utf-8?B?ai9kM2NoNytQSklKeEdpUXQwWmJqUGNwMnhFZ1ZCckZPZVF1cTExQ2QzUWNa?=
 =?utf-8?B?WFNKL1BGcjZvZzVwdzZiRldERFV5cVVuVDhXdE5wT2o4U0FRYjYySzlOTkNu?=
 =?utf-8?B?VDdpRGdGa0hvS1RaUlk1MFdmUWdXSDJpMHBrVy8zVXNRNG10S3lWTlRvZ2kv?=
 =?utf-8?B?ZU9rTlNxdGxWaFBYTDRXVHdhODhpOXB4VkVlQ1ZLdDdyc2ZodnYzRWhVV045?=
 =?utf-8?B?cDBMSnM3YTN6dWJUaXdxMXZjQ2lRcDAzVkhrZkNrbEIrVDVYR2Ryb2xlWmU5?=
 =?utf-8?B?V2N6Wk9PclJBcDRELysrRWc1ZEgwcmM3MWhSemVBVGNoMkhscWtQOW9qRDNn?=
 =?utf-8?B?K09aMTBzRzdldEhEcUdZOG1pR045WFZIS1RaNWN3M3ZLL1FTc3FoTjl0R25q?=
 =?utf-8?B?YytmZXY2UW5HSHlwVi9qVXI5Y3NWb0Y2N2o5ZDUyWVVEZUQ4SGVoejZqaFlM?=
 =?utf-8?B?M096NnI2OTVEMkpqSzF6TUJzdHNic3ZQZzA3akdUYnZzaWhqSHdiN2trSUtX?=
 =?utf-8?B?THdnY0p2cFUxTUJtN1cvZUNCbTRHdUEwT25zdjVFZnI1RHNkZUZZYkhkOHFy?=
 =?utf-8?B?dndEaVcwQkhPcC9KQkd4UEJhZTl0cFJKb2NrTlZka3BPODlUbTRnbGU1OU5M?=
 =?utf-8?B?YVVCYUJmOWFJd1U4cjRGYnlWV3E2UWVtUEJUc04wbHc0djAvTUlFc2hWUU13?=
 =?utf-8?B?N2dlWlVFaVp5Mi9zUHJ4TElVNE1oWk5RNldtUXJCSmtHbzNXd1Fla1dCc05H?=
 =?utf-8?B?RjNzMzlVaWlEUGJoYUZwTUI4YkZpUURUSGpVSGdmc2VTY0QzSTY5VE4yR25M?=
 =?utf-8?B?RGxHUGZ1dTVhUWF5WHZBQi9pdDhZajhJSTc1WHJOdE5lclZGbUFhUEQzbEdN?=
 =?utf-8?B?VnJBN1Z6TFJZQjN5S0FqWmJuUjVjVm1FaDhNb2RQWVZsWkxTZEs0US8zV041?=
 =?utf-8?B?dzZWeGNHRlEyd3oyRU9hUEswVnJ0MlB1SWdYVFphRXd4dWZnYW9CbFJhZkp2?=
 =?utf-8?B?VWdJc1RBOHBQNUVRK0V4RC82ZFAyS2RPcEpJL2JXcVRPY2hQa2x2aDJjdFNO?=
 =?utf-8?B?Rm9mQW0veVUyWEZHTWZYdkZnZzQ1ZHVVV1VZd2l0SGlabDY3RGZlM2hoaW0r?=
 =?utf-8?B?NzE2Wkt6SE8rd243Mm1iSGtFOFY4cVh2VHRqTHpLZGU1Yy93OTg5a3NXMnFZ?=
 =?utf-8?B?WVVJRzZsdEpKMkE4WVJqaDhKaEZpa2NaMGxIRDhVSnNqWFpYOXcrdzN3VGVT?=
 =?utf-8?B?ZHcyYkhnUkVkUFRBVXdZVVlxQk42eFFWWkZJM21LK2ZIbW11UmZyQWY2Wlhw?=
 =?utf-8?B?L3A4cllqRys1V1NaaTByc1AyOXh1S0dzdWNrTDZ0TkZEL0RPR0ZXSS9RalNt?=
 =?utf-8?Q?BTiwkl4USyKQT?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QXJNYTV3WEVVcCtiRFd6UUpHNHhOK2dxRHk0b1BwbVJDL3pZTTVLZnJYQ2Rt?=
 =?utf-8?B?RjNmcllPSFFHNURQamJTdU92dGF5ZVVFdlEyMUpibVBTbVlrem9NWG1XSEh4?=
 =?utf-8?B?Q0tmVlhUbzRxaTlTTkxuanY0MzVBV2toVWY2VzNucGFoa3ZSNnZCc0hQdXg3?=
 =?utf-8?B?UEF5aGZYMlJSeVNXRjczK0I4Rnc2c2E3S2hvRm9nWTdlQmdYaElldUJPVk5R?=
 =?utf-8?B?SkhRTG5ZYzN3R3puZmxXNU5YQUJCdzlSNTN4emRxaVJBaThnblIwbGl4Y0Jk?=
 =?utf-8?B?QnY3VlVRbXVITy9FYmdqYTY3UjJNamREYnhHOXpHUkFXUHRIWUZoc25MUFZV?=
 =?utf-8?B?M085T0ErM25XcU4rTnowTnN3M09HNkFCZStpR3RZNnNiV1lvNlZndzBGSjRo?=
 =?utf-8?B?ckthODY0OWppK1BWRXNDc2g0akpIUTZ2N1pNNEtPNEhWejlDQXI1VFVCRWJT?=
 =?utf-8?B?TU1nSWNrYjV2eEIwVk1weHNaeTRwV29KOVVCYncwUDVhanBDME1DSTl1THcz?=
 =?utf-8?B?NWxHcDZ2eXp3eFE2QlNGSWU4TnM3dUtkTFFXTk1nMmZ4L05KUitOVklvTm54?=
 =?utf-8?B?a0VzQnpTK1RFK0xsR1diQ25JeUZpa3lqTTRtc1dFc3V2ZGIwbkt4dHkvV20z?=
 =?utf-8?B?WmhRcGc0N2cxSmJHQ0p4QUZnZTN0ZDYxL1pnenpLdDVpVGtHakJKZWpOSGZq?=
 =?utf-8?B?Tmsxemd0VVE0cTRoQmwxYjF5MmpQZkxuaDZTR1lWU3hUdU1ZUDF2SjhqcWZG?=
 =?utf-8?B?Nzdsd3FtbGt0SXZ1NVJFL3FIc1dJaStvUmxiM2ZZR09nWE1JelJUd05wRFZl?=
 =?utf-8?B?bkNwejhBR2dFVEN1ajFETC9WQlVUbzZ5aVRLeExTY1cxTXM5VDZQSFZIbkV2?=
 =?utf-8?B?cHMydFBHa21KZWdNTksyaUZHd0Z1OUVhNnM0SVBETE9HVGVCNzA3aVp5TUxs?=
 =?utf-8?B?WWN5cWJHU1NEY0Z6Mis4RmxEQVZjaVpHdjgxVFRGWnJ5TFpvQVJjaXFUckZk?=
 =?utf-8?B?cExUMitubmwxVjBZdmZVL2ZieHpHY0pjbDZ0N0FQcDAzWTdTOXVSUHpDUjUw?=
 =?utf-8?B?Y0k3aXhyTTFua0Y1YXJyd1pGT3p1OVRGc2h6YzJtMVU3c2RPdUE1ZmhSYS9p?=
 =?utf-8?B?M3B2OXlVMk9PWElOSklmNlhjSWR6SUF1dEdiZm1XOEFUY2NsSHZQT21xSGlX?=
 =?utf-8?B?WXAyempXNnlFL0t1Z1VpNFBRTDZJWHBFRzdBQXZkb1B2aWVpNGhDWGhWR2F4?=
 =?utf-8?B?enF5QkNQZFFub1FubmRjT1JSSGxTdFErNGhlUEtxMHlWVTQzOTVBYVZwaEY4?=
 =?utf-8?B?UzU0eFk3VDJCbXc3d3NYcTVUTUEwZ0NqTnM4UUw1VWRwY0ZJaDhKcVhWY1Jk?=
 =?utf-8?B?Z2pzYVFHeTBxRWNsUWJORWptZUYyRVhZZGV6MGZIWm9NL3VUK3ZUbnB0amtX?=
 =?utf-8?B?SkVWVXVrZXBSYUtYWDZKTUtjeTdncDl5NDNXM0pqZXJzRmRtQmZ3WnBHc3dw?=
 =?utf-8?B?TlhadngrdjhmaVdqYm9IbGxOYzFCK3VORWl4YzhFdThOUmNZbDhqblJZbE5E?=
 =?utf-8?B?TnMxUVRCaG9wYnpCMEh1QWVUSG1ubGNaeHg5MThvc0lnVm9WYmxEVTcvR3Zx?=
 =?utf-8?B?TTJ1Ni9PMW9zMWVKNnN3TlQxZmkxVU1mazhoMVJCaExmYXI0UjhXYTUrYmF4?=
 =?utf-8?B?M3Z4SVl1ZS9HRk5KZk01KzZhYjlNVFdEZndxVnp2c01vaVhrV0sxOGYyWjFj?=
 =?utf-8?B?VDhWcXB6TU5jSS84cnZGN3NPSExpMmtEVTduR2sxcGpTMU16YmF1ZGdZTHhS?=
 =?utf-8?B?UzhxUDlOVktDYlJZckx2V1l1c09HYkJINVBtUGZRbzFaelo1aUVBejFSU05v?=
 =?utf-8?B?SGFuRnZlOGZMd1p4cldRTXFFL3VGVzlndjg1R3dvTXBSTGJqR0JlZU1xS0pI?=
 =?utf-8?B?REdHR0dta1VTTkU1bGs0RWk2YjBITmpLSHEwSWgwMEVmOWF1bTVwRXk5QUhr?=
 =?utf-8?B?WWtGQ01XUjhNYmdMVEpUVXpWcVMrMHNYWTR6QjlwcitHSVdUYVNJa3d6NzFC?=
 =?utf-8?B?aGt4NHZqNkNOMExpcExqamwweXA4ZlgvYXV3MzEzWG8vaVhTSXl4UmtDSzRZ?=
 =?utf-8?B?UWxBbEF5N1N4TUpFZGZuZTFCOXNiVkR4c1owakJGYlpHSDlKcTNZQ0QrTWpF?=
 =?utf-8?B?L0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 600012e1-4ee6-4f19-ff91-08dd551fe597
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Feb 2025 22:09:24.7096 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0mUnQ+YNIy4mdCxJqtoBtto84GEfOdvnqvmbQilHCL4VLTVGEKfgNvEFrAaD99VF78MAA/Ka296KCgYSVe8S4FYpeckFSAIpk9H1RJnYyDI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7997
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740435022; x=1771971022;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=4IP4tXBk8z+PC27cmpG0TzQQzbLBMGDGmfekduvH5Pw=;
 b=Qt4ZbSBRut6kPQ1C/6mEU6YuCSbZDgrOkBW/GC8voT0+5AivYZd3Djgr
 DBNB7PfpXxkR3SHBDxHoh1Y2Vq4S/SPzXx4dzgiuSTN49BYzLXDH0+BNY
 aQoqxLGIkxWRwlSnQFR/1z9RL0cVJgFnB/kTGzBZyHgUz0XsIpC5Vazak
 qsoBTrtxYFBvNzzZvWzx8FYSYRCFHdKwHeDXXOcBxqUe7c44ZMLttwac3
 zMRCeTq4DPKekgFaITcu97GG48VCVE9OFm+Sdf8IKrkKpM4IrIiFJbaFm
 r4kB8uNOpl0hvvEX/YU08jK9NdNBj76SO3QYvSDWRviPfZa3UQkTMhjb7
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Qt4ZbSBR
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [RFC net-next v2 1/2] devlink: add whole
 device devlink instance
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



On 2/24/2025 5:03 AM, Jiri Pirko wrote:
> Fri, Feb 21, 2025 at 02:45:12AM +0100, kuba@kernel.org wrote:
>> On Wed, 19 Feb 2025 17:32:54 +0100 Przemek Kitszel wrote:
>>> Thanks to Wojciech Drewek for very nice naming of the devlink instance:
>>> PF0:		pci/0000:00:18.0
>>> whole-dev:	pci/0000:00:18
>>> But I made this a param for now (driver is free to pass just "whole-dev").
>>
>> Which only works nicely if you're talking about functions not full
>> separate links :) When I was thinking about it a while back my
>> intuition was that we should have a single instance, just accessible
>> under multiple names. But I'm not married to that direction if there
>> are problems with it.
> 
> I kind of agree. Like multiple channels to one entity, each labeled by a
> different name (handle in devlink case).
> 

This might actually also help alleviate some of the uAPI concerns too?
Since the original names would access the instance.
