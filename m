Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AACBKVi8w2kRtwQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Mar 2026 11:43:36 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EA7BC323331
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Mar 2026 11:43:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A2F798364B;
	Wed, 25 Mar 2026 10:43:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id i2yBMvmVkarT; Wed, 25 Mar 2026 10:43:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0471C83658
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774435413;
	bh=jiEvW2yobO8ZEwoV0eThQBBfmr98Ft/s6pgOyljsB4M=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=li+YtcAv8uFpCXjvtY5FtjKTcmG5pBm+au0mHCoBeiAifOJlKWbGJk3d8ocbK4UQK
	 hTz3vW8lzISleklknHjntt0X0YxZaVNkg53FdxD2C3EdWrGUV+K6MfNMQ1/azRzrxa
	 INMtFbq16wiXiUH5rbQlo9cOFfxKe1vrCIGsff3AWaseTHbUeR+p5OFZtI34FyFo8z
	 RBRbs1yZqN1s6QZUWoCzrILrSdrHkQLuEBo8qQ3XU/AAdUXtQ9uBTPJnUKghmNjKqt
	 E91OV2oac8SkBjZOFS0pYGHvmRXUscQCeVcRTu1d7NzWVDVtTu+VJ7SW8xC5FTyMsr
	 qSaFiogHhVKHA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0471C83658;
	Wed, 25 Mar 2026 10:43:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id E89EA353
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Mar 2026 10:43:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DA65F410DB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Mar 2026 10:43:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ENEwlmRe5lnA for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Mar 2026 10:43:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=grzegorz.nitka@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 303CF40D24
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 303CF40D24
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 303CF40D24
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Mar 2026 10:43:29 +0000 (UTC)
X-CSE-ConnectionGUID: fzdqBl81TImxA7CRYt0DCg==
X-CSE-MsgGUID: f/DQ1mhiQReQ/cZe6lWTDw==
X-IronPort-AV: E=McAfee;i="6800,10657,11739"; a="78066358"
X-IronPort-AV: E=Sophos;i="6.23,139,1770624000"; d="scan'208";a="78066358"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 03:43:29 -0700
X-CSE-ConnectionGUID: uxE2K3rpQbSKQRld400s8w==
X-CSE-MsgGUID: CPM0eZ6/R9OZbUZmn2L/Xg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,139,1770624000"; d="scan'208";a="247676047"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 03:43:28 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 25 Mar 2026 03:43:27 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 25 Mar 2026 03:43:27 -0700
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.34) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 25 Mar 2026 03:43:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Dp3wXsTub0HbNKgqUd31wLgJ6TTiz2mWMaadc7TPp1L9eCVI3nfQthCSHgw21L4u8vPpm9fjrrSBDL5MdORnnUoK0zmi87rYUACLBmd3HSFtesO9P78faGihVHyt1YWK3oyJag+hU6XxLKvsGdcgq+vW4TDlhwrgKv8O/AegQbP/DkAiKoaG+pvrSvt/oRHeZEdHWxY3qEBCavLWTQKvCEzMjHRhuF5LvfORu8rS/NiCFFdPnNx/vAuWNzVbrQ17JHOdPsDnvk5/+J1uQ+rD0PTphcDuhg9sNh/nogUWVNAbg9rY3BdyT/ckbFYV6fayCtu6XHno9TDVBcUE1BE5dQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jiEvW2yobO8ZEwoV0eThQBBfmr98Ft/s6pgOyljsB4M=;
 b=GQnSfaRJP0LwHMIyHw74zcKddY3KMXOwCL7Eq/RpEe9EYe1gUCKsnh1ovMA/BQGQxzGcxxiGPfGwHwnREfyUajfqZ9HYclA7htCUvzmS1qw8qVG/WdfLca+8oc+ESVcr0Pfh3uqP3roMay69yJcKtMKOuh4WHfKVoK5aCiKUoX2ownxGWIvSiY+t9SQJEfjlHIADTN0re+D9L4PlH5M4LDwC3TZ5SMrhihDdFGBjWICFqOeVy/9nJbeZ1VhODf7sem2FsvSmyBpnRekCiSkGZs7jBXfSULoLgrdFZ5HUiop//t8rUUxrm4v0TtV6tfEg2otSn1B1h88tl7VozhnToQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6240.namprd11.prod.outlook.com (2603:10b6:8:a6::6) by
 PH7PR11MB5767.namprd11.prod.outlook.com (2603:10b6:510:13a::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9745.20; Wed, 25 Mar
 2026 10:43:24 +0000
Received: from DM4PR11MB6240.namprd11.prod.outlook.com
 ([fe80::a89f:ee6c:3596:df18]) by DM4PR11MB6240.namprd11.prod.outlook.com
 ([fe80::a89f:ee6c:3596:df18%5]) with mapi id 15.20.9745.007; Wed, 25 Mar 2026
 10:43:24 +0000
From: "Nitka, Grzegorz" <grzegorz.nitka@intel.com>
To: Jiri Pirko <jiri@resnulli.us>
Thread-Topic: [PATCH v3 net-next 3/8] dpll: extend pin notifier and netlink
 events with notification source ID
Thread-Index: AQHcuxP7vyuNwI9200KZJ1lXLeXeb7W/BNuAgAABAoCAAAv7IA==
Date: Wed, 25 Mar 2026 10:43:24 +0000
Message-ID: <DM4PR11MB6240AFFEDD21F1DB85968C439249A@DM4PR11MB6240.namprd11.prod.outlook.com>
References: <20260323222133.1796997-1-grzegorz.nitka@intel.com>
 <20260323222133.1796997-4-grzegorz.nitka@intel.com>
 <ncudf3km2qvvbbx6rb4agurqfrvsu2u2cmidhvtwgvfvxxkfew@xicgdybftgqb>
 <wb55h7a7leyclks6lktz4cl2kut7bsfhxztptv5s4x6pjgbd7l@mhhqpb4vxmn7>
In-Reply-To: <wb55h7a7leyclks6lktz4cl2kut7bsfhxztptv5s4x6pjgbd7l@mhhqpb4vxmn7>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6240:EE_|PH7PR11MB5767:EE_
x-ms-office365-filtering-correlation-id: 8814f029-df55-4a51-d856-08de8a5b5770
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|7416014|376014|22082099003|56012099003|7053199007|18002099003|38070700021;
x-microsoft-antispam-message-info: 944e+wUSCoerRuvszZ02wausuB/ardQjpzsDe3W2VQxSfNBAIMDyu9bkrAgVWxazjkwIjuPBTZOWqmSFn2gul8ufVpnKxff90O6IOAjyy/2gQ/MzaFDQ9tuMtWfw9GILEIUciLID+eBIjAnANRRt+Nc8Uo19h+jLvPEeQjJA7aQjAEoxB73pmexUo4oQzx3IE/96DiYPiNAQd3hvRshm3e9+Q7dsr3BCw/OsWfde6kpIsG39Moh/PwY9c8Vx8PS3y/AHxsD6cyufiAS8sClZ1JWRXIy9DRECeqt1G7OnapyBYB4BSsxyVnReSIwUuhu6n08tmcc5zJkgV0JqhSHqDHrByF//wEYYBUXfygS7+m7o64nVaIBGzNZNqLIBVn93aicQsza5lpCpUwfiuPNVCm0+PYKsgPnVFNhlZyaW9WaQyf9eLwW7+drKji06MxvIP0ddFRCGXnHdvGRDsvvvyZgkmvUc1B8egTC5C39GFWr+g77DPWboFuxrFCDxkWgIxMM7KNvhQI9Tf/EFCHU+7B+QFemaqg9k5NNXNQyGFLBnpuFWejhLxlEqC9JjqdYBV0Hb0a75N2LBWys4T4HD4ogqqifJENN462HgdliOFuL72wO/2ShzYtT/422p2b35JRdZu3TppXxJ5cIIpq8LkLQxrHF5StbCdx3uFQywzPdauJvrXW9EYfS++methQoC4fuJstlntHuIXghMGxV1aHEapkvL6Y3oEOsZqGhyp87JyM6KVamwtNyFPkcAUtSV02le283ElQFQBLS9y2R5hstsuP9EIHRBtig50FNtjnM=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6240.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(7416014)(376014)(22082099003)(56012099003)(7053199007)(18002099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?d1pvejJEbERoUFF5T0VNdUY5WDR3cGhvL2tOa0plZlRqanFpS3VIVnk4aVpx?=
 =?utf-8?B?ZllsVHMwY1g5TVFKSnhqUkZLekg1ZlppQmR4d1paM1pDdGUxc1ZzYk5WQm5B?=
 =?utf-8?B?QnR6dVNNNVE1cVBrNU1HZUV3RDdGdW1TNnNLTE5NbS9VQjJlVXgyOS9VTE82?=
 =?utf-8?B?c2tCZ0VYRWI1SXpqYlNkVWVJQW4vT0o5K0hzL28xM3FGUFN4YW0vcW1Xd3E2?=
 =?utf-8?B?eDNLRVhucEcxVjlxKzhtd3hXckFXeHA2Sm83cVE4aUxKdm5Bb0hWTC9nYjFv?=
 =?utf-8?B?aUJvSUdxZ0RQT2p0dFhaRGFkRkVlcS9aWkM3c2FsZGlvaFZ3MzhOVWEvODBQ?=
 =?utf-8?B?THpCeVFQdUN6K2xtM3pQOS9SNDlScWUzRFhaRE9NMERudy9NbllTVFFoTjRL?=
 =?utf-8?B?SjVmUk9CaHJNeHVrQUFWNnAxV0lQYU9QaEwxbTFHM1lkd2tEWWo4WmVCTmUr?=
 =?utf-8?B?eVZ0UEFPbFRNS2hDclBaUys2ZHdaUUdTUkNRYmQzV1BKbnlZdUVVa2o5ZDV1?=
 =?utf-8?B?NVhCM1JzYlMzdGhXb3hKYUZjYVNwbDNWUzRySGVDS2FjcUMrd08rdzRNWnN1?=
 =?utf-8?B?UGcxT1ZmUElSTDNqbXA3TzhVZWhpTUNNVXcrSzg2L2pwMkpWQk1LYXE0QnMx?=
 =?utf-8?B?ZW9sMVNkTEx1eDBsSEQxVXVvTHFmU0ZPOCtsMWtoRWpvTVh5aHNvMXFjakQw?=
 =?utf-8?B?S2lVTjdTRXpwMEZ1Z3ZBb2pWa3c3cWFUSTBwdmNsN1NaRk5MVnE1bWRVRTJW?=
 =?utf-8?B?Q1hneERYZlJESnNMVW55US9Ra0tOSXpHUmd3ZU5QSFJ4eTlsRms3UVBGRzJU?=
 =?utf-8?B?aUNtU3BGZVUyNk50Nk5BMzVqa0tVSm83QnFyV3VFREt6b20yQWZST3hmSGJi?=
 =?utf-8?B?TnNHUVpDRE8vZXFRRHN6UWU3bUZ3NERleEFnRmtwQ3BsYW5ERzdzdEJ1a0g5?=
 =?utf-8?B?MlJLQzZPNUx5a1hMNklGMDVEUHdmZUp4QnZhUzNSRzFDSmhlQmVtUExOYkhB?=
 =?utf-8?B?MEhpbjFLcXNIUEF6Z0R5YndoaTJzZEg3WnlUTldUQjFJb00vZDJ6aTlGeFpj?=
 =?utf-8?B?ell4eWl0NXNOb3FtMGpGSWhqU2UrZnRnMWlvYTU5VzVQVzFub2VhSHUvbDdY?=
 =?utf-8?B?Yk1sK2RKTmRHeWp1RWhaRGpZVjJtT25aWS9uN1pQTyswbEpiQXJLbEZnTUJ1?=
 =?utf-8?B?ZEFXUmRSN3c4YS83Zzk0ZDBsUks5M0UyUTRBTk5hWGk2K1JWSUkzVzFPVkJz?=
 =?utf-8?B?RlpTMThUMEcrMUIrZGcxSHR3VHRsNnR1TDlVVEpMZ2dQQzRtZ2s4Smgva3Nm?=
 =?utf-8?B?SDhHcXRLTW5maTErSEhIemF0ZVV1TWo5Z3Q0WWE5RmpmVFh3ZGU5N3NOSXQ1?=
 =?utf-8?B?bzlsbENCWk1UaThIa2gzdGxyMHBndmxMT2JlUDRNSkFtV2s4VWFKbytjWkc4?=
 =?utf-8?B?UVNvaDJkM2JyUmtuaTluZFdMRXhPZStTMExHSVdibjN2V1JNOURhNDlKbzBH?=
 =?utf-8?B?TFBBYlVVYko3ZlhpNUVwZG9hMFA2RVl0Zy9LYUJtckc3Y1hUSkhkYWR3eHB3?=
 =?utf-8?B?QURxbTlUY3NmeStkVjRKbjJTTnpGaWM3N0dUTzgyTTZnVElZSjRrUmRScG9L?=
 =?utf-8?B?Q0hkazhSYlU5MlAvc1BYc2xFVWd3VUdqVjNjTVRvc0lpQ3NROUhnS1JxbWw1?=
 =?utf-8?B?NU5MYTQ0b0lBZ0ExTUM3TTQyb2V1K0lhYUkvSW9rTFNnYU5uMTFiSnVXeDlw?=
 =?utf-8?B?aThyUjFYS0xPRlIwMDBTZm13WFk1blk2WklQZFNEYmhPUDRRbDVjeDd4THJ2?=
 =?utf-8?B?cTgyQ1Y1eXFCN1g2YUFBTGx1S1BpSTNLK0l4YkRDWVRCWVdHTWpRZ1lMNFNp?=
 =?utf-8?B?a2t1MTRlbDlUSndPTkg3WVpJNFI1WVgrRDJ6Q1I3dW9OQUd3UnpVNE1tN1ZN?=
 =?utf-8?B?d0toM29YZW5iZVVrTXBabHIwaWFJWHdmWVBRZzYrMU90akRmY0xsdTk4WWVV?=
 =?utf-8?B?RHJsUmFuK1NkL0h1NDRObkc4OTU1S3I4RkYra3VZaWhZTHRwVXdoR1UrRHdW?=
 =?utf-8?B?RFI0d2tEczhkQ2IwZTRxeStEcXRCcXlxNFVIMkR1cGRISXlvQ1JjSzc0Yytq?=
 =?utf-8?B?cXFVdG12NDBLNTl3MnBXUWNrbitPYmR2VmZGelVzRjFhZXNPaE91d0dWa1pq?=
 =?utf-8?B?Q1F3MXIxV1kzekw5MXl0K3F5cUpaYmxJVHRRTkhMT2tKdnFReHR5SHBYN0lL?=
 =?utf-8?B?bEVzTW1UMFZ6VFdLYlppbkJxR3ppVU01dVhySTVvMW9pMWhSMmtFZ2IrSDBU?=
 =?utf-8?B?Njh0N0lFZHBwTU1JRi9OTlNJRXVKZUFaMy9NRnh5TXZlelcrMEZpUT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: TpYXcnpAyze3AfEwsmGRuhp17mOZRRg4sRgaPKXTIbDnliKjgwwfyreLf/LtDZYLC/67cYceYUGhtifAZbbgnW9j0DkL5ER3k/L4i8u82eqk93uDbhp44oSmIkQAsrDUhrBSpy5qqEGDHPwKmOvDTFbklGxL5SrAy77Ixfih9Qhop3T8wu33sqNkiMrTJmGB22ZUzHju2ZVBEPC73T9B8becnQba3xYUr3lLj7AfbSYPsA/Et7wfCTU3B6tWoPHGCZRDAznWSwV6hKlM+FkYYrmw69hsNnRbdsvnuFKEZJkncZWangYtrFx30ZSI99f19TmDzVfffVAcBfbQuLTERQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6240.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8814f029-df55-4a51-d856-08de8a5b5770
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Mar 2026 10:43:24.6638 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: //JV9Vec1x+pKETqV61cHmn6CsVhdk2fmyQL7FrUSkKRi6Ng6iVeTTLn5T/1/OrGn6GCkjpfYIZcFoAfBlGu9VUv68rJFKQJBdSIRiIJsn0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB5767
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774435410; x=1805971410;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=jiEvW2yobO8ZEwoV0eThQBBfmr98Ft/s6pgOyljsB4M=;
 b=RO6PXICF2URDcLnRA0Bye7JptAzmBWJwJvLvqK6E+v6aPtKPEehysJnx
 tEhHnDWalDIetcHaaxQMMWp+1Fo3jge1FuQsifcmE5Ftrjq0zd9ECcArb
 2HvaX7xTfcpfMKnk+CDa2+0tv05vi/hRfjTxX/u8vbqsCqL0zcsLmIoiP
 ut6nkWaZqCn3LMqKVuqNg+SkRvg9+TobhuviIkG6NjeHoMCvGZ3SfqLPf
 nyewklt7IDaPoYqQbFPAFAb8fIQh3nShgbZeblMsjjuwiuNd+t84pbtUn
 yQTzga1sdb1U5GtsmKnXJnKR1Jw+Ga0pdSAeyzwQIpdJ9RsHo88YAPIfb
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=RO6PXICF
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v3 net-next 3/8] dpll: extend pin
 notifier and netlink events with notification source ID
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
Cc: "Vecera, Ivan" <ivecera@redhat.com>, "Loktionov,
 Aleksandr" <aleksandr.loktionov@intel.com>,
 "kuba@kernel.org" <kuba@kernel.org>,
 "vadim.fedorenko@linux.dev" <vadim.fedorenko@linux.dev>,
 "edumazet@google.com" <edumazet@google.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>,
 "donald.hunter@gmail.com" <donald.hunter@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Kubalewski,
 Arkadiusz" <arkadiusz.kubalewski@intel.com>,
 "Prathosh.Satish@microchip.com" <Prathosh.Satish@microchip.com>,
 "andrew+netdev@lunn.ch" <andrew+netdev@lunn.ch>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "horms@kernel.org" <horms@kernel.org>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>,
 "pabeni@redhat.com" <pabeni@redhat.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[grzegorz.nitka@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:jiri@resnulli.us,m:ivecera@redhat.com,m:aleksandr.loktionov@intel.com,m:kuba@kernel.org,m:vadim.fedorenko@linux.dev,m:edumazet@google.com,m:netdev@vger.kernel.org,m:richardcochran@gmail.com,m:donald.hunter@gmail.com,m:linux-kernel@vger.kernel.org,m:arkadiusz.kubalewski@intel.com,m:Prathosh.Satish@microchip.com,m:andrew+netdev@lunn.ch,m:horms@kernel.org,m:przemyslaw.kitszel@intel.com,m:anthony.l.nguyen@intel.com,m:pabeni@redhat.com,m:davem@davemloft.net,m:donaldhunter@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RCPT_COUNT_TWELVE(0.00)[19];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[grzegorz.nitka@intel.com,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_CC(0.00)[redhat.com,intel.com,kernel.org,linux.dev,google.com,vger.kernel.org,gmail.com,microchip.com,lunn.ch,lists.osuosl.org,davemloft.net];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: EA7BC323331
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSmlyaSBQaXJrbyA8amly
aUByZXNudWxsaS51cz4NCj4gU2VudDogV2VkbmVzZGF5LCBNYXJjaCAyNSwgMjAyNiAxMDo1OSBB
TQ0KPiBUbzogTml0a2EsIEdyemVnb3J6IDxncnplZ29yei5uaXRrYUBpbnRlbC5jb20+DQo+IENj
OiBuZXRkZXZAdmdlci5rZXJuZWwub3JnOyBsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnOyBp
bnRlbC13aXJlZC0NCj4gbGFuQGxpc3RzLm9zdW9zbC5vcmc7IE9yb3MsIFBldHIgPHBvcm9zQHJl
ZGhhdC5jb20+Ow0KPiByaWNoYXJkY29jaHJhbkBnbWFpbC5jb207IGFuZHJldytuZXRkZXZAbHVu
bi5jaDsgS2l0c3plbCwgUHJ6ZW15c2xhdw0KPiA8cHJ6ZW15c2xhdy5raXRzemVsQGludGVsLmNv
bT47IE5ndXllbiwgQW50aG9ueSBMDQo+IDxhbnRob255Lmwubmd1eWVuQGludGVsLmNvbT47IFBy
YXRob3NoLlNhdGlzaEBtaWNyb2NoaXAuY29tOyBWZWNlcmEsDQo+IEl2YW4gPGl2ZWNlcmFAcmVk
aGF0LmNvbT47IEt1YmFsZXdza2ksIEFya2FkaXVzeg0KPiA8YXJrYWRpdXN6Lmt1YmFsZXdza2lA
aW50ZWwuY29tPjsgdmFkaW0uZmVkb3JlbmtvQGxpbnV4LmRldjsNCj4gZG9uYWxkLmh1bnRlckBn
bWFpbC5jb207IGhvcm1zQGtlcm5lbC5vcmc7IHBhYmVuaUByZWRoYXQuY29tOw0KPiBrdWJhQGtl
cm5lbC5vcmc7IGRhdmVtQGRhdmVtbG9mdC5uZXQ7IGVkdW1hemV0QGdvb2dsZS5jb207DQo+IExv
a3Rpb25vdiwgQWxla3NhbmRyIDxhbGVrc2FuZHIubG9rdGlvbm92QGludGVsLmNvbT4NCj4gU3Vi
amVjdDogUmU6IFtQQVRDSCB2MyBuZXQtbmV4dCAzLzhdIGRwbGw6IGV4dGVuZCBwaW4gbm90aWZp
ZXIgYW5kIG5ldGxpbmsNCj4gZXZlbnRzIHdpdGggbm90aWZpY2F0aW9uIHNvdXJjZSBJRA0KPiAN
Cj4gV2VkLCBNYXIgMjUsIDIwMjYgYXQgMTA6NTU6MjdBTSArMDEwMCwgamlyaUByZXNudWxsaS51
cyB3cm90ZToNCj4gPk1vbiwgTWFyIDIzLCAyMDI2IGF0IDExOjIxOjI4UE0gKzAxMDAsIGdyemVn
b3J6Lm5pdGthQGludGVsLmNvbSB3cm90ZToNCj4gPj5FeHRlbmQgdGhlIERQTEwgcGluIG5vdGlm
aWNhdGlvbiBBUEkgdG8gaW5jbHVkZSBhIHNvdXJjZSBpZGVudGlmaWVyDQo+ID4+aW5kaWNhdGlu
ZyB3aGVyZSB0aGUgbm90aWZpY2F0aW9uIG9yaWdpbmF0ZXMuIFRoaXMgYWxsb3dzIG5vdGlmaWVy
DQo+ID4+Y29uc3VtZXJzIGFuZCBuZXRsaW5rIGxpc3RlbmVycyB0byBkaXN0aW5ndWlzaCBiZXR3
ZWVuIG5vdGlmaWNhdGlvbnMNCj4gPj5jb21pbmcgZnJvbSBhbiBhc3NvY2lhdGVkIERQTEwgaW5z
dGFuY2UsIGEgcGFyZW50IHBpbiwgb3IgdGhlIHBpbg0KPiA+Pml0c2VsZi4NCj4gPj4NCj4gPj5B
IG5ldyBmaWVsZCwgc3JjX2lkLCBpcyBhZGRlZCB0byBzdHJ1Y3QgZHBsbF9waW5fbm90aWZpZXJf
aW5mbyBhbmQgaXMNCj4gPj5wYXNzZWQgdGhyb3VnaCBhbGwgcGluLXJlbGF0ZWQgbm90aWZpY2F0
aW9uIHBhdGhzLiBDYWxsZXJzIG9mDQo+ID4+ZHBsbF9waW5fbm90aWZ5KCkgYXJlIHVwZGF0ZWQg
dG8gcHJvdmlkZSBhIG1lYW5pbmdmdWwgc291cmNlIGlkZW50aWZpZXINCj4gPj5iYXNlZCBvbiB0
aGVpciBjb250ZXh0Og0KPiA+PiAgLSBwaW4gcmVnaXN0cmF0aW9uL3VucmVnaXN0cmF0aW9uIHVz
ZSB0aGUgRFBMTCdzIGNsb2NrX2lkLA0KPiA+PiAgLSBwaW4tb24tcGluIG9wZXJhdGlvbnMgdXNl
IHRoZSBwYXJlbnQgcGluJ3MgY2xvY2tfaWQsDQo+ID4+ICAtIHBpbiBjaGFuZ2VzIHVzZSB0aGUg
cGluJ3Mgb3duIGNsb2NrX2lkLg0KPiA+Pg0KPiA+PlRoaXMgZW5hYmxlcyByaWNoZXIgZXZlbnQg
cm91dGluZyBhbmQgbW9yZSBhY2N1cmF0ZSBzdGF0ZSBoYW5kbGluZyBpbg0KPiA+PnVzZXIgc3Bh
Y2UgYW5kIGluLWtlcm5lbCBjb25zdW1lcnMuDQo+ID4+DQo+ID4+VGhlIGN1cnJlbnQgRFBMTCBw
aW4gbm90aWZpY2F0aW9uIGluZnJhc3RydWN0dXJlIGRvZXMgbm90IHByb3ZpZGUgYW55DQo+ID4+
d2F5IHRvIGlkZW50aWZ5IHdoZXJlIGEgcGluLXJlbGF0ZWQgbm90aWZpY2F0aW9uIG9yaWdpbmF0
ZXMuIEJvdGggdGhlDQo+ID4+aW4ta2VybmVsIG5vdGlmaWVyIGNoYWluIGFuZCB0aGUgbmV0bGlu
ayBub3RpZmljYXRpb24gcGF0aCBvbmx5IGNhcnJ5DQo+ID4+aW5mb3JtYXRpb24gYWJvdXQgdGhl
IHBpbiBpdHNlbGYsIG5vdCBhYm91dCB0aGUgY29tcG9uZW50IHRoYXQgdHJpZ2dlcmVkDQo+ID4+
dGhlIGV2ZW50Lg0KPiA+Pg0KPiA+PlRoaXMgYmVjb21lcyBwcm9ibGVtYXRpYyBvbiBwbGF0Zm9y
bXMgd2hlcmUgbXVsdGlwbGUgRFBMTCBkZXZpY2VzIG9yDQo+ID4+ZHJpdmVycyBzaGFyZSB0aGUg
c2FtZSBwaHlzaWNhbCBwaW4gdmlhIGZpcm13YXJlIGRlc2NyaXB0aW9uIChmd25vZGUpLg0KPiA+
PkluIHN1Y2ggc2V0dXBzIHBpbiBjcmVhdGlvbiwgZGVsZXRpb24sIG9yIHN0YXRlIGNoYW5nZXMg
Y2FuIGJlIHRyaWdnZXJlZA0KPiA+PmZyb20gc2V2ZXJhbCBpbmRlcGVuZGVudCBjb250ZXh0czoN
Cj4gPj4NCj4gPj4gIC0gZnJvbSB0aGUgRFBMTCBkZXZpY2UgdGhhdCBvd25zIHRoZSBwaW4sDQo+
ID4+ICAtIGZyb20gYW5vdGhlciBEUExMIGRldmljZSB0aGF0IHJlLXJlZ2lzdGVycyBvciByZWJp
bmRzIHRoZSBzYW1lDQo+ID4+ICAgIGZ3bm9kZS1kZXNjcmliZWQgcGluLA0KPiA+PiAgLSBvciBm
cm9tIGEgcGluLW9uLXBpbiByZWxhdGlvbnNoaXAgKHBhcmVudCBwaW4gcmVnaXN0ZXJpbmcgY2hp
bGQNCj4gPj4gICAgcGlucykuDQo+ID4+DQo+ID4+V2l0aG91dCBhIHNvdXJjZSBpZGVudGlmaWVy
IGFsbCB0aGVzZSBub3RpZmljYXRpb25zIGxvb2sgaWRlbnRpY2FsIHRvDQo+ID4+bGlzdGVuZXJz
LiBEcml2ZXJzIGNhbm5vdCByZWxpYWJseSBkZXRlcm1pbmUgd2hldGhlciBhIHJlY2VpdmVkIGV2
ZW50DQo+ID4+aXMgYSByZXN1bHQgb2YgdGhlaXIgb3duIHJlZ2lzdHJhdGlvbi91bnJlZ2lzdHJh
dGlvbiBhY3Rpb25zIG9yDQo+ID4+b3JpZ2luYXRlZCBmcm9tIGEgZGlmZmVyZW50IERQTEwgaW5z
dGFuY2UuIFRoaXMgbGVhZHMgdG8gc2V2ZXJhbCB0eXBlcw0KPiA+Pm9mIHByb2JsZW1zOg0KPiA+
Pg0KPiA+PiAgKiByaXNrIG9mIGR1cGxpY2F0ZSBwaW4gcmVnaXN0cmF0aW9uIHdoZW4gYSBkcml2
ZXIgcmVhY3RzIHRvIGl0cyBvd24NCj4gPj4gICAgZXZlbnQsDQo+ID4+ICAqIGRpZmZpY3VsdHkg
c3VwcHJlc3Npbmcgbm90aWZpY2F0aW9ucyB0aGF0IGFyZSBtZXJlbHkgaW50ZXJuYWwNCj4gPj4g
ICAgYm9va2tlZXBpbmcgc2lkZSBlZmZlY3RzLA0KPiA+PiAgKiBpbmFiaWxpdHkgdG8gaW1wbGVt
ZW50IGNvcnJlY3QgcGlu4oCRbXVsdGlwbGV4aW5nIG9yIGNyb3Nz4oCRZGV2aWNlDQo+ID4+ICAg
IHN5bmNocm9uaXphdGlvbiBsb2dpYyB3aGVuIHBpbnMgYXJlIHNoYXJlZCBhY3Jvc3MgZndub2Rl
IGRvbWFpbnMuDQo+ID4+DQo+ID4+VG8gYWRkcmVzcyB0aGlzLCBleHRlbmQgYHN0cnVjdCBkcGxs
X3Bpbl9ub3RpZmllcl9pbmZvYCB3aXRoIGEgbmV3DQo+ID4+YHNyY19pZGAgZmllbGQgdGhhdCBp
ZGVudGlmaWVzIHRoZSBvcmlnaW5hdG9yIG9mIHRoZSBldmVudC4gVGhlIERQTEwNCj4gPj5jb3Jl
IHNldHMgdGhpcyBmaWVsZCBmb3IgYWxsIHBpbiBub3RpZmljYXRpb25zOg0KPiA+Pg0KPiA+PiAg
LSBwaW4gcmVnaXN0cmF0aW9uL3VucmVnaXN0cmF0aW9uOiB0aGUgc291cmNlIGlzIHRoZSBjbG9j
a19pZCBvZiB0aGUNCj4gPj4gICAgRFBMTCBpbml0aWF0aW5nIHRoZSBvcGVyYXRpb24sDQo+ID4+
ICAtIHBpbi1vbi1waW4gcmVsYXRpb25zaGlwczogdGhlIHNvdXJjZSBpcyB0aGUgcGFyZW50IHBp
bidzIGNsb2NrX2lkLA0KPiA+PiAgLSBwaW4gcHJvcGVydHkvc3RhdGUgdXBkYXRlczogdGhlIHNv
dXJjZSBpcyB0aGUgcGluJ3Mgb3duIGNsb2NrX2lkLg0KPiA+Pg0KPiA+Pk5ldGxpbmsgbm90aWZp
Y2F0aW9ucyBub3cgYWxzbyBjYXJyeSB0aGlzIGFkZGl0aW9uYWwgZmllbGQuDQo+ID4+DQo+ID4+
V2l0aCB0aGlzIGluZm9ybWF0aW9uIG5vdGlmaWVyIGNvbnN1bWVycyBjYW4gZGlmZmVyZW50aWF0
ZSB0cnVlIGV4dGVybmFsDQo+ID4+ZXZlbnRzIGZyb20gaW50ZXJuYWwgb25lcyBhbmQgaWdub3Jl
IHRoZSBsYXR0ZXIgd2hlbiBhcHByb3ByaWF0ZS4NCj4gPj5BcyBzaG93biBsYXRlciBpbiB0aGlz
IHNlcmllcywgSUNFL0U4MjUgZGV2aWNlcyByZWx5IG9uIHRoaXMgdG8gYXZvaWQNCj4gPj5yZWFj
dGluZyB0byB0aGUgZXZlbnRzIHRoYXQgdGhlaXIgb3duIHJlZ2lzdHJhdGlvbiBsb2dpYyB0cmln
Z2Vycw0KPiA+PndoZW4gYSBzaGFyZWQtZndub2RlIHBpbiBhcHBlYXJzLg0KPiA+Pg0KPiA+PlRo
aXMgY2hhbmdlIG9ubHkgZXh0ZW5kcyB0aGUgbm90aWZpY2F0aW9uIG1ldGFkYXRhIGFuZCBkb2Vz
IG5vdCBhbHRlcg0KPiA+PmV4aXN0aW5nIHNlbWFudGljcyBmb3IgZHJpdmVycyB0aGF0IGRvIG5v
dCB1c2UgdGhlIG5ldyBmaWVsZC4NCj4gPj4NCj4gPg0KPiA+SSB3b25kZXIsIGRpZCB5b3UgbWlz
cyBteSBjb21tZW50IHRvIHYyPw0KPiANCj4gQWgsIHNvcnJ5LCBJIGZvcmdvdCB0aW1lIGZsb3dz
IG9ubHkgb25lIGRpcmVjdGlvbiA6KQ0KDQpIaSBKaXJpLiBUaGFua3MgZm9yIHlvdXIgcmV2aWV3
IQ0KWWVzLCB2MyB3YXMgYWxyZWFkeSB0aGVyZSwgb25jZSB5b3Ugc3VibWl0dGVkIGNvbW1lbnQg
aW4gdjIuDQpTdXJlLCBJJ20gZ29pbmcgdG8gdXBkYXRlIHRoZSBjb21taXQgbWVzc2FnZSBpbiB0
aGUgbmV4dCBpdGVyYXRpb24uDQoNClJlZ2FyZHMNCg0KR3J6ZWdvcnoNCg==
