Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 27990A28827
	for <lists+intel-wired-lan@lfdr.de>; Wed,  5 Feb 2025 11:37:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BC04540703;
	Wed,  5 Feb 2025 10:37:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id njjLBSZbF_3g; Wed,  5 Feb 2025 10:37:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5EC014050D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1738751850;
	bh=VHETCTdzFFX1iu41lZbxV9xpP699BSdJHBd1iOqjeeg=;
	h=To:CC:References:From:Date:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=7nrFwrFkZ1DUH+qcXKXKbykLqm2R4oRKndOc+g3rfoALIAA6W3zdbhMVlFzUzlLG4
	 Bg8iipREeLCH8EF086U1tcZZPhh2unA1lq/EsWKKDc67yVS1jDfGSovNkSy5nJ/x3M
	 lAJigmvBsjWa6vsI+RlOh9b77UAzKyh4T/6qSS6JTsE7BR57E/lphVuSQKxLq+nuUP
	 bO/K8C66OPtYi5K5rJDvJucRrsrSlkvtmLkgKraMHUarG2XXIhPfVMiLC2g5SQNbH5
	 ibjCwl6dTO+UwqhFljENchKay+GU8ZKhQ/hNNRszCY+Iv5SLWO3QzTB7i0PlhPZHMr
	 pdR8D1lvZIyGQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5EC014050D;
	Wed,  5 Feb 2025 10:37:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id D98A012F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Feb 2025 10:37:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id BCF9440703
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Feb 2025 10:37:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id K1z8sePWQfmw for <intel-wired-lan@lists.osuosl.org>;
 Wed,  5 Feb 2025 10:37:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=vitaly.lifshits@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 88ABB4050D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 88ABB4050D
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 88ABB4050D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Feb 2025 10:37:27 +0000 (UTC)
X-CSE-ConnectionGUID: y2ufIWgxSzuvsjARmxVRmw==
X-CSE-MsgGUID: 7xDX80FQSS6aqtx/biTS3w==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="64670409"
X-IronPort-AV: E=Sophos;i="6.13,261,1732608000"; d="scan'208";a="64670409"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2025 02:37:26 -0800
X-CSE-ConnectionGUID: qeK+gH9NRratqrtKmaMGGQ==
X-CSE-MsgGUID: G2P43ZP9RCybcyNJrJqo3Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="110711600"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Feb 2025 02:37:27 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 5 Feb 2025 02:37:26 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 5 Feb 2025 02:37:26 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.171)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 5 Feb 2025 02:37:25 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Xv0yDHBpWlfrFpaE04Wpv1MDzv1i1ckz3TfBETaW5VPD493cedOVtaMLI9KZjouFElgUalsnh+5xNUcuuw7vrGaxrMGNFo8b9U1DMLpq6PPUWUJUnE1XesqdISnBNsVIpfYNroeqOxy48UUARnBThSlBX7cuWymLk9ma51UXb9NdWYw0PQ7A7Y+A1X7EpdZ1LiVnf03Io0yYxdORnjluKkglrVJPpiqLvCijiLoGEuKQGNZdeUAs3J0Wx9bRvWGazjPOCQBRrxm0HWRBIJiSWk+/w59AE97OOX8A3CiACaSrAfO1bUgb70y6jvWYUTEM0vQnEFZQ+rSkUxbJwvyZ0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VHETCTdzFFX1iu41lZbxV9xpP699BSdJHBd1iOqjeeg=;
 b=V9yEy9Ueb0V+lval3sCMAEtZgzfHBQjaAAM87MFD9b8Nky9eQPGmIF3mKgQDT220FApcm+1cjDGzKuUxEt1I3MaDclcS3QDxosAKaU4pBPc/nGiv+Cb1+4Y3Eu/HTseqpBncJF/4QVpDVfIqL4u532YlJDAPMI26/riSQn41ooVYbShuB3MfbpVfmPWtQTEsrNzQlCuNwif2YqZ/i+MANNaTlZUNKyWPKAiSmUQG9R7HRAKVwJkEHBUVKPnhYr+tGakRGZk04PQaaSlGamvIHitsJkw3oaNpww1w7txYYhSMVyJ3o0CS3kXrxFjdN2E2B8EaKSRtxtcQhVElmhp8GQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5949.namprd11.prod.outlook.com (2603:10b6:510:144::6)
 by SA1PR11MB7016.namprd11.prod.outlook.com (2603:10b6:806:2b6::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8398.25; Wed, 5 Feb
 2025 10:36:37 +0000
Received: from PH0PR11MB5949.namprd11.prod.outlook.com
 ([fe80::1c5d:e556:f779:e861]) by PH0PR11MB5949.namprd11.prod.outlook.com
 ([fe80::1c5d:e556:f779:e861%3]) with mapi id 15.20.8398.021; Wed, 5 Feb 2025
 10:36:37 +0000
To: Stephen Hemminger <stephen@networkplumber.org>
CC: <anthony.l.nguyen@intel.com>, <jesse.brandeburg@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20250130091111.46358882@hermes.local>
 <531227ca-89fe-4398-8cba-3647be509454@intel.com>
 <20250130172115.2a116ccb@hermes.local>
From: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
Message-ID: <531e3767-05c8-cb5f-6f3c-1860125ef408@intel.com>
Date: Wed, 5 Feb 2025 12:36:31 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
In-Reply-To: <20250130172115.2a116ccb@hermes.local>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TL2P290CA0023.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:3::12) To PH0PR11MB5949.namprd11.prod.outlook.com
 (2603:10b6:510:144::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB5949:EE_|SA1PR11MB7016:EE_
X-MS-Office365-Filtering-Correlation-Id: a8a9f69d-ffa5-4ff8-2352-08dd45d0f79e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ek9JeWdQRlpZVjlFSjVMaHVYV1FrNEk4U0kxYXdhN3pJd0xuYkJzVzZ0Z1RS?=
 =?utf-8?B?Ympncmo3THFiNVQ5NEFDelgyTklEMjlleDVhWXlLUytoSERjRDhxN0tPU1RI?=
 =?utf-8?B?VGJDOWRyMUxlbkpzZ3I1cCsvcGJVQ2hwSVdoN0YwOGs0bWxGbFBUSGt0UndL?=
 =?utf-8?B?Q2FRRDg3amVHV05ndTlDb0hjR0ZGQkU3bmwyYzNLUUtkeVRvb2YrajNqb1lr?=
 =?utf-8?B?Wm9NYnF0b09zQTBKblJEaWZUc05RQVEwMEFJTXpNSlI1cXhNZDlZNVQ1UUU0?=
 =?utf-8?B?YThTbjNSQWtnMGRTM0dvMHphdXU3aWp1WVFPQ2FCRTZ6MXNHMjZjS1htRXYw?=
 =?utf-8?B?dFRrVy8vcjBaSGJDWnBPRGpBaU52UDFSeTVBVS91YkJuSXd6YUsrUVVPUWF4?=
 =?utf-8?B?Q3U3NFErVENnYnlodHZ3UmdvN1BxSFNpS3hocStPVE16cFRoMjYyWjl3Mnhu?=
 =?utf-8?B?aVdHaVVvMVN1cWxuSkVvSnA0VW45WDBDaUdhaUpqV3ZPLzZRdS9mOEg0RzE0?=
 =?utf-8?B?a1JmaEU2MmxtTnpac0VleXF6eEliZkYwVW1qamZ5aDZzaURmQ2NSKzBNQ1E4?=
 =?utf-8?B?bnZwYkF1aHA2VEdZZ0NaenNSQk1rWkZPZTA3cU1RcGhvcXp4anNsTFZPbW01?=
 =?utf-8?B?NFIvTmxxb2hvNlIyRGhaNDZIN25rRlNjVFg2Q3UzZmJRY0pzR29TcWJqS2s1?=
 =?utf-8?B?aWhXYWNlbDJ2U29zVGszMGM2bS9PMmNmYzNKd0xZa041UlJ5T0FETy9FaXkr?=
 =?utf-8?B?UWJDOHRsazJWZmZNUWpLT2U5V29aMkJ5NDVnT1pxWHFENDJRTnQ1L2xVdDRa?=
 =?utf-8?B?eHE3UUpIRWw0UmF4eGhRRXAzcCtyY2gxNldCcmJPcFNlZFBtNVRiRG9IZnNF?=
 =?utf-8?B?RnhkWk1Mbk9GUWpxMmZRTWsvMzZXY0ViYjVwaTFRd2M1UVhHT2RJR3BFcnRs?=
 =?utf-8?B?YnFWWjgxTEZXMFlyY3hla3dqNWFVaFA4UVc2c1dHYTF5NGVEOU1nVS84dXFy?=
 =?utf-8?B?N0duK1dTRFQ2cTZ5WXdOeGZLUElzWlBzSEVYV2kySHBjVGRObDNCRDJYQnVo?=
 =?utf-8?B?TldJck42bStuRjQ1elh4VFBvQTd6Z3drWDFDZXMzSWs4N25zbWs4cTlZNUhZ?=
 =?utf-8?B?WTRyVE9adTU3ZkZJMWJqMHNKbW5hd0dYejdPcnpZamNNZkhHUEI3bDZNejJv?=
 =?utf-8?B?VDRZY2dHUHpKNDZacjg5TG1SRFM2bVpIcFFzT05LdUpWODM3WE1xT084eUdS?=
 =?utf-8?B?S0g3Wkd5Y3F0dDliQTRMTVBMbU02K1FLQWNRWVhIdk5nWTVwc0dQVXBEV29o?=
 =?utf-8?B?b0pKUnZiYU5aSnhzRkFJMC9aaFEyOWxrZ0tBV0p2UVdxMXlyTitFMS9Uemsz?=
 =?utf-8?B?U3FCQ2R4SFVDdDN0TXVKSGVJZFAzNFIwcm9HaEN1RTh0V1JzSGxaelkwRk4z?=
 =?utf-8?B?YUd5aG1lN1VNdWRFdHljOW0yNlY0QlNOc1gxaVpMaWViTmhjZEpSVHRNWWxW?=
 =?utf-8?B?S2N1Vm5zb0xKK1lFQTQ1SmdWN3ZjWWp3OHQ4QWZmUzJXZklPSHJMamJqdzZw?=
 =?utf-8?B?bkozM3FKKzhickdmTVpxckloaHZtbXA0Z0RjUWlmcDB0RFF0cHVzc2lnSHVa?=
 =?utf-8?B?SEZ3eEkzaDNTOXhVTE5jZFNUTGIzV0JwbktPbVVlMUNKck1xV1lmbEtQRVBZ?=
 =?utf-8?B?V3RBVERvTSthOWtIMXN2SWs0UmREeVh1S1lWREQ2dnZkaVNxNjJUQjZnTjBq?=
 =?utf-8?B?STdSaEJoa2pQMmxXaGJmUEVWWFZ5NUFEWitjYlZ0QXM5WUJocUkrOEZ1N2NM?=
 =?utf-8?B?YkZldU9vSHZHMFFKSG56QT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5949.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YTVlcFhvcFFlQitQNmJ5KzNYSnIyVjRWT1NsM2hhZytDVFNTTk1HcTFreWpI?=
 =?utf-8?B?WHUwUVVwVm5rb28yMm4zTEFzZjBiUDllVG55Qy9WYmE5TDhQYVFJQzYvU2Fn?=
 =?utf-8?B?dExnb1RtSmxlallRcXJaRUFhUlZYbWlrOTdJSWYyRmF2M0pnT3B0MGk4Q1Vj?=
 =?utf-8?B?eVpCVkRpRzdDa0hGVGhjNDZLTEdqSy9hVlpBTWEwdktLOUE2UUM1QTJkQU9u?=
 =?utf-8?B?YzhGWmVFUmcrbHJZVWdzYVBhck1Ic2pzcFU5MGRMUjhab3JNcmxLSUVJVkFR?=
 =?utf-8?B?bUxXV1Ayb3RKOVY2TVFLKzdWdmxMbkk2TUc1cVoyaTI3RTN6b3hjMFdwMjN1?=
 =?utf-8?B?MktHR3hyR0FmOXJFcFM3STErQVRhZjhFQVRkRHA2SlNCaUxzbHdaaVRRdS9Z?=
 =?utf-8?B?NFlTYUlKNmQrZnNmNWpzbDU2bU1uZkJoYXYveU1LM3ZpZVIraHRCMmp0T2Jj?=
 =?utf-8?B?aVY3RWVYT1JSR2loTjd2SDdxeWc2TkQvYXFxWEVqb1NNeFRDOWx6ai9qMGh0?=
 =?utf-8?B?eGhRcElwV05kSXpDTkx0eHU1S2FnQnZsTjB4RE1KdjZ4UW5HVzVXRlRCWUJz?=
 =?utf-8?B?VTNBUVpHcmhqWUtxMlYvU3I3c1VIQSsxT0lqV21NaU95ZWZ5M2NQNDdHdStK?=
 =?utf-8?B?aTE4OVlibzR3K2swMTN3eUFKRXlzUHMzaW5OdGN0azdGOHo2czRhMXV3YUNs?=
 =?utf-8?B?RWR6S2NZUEZ0NE9LbzVORnI5NUtGRThMMnVwR2ZYL0owSWNJRGgvbGh2OTlL?=
 =?utf-8?B?RWc1NE8vR25xTVUwdWoyeVdyUTFrNFNmNFVZM0pwVmxCSmFJOVpvbTEydU1t?=
 =?utf-8?B?TkJzbk02N3hiK280NmNaa3UyMVg3YytsQ3VZc01RWUlHa2Njell3cHB6L25o?=
 =?utf-8?B?a0svWElXRDlxVGswVjFuVmc3ckIrbkVMNFNDdzg5RGdVNGxyTWJKODJsc2sv?=
 =?utf-8?B?RVR3Qi9EVmlyN2VPZVNVSXoyNE9UcExnS1krS0EzNyt4bGZXaHcxY09mTU1C?=
 =?utf-8?B?WFl0UXIxVUJnOGxtd0dnVGFDRlJ3L1BHckZqSkN5OEhZQ3VtYmJFdzFITnc4?=
 =?utf-8?B?eU94RGQ0cmtvb01jaHplOEJWM1N6RHBDQmpjaDNHVFVXZjE1Y1hQR2Z0bWgw?=
 =?utf-8?B?UUNJS0xzUHBvU3lQWVBoS1RmV0lsbDZ0M05zVnRBdkJqMno3b0lSNkp3WkNk?=
 =?utf-8?B?b3RTK1A1bXBVeVhTTk5MbnlseG9WdHhtcjl4dUdxOGVjc2VWQ2tFQ2lsNzRC?=
 =?utf-8?B?Z081K1VxU2d2UlQzeEFUR1c3V0dxMXl6c1I4SVMraHVhZXFMWkxmWGtHNzc3?=
 =?utf-8?B?anJKTmF4Z0JTeEdyWThnNDBadGxBT0IzWmtrWVF6VU5hRi85L2N0aGtGckZB?=
 =?utf-8?B?aE5tT3JMd1NMbkJ6WTRnTXRtU3hQRXFMVmJ3SjhCQ3lMVnVKTXlZU242OWx0?=
 =?utf-8?B?dklBY3F2NmN3QmpTb1hWb0hOUjl5SFZ3MVFRcFNDaE1WNUlZbXkvSUpVWFU2?=
 =?utf-8?B?MUhyRVl1akpVLzRzdlVzZGR6OURTOC9nOEloV3h6ZmRjRzU4WkpCdC9UQ2hL?=
 =?utf-8?B?YTA2akdCS1FKbDdKZUJYdDF4czNub3lZSUUrNzhKSk9Ha2hLbnljcDNXLzBo?=
 =?utf-8?B?RlJWWHBSRm9HMndOREYzcnI0SU4zMk1CNmFFa2NMV09QeFpIUG5rSUwyL3k2?=
 =?utf-8?B?bjVIdFMzS2xCc092ZG5FMlZERlpJaVBkOVVwNnFFUFZPb1dEMnY4VEl0aTlN?=
 =?utf-8?B?cktoMEtUeEpuWTdKUWVmaDR3aUIzZllETHBrSzY3T3RXYnBJMStnZUYrVkJ2?=
 =?utf-8?B?c1luclpBMldYdU5UNUx6aXFEL0s3V3EzcmoraytPRGVaRmF1TXBHM0EyMzdV?=
 =?utf-8?B?Z2ZaMmpKSDducDJiWUpEK01sS1pxYmFKQy9RQ1hycmJaZW1McW9IdzVOWlNL?=
 =?utf-8?B?MHovOWVNT1FteDdWT0ZENzJQNUlUZ1RJaHVtM2VrT2RhL1ptMkdvaHVKOGNh?=
 =?utf-8?B?UDJRd0xCZmhTdlk0MXBIZVpCVXZxdVVhTnc1eUxBQjVFZzEra3B0UmxkRVJu?=
 =?utf-8?B?Y25xT2FORFFPWU11bXFGTHBCN1UrYVZUQzZueHpRS0pYTk95K1NjNTdiZU1B?=
 =?utf-8?B?Y3lHTTdpbXZkQnlqOWorT0NzQlc5c2xxVENMN2ZmSlVQNzRudjdrVm8wUDRh?=
 =?utf-8?B?eEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a8a9f69d-ffa5-4ff8-2352-08dd45d0f79e
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5949.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Feb 2025 10:36:36.9214 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LUnL8RI8Vp22tNw2/hoa8HVQGT9qE7zrrA8PWzqHPBIPS33ICY4GNh1O6Ou/2CVYwFB8ebq6YS/ikE7U9VBvWhUYw3HnHdMD1dz31daP2L4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB7016
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738751847; x=1770287847;
 h=subject:to:cc:references:from:message-id:date:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ALvqohYzruqz5pEf68UM1ryhm06qb1HJsV+7AjFMbNc=;
 b=NAnH7FudvTirD/qzfe4zclJ0Ew8+XPHnFdWFiJTSfCeCi7NoXvA6mB50
 k01qEjinL0n8tvOyM/jGhpnAS+Q8UmB+n85yoXbUiul3viz3bUg57RpzX
 9o9bDX8Gmr50z6621R1SbaY6AD01rYzTuG+Ou56Muzr9rjCUDUTMwfb30
 M7RgYqFqenuwBd43l/T6g6SiKILzUq2sFdPbIrqIxH9NlRGclq4FhpLwj
 7QJJWnW0eQV+I8GZ5W1rzmMSa9HZFV2yRkLjHrHqd9ZqyIKlk2iZlWXnS
 swpofTw56ZzISp2y8vCOvlrb0vrFNDFYaGwQQavqyWDv+cGTdwvo+YIiS
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=NAnH7Fud
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] suspend/resume broken of igc driver broken on
 6.12
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



