Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D3845ACCC4C
	for <lists+intel-wired-lan@lfdr.de>; Tue,  3 Jun 2025 19:37:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E557641147;
	Tue,  3 Jun 2025 17:37:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xgvz3iRQJnUG; Tue,  3 Jun 2025 17:37:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2ED04414E8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1748972265;
	bh=r8Us96lTfhO8ZSFlbQLlMh0XK3Mvw3VmfJ6AVV05+/Y=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Kj5zpz/He1VoI8cTt+RmzLi2NKV+Yw8xJmQLCQ/pPG9IDZGwdikFdsNhNS0T68veF
	 LTQGbpKG7PKh6LMA3DwRuuy6OeZ8JQLb6+BbRH6HAdNpvlPo6bAP+oFZ7mV8Zc67iR
	 MPSmC4NqWnwkacM43bSjw/3HjP+WFdAWEZpPfRIqUWNHPFpPbgBgwGaWGuKfKazciX
	 eIVPuPt2+Yl+xudX/0JAPRq9qAtpO/aIFIVfy37w9FmKS5bSSywi2WDvvA/s26NDAr
	 zB7Fc2Jt/uBlBM0JSqI3l5MNBOGUMMVjFzXMd7aecPB0LvdU94bPDvfoep3X196B6u
	 i1VwjrZim21ig==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2ED04414E8;
	Tue,  3 Jun 2025 17:37:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 527D4B07
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Jun 2025 17:37:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 38AD1613E8
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Jun 2025 17:37:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sRpVzvncg6L6 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Jun 2025 17:37:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=ahmed.zaki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 8F284613D0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8F284613D0
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8F284613D0
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Jun 2025 17:37:42 +0000 (UTC)
X-CSE-ConnectionGUID: Xwtu00pZR9a1qNAxpvvwGA==
X-CSE-MsgGUID: +sDX5CdOTQK91wSEF8bBIw==
X-IronPort-AV: E=McAfee;i="6700,10204,11453"; a="61647444"
X-IronPort-AV: E=Sophos;i="6.16,206,1744095600"; d="scan'208";a="61647444"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2025 10:37:42 -0700
X-CSE-ConnectionGUID: DH492x+KTXealtzeMEogBA==
X-CSE-MsgGUID: DK1WkQftRX2ZCWNk8L0vSw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,206,1744095600"; d="scan'208";a="182104462"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2025 10:37:42 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 3 Jun 2025 10:37:41 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Tue, 3 Jun 2025 10:37:41 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (40.107.244.82)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.55; Tue, 3 Jun 2025 10:37:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JK0YEBFm90tiC66P6pFqck+hyeViIEju7pLb9eQWcod7Mlgowr6dzhyifa2nynDyk8PoUH+c4Onl9GsJEJHc8/BjU4Va3lHLIL1diCJhlgFlk8pqqpKyIHhSikKxXPRf175U2Tx3bSu2IPDEAt+muB/0/3dhbyvfXWLKjybOv9lVj36qqrAUqaDTbNd5G2kUm1k0GP6ipVIOaRG1UlzCsyzHHj13/sbu4thkKK1VJDBVfb6ecOmpg8ADGpfVVjxscXltSjkHFwRzRIvvmEMX0HzP4+FDVYlnjOAk1mfFnOzMPpg16xpiin6mfvDL2UIy1xcPLrCXQa+aC+i+u0MpvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=r8Us96lTfhO8ZSFlbQLlMh0XK3Mvw3VmfJ6AVV05+/Y=;
 b=AgTY4Id3TnfXun49a0Jxvg+m6CAp2tUmOXI1WmcfwDe6i6SMKtS2BScHvwPzOiPPMVamuyRtQvSD2RaDbaofvdk/DUA2GDVDUKmIVhQwcB/sKvwibsuJPxdJS0oTxO43Ap8tYZaPq0oGxW1lOsFYFhPD8QH3rAtecC9hFxki+u8Hx+hHq588oqzCsOzGXp5hIBYbhIhPTtkJ1mOnAjPd3zYX93Futuafy9muy5Drk/XSei1MmVIM8YkOwyYtihwxug2AjT0WLV39kp08UjPWdNLAAnniWaDyU4l4Y4ji1pq3oDvUqk4FPrEs8Q7PcHeufivK4ZyFtWF6Ie7bxYB2ww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7420.namprd11.prod.outlook.com (2603:10b6:806:328::20)
 by MN0PR11MB6112.namprd11.prod.outlook.com (2603:10b6:208:3cc::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8769.34; Tue, 3 Jun
 2025 17:37:39 +0000
Received: from SN7PR11MB7420.namprd11.prod.outlook.com
 ([fe80::b8ba:be35:3903:118f]) by SN7PR11MB7420.namprd11.prod.outlook.com
 ([fe80::b8ba:be35:3903:118f%4]) with mapi id 15.20.8792.033; Tue, 3 Jun 2025
 17:37:39 +0000
Message-ID: <06e4f649-0442-42cf-b1db-d88bd8556d39@intel.com>
Date: Tue, 3 Jun 2025 11:37:30 -0600
User-Agent: Mozilla Thunderbird
To: Simon Horman <horms@kernel.org>
CC: <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>, "Aleksandr
 Loktionov" <aleksandr.loktionov@intel.com>
References: <20250523205537.161754-1-ahmed.zaki@intel.com>
 <20250528095521.GZ365796@horms.kernel.org>
Content-Language: en-US
From: Ahmed Zaki <ahmed.zaki@intel.com>
In-Reply-To: <20250528095521.GZ365796@horms.kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: DUZPR01CA0294.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:4b7::13) To SN7PR11MB7420.namprd11.prod.outlook.com
 (2603:10b6:806:328::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB7420:EE_|MN0PR11MB6112:EE_
X-MS-Office365-Filtering-Correlation-Id: 5adfbfff-109b-49b3-9967-08dda2c55623
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?dXlKVlVOc3g4cGkxWDR4SXI1Unp4UFpWRTN1anhXTXJrN2JWSjJlaVlkcFpE?=
 =?utf-8?B?RDNMck5IMndqY2l1d3RVQWE4aTNYR1BFZTZ3TEFZS0dGdCs0SGlJeElMeENO?=
 =?utf-8?B?N01sMjA4OXE0ZHdZTHRkdmd0NVRTWnZxUmUxZ2Joc2lQMkpOQjFJWStYTENk?=
 =?utf-8?B?S2hXOEhFVUErZ2JBcE1Hb0NRaU85Vm5zaDZKRW41d001c3JmMjFnaVUycWhj?=
 =?utf-8?B?b2J5ZUhPcDM5UGZEbWdFYzlJSzVQaTZ6SWZVWjVKNjRYZCtDcVAvQ3pjUDFX?=
 =?utf-8?B?NExjZHU5b1IrK3F1MmtBNFFYTEUxdTNRa1BrcGFaOUdyUGkyekdMc1hNeVMw?=
 =?utf-8?B?djRKR1BLUmExY1J0dTNzZFpqeHlzU1JPWUxnb0xBUUdmZ202RGxlL3dTdW83?=
 =?utf-8?B?dDZkb1Q1R1lPRXVCZnNpcytGL09pSnFldTRpeVdvbElZcWlLZG1ncGpCd3Qw?=
 =?utf-8?B?dmkrQmxCL2FLZk5wVUY4eEdWKzFJdWMyTVk0eFd2V0ordklXUXZiVi9sTGlI?=
 =?utf-8?B?VVhIQUNkWHFlSHlFVTZMMVB6dmtzekhXMHFXZnRhOVhLQzRBYkZmZUNvdmRO?=
 =?utf-8?B?SFA2Um5pMml5NURVcGwyb2RURHYwbXJESzRtK09hRENVUnFQVUdyZjJOT3hM?=
 =?utf-8?B?MkoyMGlmaFF3K3RlQzl3RVJQOE1RQlRZVWVoVHN0cWV1ZUJrMUQwRUxQcURI?=
 =?utf-8?B?R1JoTjdVTVVDdzRScndwUnF6ci85dzVLdmtTSU1ZaGdxbWM4Vm1EUGhUWFRt?=
 =?utf-8?B?cXliNyt5dVBWZm1aNk5FMmhmemYrZExZU1Q0bjgvcmhScEtaQ3JZMmxsSDhr?=
 =?utf-8?B?MEFmdGFiOXpTT29DQzd4NE93NlhQNldwV3Y5K3R5dVZoSWFuVWdGcldPUTA4?=
 =?utf-8?B?Z0lJc2p6RXhITlluZk52L1kreVEzVmhJcnhyczd2eEl3aTArU2Jtc0hLMTVr?=
 =?utf-8?B?WEcwTEhTRVI5d09nZVZ1cTVkeG1GNVVzak1JbUtGZmo0bFlHSG1VVndUVzIv?=
 =?utf-8?B?ZmE0SkppUTlzQkwzTUVZK2tENkc0Y0kxYm1IWXFZVDVLQ0ZKMVI2dzk1Y0pi?=
 =?utf-8?B?bitRZEY0a2pEVmlvSHBuQ0hTNU1lamh6QU1xRTVmek1YR0QydUlxRWdhQ0xu?=
 =?utf-8?B?NytON0F4UEk2dCtQT0hMdVZtZkpsWG1UcHJCRWZaK1NkQUZ2bkJEKzhPOFVY?=
 =?utf-8?B?ZTNDOXBNMTJxREMxUXJheGREM2x6UHV2MWhSNnZZT1FLOExvYzhBZWhjVGxL?=
 =?utf-8?B?VGZROE1kZE1Bcm1ZZXRMaHlacm5IVi9YVFRFUzFZMlhYbjVNNGNGaS9DUW5Y?=
 =?utf-8?B?d0JmYnM4WWlqNFY5REh4UVBTdjRobmF1QlJmYWRTcGhMKzYrbGlzSFdXSnhw?=
 =?utf-8?B?SWFQTEtBRWxSZkFDaFhic09IWWFsN2E4ZjNHYzE2ZmJsdEtrL25DaXZYNmlC?=
 =?utf-8?B?VmNXMlB1MUk2UVJWTHVEYktFMGFaRVNza1IzbjBrdFdmdXVaRlE1SlVZOE84?=
 =?utf-8?B?b2dUUzMrcEhseGtIYW5TQkhUK3M4SHlwUW5aOWtQS3U3aFdqV1ZaSVlCNEFq?=
 =?utf-8?B?aXZ5N2xmcVhBL3FYSitHc1hCSENMS3pVTVUyM1FaZkJtTFJZMm9HNU5TbjNl?=
 =?utf-8?B?QSthbW5JZGVpOGEyOG9rWmZpSE1FenhqOW45M2doRkMrY2xKQTZoaTZYVVVB?=
 =?utf-8?B?Qm5kYXhRY2Nld2JzUlZBUGhaZHpqT1VYUTNJN0lyQWxWcmJ3SmwyeVlTZVNx?=
 =?utf-8?B?aDQ0YW45b2NiNHUzdUJpcEhkaFBBR3VCL24zeWJBRTAwaEFzcnNvQW5hNkRs?=
 =?utf-8?B?Y2JXT2l0MU5rRlV6Mnc3S3VqOElYam9VZ2R4enJOTjFTVjNLSUtNcUNKZVcv?=
 =?utf-8?B?NDBxcStlVHM5elJ2OTRUREtEQiswZVNZSE84UU5Va3pwK0ZzakU3R2xkYWxD?=
 =?utf-8?Q?nFISh/tX/rQ=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7420.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eG1lYmwzblNZbm8zcVRSbnNiWWFmcGdlTEJQZlo4OC8vNjhiYTV3NlpJeHJH?=
 =?utf-8?B?aFhEY1VNc3JoOEwvTFR0OHI5UjFOQ0NaR0NWMWs1VXh4dUczZXJlNEdnd1M0?=
 =?utf-8?B?ZDlsR3UwN2pqWm84d0NVb0c2ZTQ1ZFVJUEFIMUhiQzUrb1oxSmVVU0VDZ2Rz?=
 =?utf-8?B?b1d6cm5BU05JaDZtTVhRU2MwQ0lsc1YyKzZKVHdRdVNYQ0JwczM1cTdrTWVv?=
 =?utf-8?B?eWRDSVRiTlFvcUFhajFISmE3UFdtdWcyallyeGlldnY0OWdZREtXQmNrNXB2?=
 =?utf-8?B?Vkc5RnVyeFdXQnJGZHkxR1I2NGY4MzFncG5RNnl4VVVKVFZqVVR1Z3pGTzZ1?=
 =?utf-8?B?Szl1OThRYU9OVDc2TitKMytYUVBEenY0WWFPY3NlZkRhZmZZUE1ZQ2plQmha?=
 =?utf-8?B?aDFEQndaWXhTb1RVamYxM2gxdlp1VFRnYlo5UWNncEk4eklyazVFcjBKa0k3?=
 =?utf-8?B?RHM5amxVcFVPdUEzdHlOa2t3dlZHRU82S0NDTVJSUkorS2traXMrZHgrQnFr?=
 =?utf-8?B?WmJBbWJLb0J2RXkvMWdzNTdUdHY1Ujh0WVE2d08xOVN5TEZhMDlaTjN5K3pP?=
 =?utf-8?B?cVpHMGI0MHY2bUxsU2JnSFVySDJtRGxTTXFXTmI1SnRFY2pKRWJHOWFqV3JK?=
 =?utf-8?B?Vy9ZTm13TXR4SHUydHpBODduckpDWW91cXpaYjFOK1lnbG1lMlhGU3ZJZ0R1?=
 =?utf-8?B?UnJnRytkVzdVRFoxZXFNS1hiYVVabFlOUUxueExVRXNuUGtzKzlPeWtTWldM?=
 =?utf-8?B?UnBKZWs3K3BETlNqdjB6K0VtSm5pOTk3eTNsUjBwWXg4U1BCcG05VkFjcDE4?=
 =?utf-8?B?RzRQblBRMkUzWmtpUjgzcmRNYksrWExiYXl4bzVqK0EvZTl2RVpiWisvanlm?=
 =?utf-8?B?Mm9HUHViVTJKSXVrQ0tyK2NHNW9qYXRIclF4ajEyblgxUXRBYWVlK3JJVWxL?=
 =?utf-8?B?MGFrTDQ5RFIra25HaXlpaTNhSHZ6cm5PaHF2d0dWZy9zNEkxeFFWVVcvb24y?=
 =?utf-8?B?TzQwZ09OOWdRbXplZ3JVV2VPL2w5NVd0WnFmM3ZKd1lZRC8wMHVxNHdMMkxs?=
 =?utf-8?B?dU5sclZHQVBMNTVuRUU0Sjd4MURMS2l6K2RtZkhHemdEd2MzOVpiMjNETmVm?=
 =?utf-8?B?d3VJZlRNbzB3WjI4cXg3dExZQWNpMm1KdkZ1Z2VER0JMT29hQjZzOTJUZUxh?=
 =?utf-8?B?VFZMQlVzeGRIcFV2YTlRV296QmFxOUE2bkdPYnZVTDJBWHE4NkJyV0pOeWRh?=
 =?utf-8?B?U1Y2a0twU1JvQ0NrZWdCaS9lRWZiY3VValcvSG41NHlpYW9kZk9ERk1xVVI0?=
 =?utf-8?B?MWQyT1luQTlaczRNcURJSWc3WFJBYVl3NGhLZ3BZZU14YTYxTHFUMFpqNWxq?=
 =?utf-8?B?aWNGcmdNNzlWK1hOMlpEdUJ5SGxtT1pMNEE1T1dFdUdJR2REUm1pVjc1RFVZ?=
 =?utf-8?B?bjBjQS90OHBQWUdrYWpBbTZyc05nVE5FTlpDMlBLWkdhK3FXWllTa2ZrTG9M?=
 =?utf-8?B?YnMrb2NRb3N6WS9GaW03azRmR21hZ1FhNVRZS1lRenZRMzdjU0JrcXdHdjJI?=
 =?utf-8?B?bDYwZThIVUhvUzJTOWt0UkdrbEk2Vi9MTmR2NktpR3RFcStoWVhBb0QxZ3Ru?=
 =?utf-8?B?RmRDUmJrWHZ1WVdHck51OHV0YW9hSHNyWlN3aFk1MHFmRGx1TGY0elBnSllY?=
 =?utf-8?B?aWp3RkRZa0R3cFUzMEtYcGhlNGc2NitSSFNPaTZySHhIRUtWeFhvc2dhWnJp?=
 =?utf-8?B?YU1ubW1NdU5zTGpVNjFIWFdzTzExcFgwTzRDdWlrZ2tBbjdOZXJlZTk3YzdB?=
 =?utf-8?B?MmhTV0VDYkFvWktJZE1mYmRsb3cxN0NYTkhHeStuNlo5cnlkSnRVY0xJbVQ5?=
 =?utf-8?B?QWRTOElJc1ZCTWxqSXpUellZSm4zTFlmblk2b3JCaFJEMWdYYjNvNzhvNnpX?=
 =?utf-8?B?YTYzcXZTVzN3VEk5U2toNGNwejRWOE5rVVI5OGh6K3lnZzNoOENyTVllbUda?=
 =?utf-8?B?WnVnclQ5VllnL2ppWGxKWTYySjl5K21hbzNiZXBpL1loeXJyWjEwaVUvT243?=
 =?utf-8?B?c1VPSUtVZ2ZJL1VKUWpQbXRuZVNaamJNekZjQ2dTUDc5clN1RlJPOFcrWm5v?=
 =?utf-8?Q?LWKqEhqmjZcQA/H/sK6YDNB18?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5adfbfff-109b-49b3-9967-08dda2c55623
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7420.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jun 2025 17:37:39.6021 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bD85SB8IrOMpHo/2k74rPNJJXPIQYdNpkSX8C3Vo7HE6mNSgvtuIPbDp0WkErQTE/B193z9EbvPJFjS8aEE/oQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6112
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1748972263; x=1780508263;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=IpcZcsyKDPPC9Hwf/JKLjbWzlG1HfAEnax5Y6u5akdc=;
 b=EHvpoYlDyQlB8CHZDAY7pC3S+07zNNji+xckXtsP1X9jaCdPd7n7TFkI
 9nQYtWIAoxfUPcVPR1po74EAJWxx1+tuC1wW6YLq6ROac/yjy8blUYSMF
 MKTUy5ee75bD5D6LP3h+r1bsOIw5VeKCReDfa51NguNRVP1RcgbDR/0lk
 MbJV2EmnfgHMMCB0DFdL7gbtu/39tYmvOFgoNLBcY5xTjVmJ/hohVXumT
 vG797BeuO+fRn8gsaG4/jgZIp4GiEdpb30t1NO5BlJcvIS2iPkJFk+6Xi
 yE/qRsPfCyGhQJPz2zBH4CF9lcSdmcS/4GjGYy7jdtzMtJC/ysPgSyv1S
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=EHvpoYlD
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] idpf: convert control queue
 mutex to a spinlock
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



On 2025-05-28 3:55 a.m., Simon Horman wrote:
> On Fri, May 23, 2025 at 02:55:37PM -0600, Ahmed Zaki wrote:
>> With VIRTCHNL2_CAP_MACFILTER enabled, the following warning is generated
>> on module load:
>>
>> [  324.701677] BUG: sleeping function called from invalid context at kernel/locking/mutex.c:578
>> [  324.701684] in_atomic(): 1, irqs_disabled(): 0, non_block: 0, pid: 1582, name: NetworkManager
>> [  324.701689] preempt_count: 201, expected: 0
>> [  324.701693] RCU nest depth: 0, expected: 0
>> [  324.701697] 2 locks held by NetworkManager/1582:
>> [  324.701702]  #0: ffffffff9f7be770 (rtnl_mutex){....}-{3:3}, at: rtnl_newlink+0x791/0x21e0
>> [  324.701730]  #1: ff1100216c380368 (_xmit_ETHER){....}-{2:2}, at: __dev_open+0x3f0/0x870
>> [  324.701749] Preemption disabled at:
>> [  324.701752] [<ffffffff9cd23b9d>] __dev_open+0x3dd/0x870
>> [  324.701765] CPU: 30 UID: 0 PID: 1582 Comm: NetworkManager Not tainted 6.15.0-rc5+ #2 PREEMPT(voluntary)
>> [  324.701771] Hardware name: Intel Corporation M50FCP2SBSTD/M50FCP2SBSTD, BIOS SE5C741.86B.01.01.0001.2211140926 11/14/2022
>> [  324.701774] Call Trace:
>> [  324.701777]  <TASK>
>> [  324.701779]  dump_stack_lvl+0x5d/0x80
>> [  324.701788]  ? __dev_open+0x3dd/0x870
>> [  324.701793]  __might_resched.cold+0x1ef/0x23d
>> <..>
>> [  324.701818]  __mutex_lock+0x113/0x1b80
>> <..>
>> [  324.701917]  idpf_ctlq_clean_sq+0xad/0x4b0 [idpf]
>> [  324.701935]  ? kasan_save_track+0x14/0x30
>> [  324.701941]  idpf_mb_clean+0x143/0x380 [idpf]
>> <..>
>> [  324.701991]  idpf_send_mb_msg+0x111/0x720 [idpf]
>> [  324.702009]  idpf_vc_xn_exec+0x4cc/0x990 [idpf]
>> [  324.702021]  ? rcu_is_watching+0x12/0xc0
>> [  324.702035]  idpf_add_del_mac_filters+0x3ed/0xb50 [idpf]
>> <..>
>> [  324.702122]  __hw_addr_sync_dev+0x1cf/0x300
>> [  324.702126]  ? find_held_lock+0x32/0x90
>> [  324.702134]  idpf_set_rx_mode+0x317/0x390 [idpf]
>> [  324.702152]  __dev_open+0x3f8/0x870
>> [  324.702159]  ? __pfx___dev_open+0x10/0x10
>> [  324.702174]  __dev_change_flags+0x443/0x650
>> <..>
>> [  324.702208]  netif_change_flags+0x80/0x160
>> [  324.702218]  do_setlink.isra.0+0x16a0/0x3960
>> <..>
>> [  324.702349]  rtnl_newlink+0x12fd/0x21e0
>>
>> The sequence is as follows:
>> 	rtnl_newlink()->
>> 	__dev_change_flags()->
>> 	__dev_open()->
>> 	dev_set_rx_mode() - >  # disables BH and grabs "dev->addr_list_lock"
>> 	idpf_set_rx_mode() ->  # proceed only if VIRTCHNL2_CAP_MACFILTER is ON
>> 	__dev_uc_sync() ->
>> 	idpf_add_mac_filter ->
>> 	idpf_add_del_mac_filters ->
>> 	idpf_send_mb_msg() ->
>> 	idpf_mb_clean() ->
>> 	idpf_ctlq_clean_sq()   # mutex_lock(cq_lock)
>>
>> Fix by converting cq_lock to a spinlock. All operations under the new
>> lock are safe except freeing the DMA memory, which may use vunmap(). Fix
>> by requesting a contiguous physical memory for the DMA mapping.
> 
> Hi Ahmed,

Hi Simon, Sorry for the late reply, I was off last week.

> 
> If I understand things correctly, then by safe you mean won't sleep.  But

correct, that is what I meant.

> if so my question is if the path that frees DMA memory which is updated by
> this patch is run in a context where sleeping is not allowed.

I am not sure I understand the question, but the current freeing path 
runs in process context and sleeping is allowed (hence the previous use 
of mutex).

With the new spinlock, we need to make sure all code in-between the new 
spin lock/unlock cannot sleep. All was safe except DMA buffer freeing 
which called vunmap(). That is avoided in this patch by requesting 
contiguous DMA memory via DMA_ATTR_FORCE_CONTIGUOUS.