On 1/31/2025 3:21 AM, Stephen Hemminger wrote:
> On Thu, 30 Jan 2025 21:17:30 +0200
> "Lifshits, Vitaly" <vitaly.lifshits@intel.com> wrote:
> 
>> On 1/30/2025 7:11 PM, Stephen Hemminger wrote:
>>> I am using:
>>>
>>> 5a:00.0 Ethernet controller: Intel Corporation Ethernet Controller I226-LM (rev 04)
>>> 	Subsystem: Intel Corporation Device 0000
>>> 	Flags: bus master, fast devsel, latency 0, IRQ 19, IOMMU group 20
>>> 	Memory at 6c500000 (32-bit, non-prefetchable) [size=1M]
>>> 	Memory at 6c600000 (32-bit, non-prefetchable) [size=16K]
>>> 	Capabilities: [40] Power Management version 3
>>> 	Capabilities: [50] MSI: Enable- Count=1/1 Maskable+ 64bit+
>>> 	Capabilities: [70] MSI-X: Enable+ Count=5 Masked-
>>> 	Capabilities: [a0] Express Endpoint, IntMsgNum 0
>>> 	Capabilities: [100] Advanced Error Reporting
>>> 	Capabilities: [140] Device Serial Number 58-47-ca-ff-ff-7a-98-3d
>>> 	Capabilities: [1c0] Latency Tolerance Reporting
>>> 	Capabilities: [1f0] Precision Time Measurement
>>> 	Capabilities: [1e0] L1 PM Substates
>>> 	Kernel driver in use: igc
>>> 	Kernel modules: igc
>>>
>>>
>>> Using both Debian testing and my own kernel built from 6.12, the igc
>>> driver appears broken after resume.
>>
>>   From which system state are you resuming?
>>
>>>
>>> After resuming the device is down and no address present.
>>> Attempts to set link up manually fail.
>>
>> Did you get any errors in the dmesg log?
>> What is the firmware version on your device (you can get it by running
>> ethtool -i)?
>>
>>> If I do rmmod/modprobe of igc it comes back.
>>>
>>> Doing a bit of bisectting but it is slow going.
>>
>> Meanwhile, we'll also try to reproduce this issue in our lab.  Could you
>> share more details about your system so we can create a similar setup?
> 
> Given that error reported is -ENODEV, might be a generic netdev problem not
> just for igc device.
> 

We weren't able to reproduce this issue on our systems, even though we 
tried several suspend-resume cycles on different kernels and different 
systems.

However, a few days ago we received a comment in a BZ about an issue 
similar to yours. In there adding a short delay in igc_resume function
https://bugzilla.kernel.org/show_bug.cgi?id=219143
https://bugzilla.kernel.org/show_bug.cgi?id=219143#c123



Can you try to see if it fixes your issue as well?
