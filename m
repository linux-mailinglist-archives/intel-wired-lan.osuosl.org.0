Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C8367901332
	for <lists+intel-wired-lan@lfdr.de>; Sat,  8 Jun 2024 20:14:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 72D0C42569;
	Sat,  8 Jun 2024 18:14:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Cg9MjJqc9FEx; Sat,  8 Jun 2024 18:14:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 381F341985
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717870474;
	bh=Vqk8Xfad8m94HtyOExjALxPU0itgoxhzVEVc/2/+Okg=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=h9zPWlHg+19JqQSP5K+Od8RJLZMY+IzseHQFzUC3oT75eFyeRVM+5Xmglq5mbMPGO
	 /eh9dxrYnTDs6R6PSrdDHFJFQ05RPB8sVGmaGkeAElwuVqpuEB862EE/NCe7fHjUY4
	 YHu7tQWDgSnwuWCLqO1zM3BfA/rSFRqqj/02ezdxaJor/2fS14Y8w8c9P80dB2BwBG
	 jAfkrs+dHMqYqOOLQ9nzl9M+/wSV6AjVdDaGbmbHa/Yw1bI4N9WQ43hcc/AfB2SUn3
	 QPR95ZCjIhgs5jJj+drGEYZHiaGfgR0YfMdhWib3LdzZA4phRPQasp9iR+duMOy6f7
	 /SqtfIoeGGe7g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 381F341985;
	Sat,  8 Jun 2024 18:14:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 91CC81BF408
 for <intel-wired-lan@lists.osuosl.org>; Sat,  8 Jun 2024 18:14:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7CE65416F1
 for <intel-wired-lan@lists.osuosl.org>; Sat,  8 Jun 2024 18:14:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id C_1TzylKq_qs for <intel-wired-lan@lists.osuosl.org>;
 Sat,  8 Jun 2024 18:14:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=anil.samal@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 1DAC3416D5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1DAC3416D5
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1DAC3416D5
 for <intel-wired-lan@lists.osuosl.org>; Sat,  8 Jun 2024 18:14:29 +0000 (UTC)
X-CSE-ConnectionGUID: 4TDH4sXcRoOgp4BGXUQU/w==
X-CSE-MsgGUID: vmmj/amgTKiYpoFPVh5u3Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11097"; a="14714549"
X-IronPort-AV: E=Sophos;i="6.08,223,1712646000"; d="scan'208";a="14714549"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2024 11:14:28 -0700
X-CSE-ConnectionGUID: Z8y8+p5xSm+Vh3K5QU7JIQ==
X-CSE-MsgGUID: iPcP5pasT5qpqGMuiGBSVg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,223,1712646000"; d="scan'208";a="43768198"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Jun 2024 11:14:29 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Sat, 8 Jun 2024 11:14:28 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Sat, 8 Jun 2024 11:14:28 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.174)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Sat, 8 Jun 2024 11:14:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AL65rVJXZbtwiD0f1E96N5bVHnmI8Kkv91v+tF9PctNOIuVAKGttQBpXu2eQhSFAa33l/qVFfHVxhVXmjTaAIydUARQ9l5Uk3qR7SmSjkgD1VXimhakPA8o8D8zWVbE2m2lRk9VIcs83NnrxdQpDMQf2binA0dCIiYG9NyXC9X5yJsGFk0muVl5manZnFrH6PjN8x/oWmN7PL2fN3rUBpYv1tA1WdvFtn5Jzur/QLlKZ+dDVNXpT3y+m/aFYPSsh3nug3gjnVMEHyY2knv9lBROghzaO3P02ZjFbVFluhK4TApVW2QzLYKiNgXpIMtLVnJxY8+FrDQOxr3OpCqn4rQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Vqk8Xfad8m94HtyOExjALxPU0itgoxhzVEVc/2/+Okg=;
 b=PTjYrcEU5JVvkSBYa40AiD39bSYEJnRi7S/lzVdXHJETw+KqDlhYBygVKCrREi0uL+maqknYVpezUHDVDVSiIr9yYdgWx+UNJWn+UFj9jHFLGglycjRIW7vhZ8miW6lKWejaj1UiOaaJ5cocBKCQNwysV8aX2VraQTGCbpulsD/Yffh87HrJxsOVTLdHIQWAEls3/ww8dhV7u1SK4ajKMNeE6oqMkuYK9UOj5dibvWHZv7VvBvgk8jqdfTSCLBZEGjWnRX61m3lcABEIzirGMSgsqyJ/QjCgeEZSJ7PAbX/VDwY8xoywDsdOCXOKsW5hvVUPJjcMHey0BLLD0M+X8w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS7PR11MB6037.namprd11.prod.outlook.com (2603:10b6:8:74::5) by
 DS7PR11MB6038.namprd11.prod.outlook.com (2603:10b6:8:75::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7633.31; Sat, 8 Jun 2024 18:14:25 +0000
Received: from DS7PR11MB6037.namprd11.prod.outlook.com
 ([fe80::f0fa:ac63:c0ee:4de1]) by DS7PR11MB6037.namprd11.prod.outlook.com
 ([fe80::f0fa:ac63:c0ee:4de1%2]) with mapi id 15.20.7633.021; Sat, 8 Jun 2024
 18:14:25 +0000
From: "Samal, Anil" <anil.samal@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [PATCH iwl-next v3 0/3] ice:Support to dump PHY config, FEC
Thread-Index: AQHareG42eK2oY4w50+b6olx2znAgbGm4huAgBdLskA=
Date: Sat, 8 Jun 2024 18:14:25 +0000
Message-ID: <DS7PR11MB6037D67A617D1C6FC667EEF799C42@DS7PR11MB6037.namprd11.prod.outlook.com>
References: <20240524135255.3607422-1-anil.samal@intel.com>
 <2fe273b9-dd6b-408c-bc69-e12c00b4141d@intel.com>
In-Reply-To: <2fe273b9-dd6b-408c-bc69-e12c00b4141d@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS7PR11MB6037:EE_|DS7PR11MB6038:EE_
x-ms-office365-filtering-correlation-id: 20fd8af9-7d77-4354-e0e5-08dc87e6d47b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|1800799015|376005|366007|38070700009;
x-microsoft-antispam-message-info: =?utf-8?B?WWdJajREZE01Y2R4ajMyZ2YvWTJzUXVha1I0MU5rSHpJdUYvK0FCOVF4bkJs?=
 =?utf-8?B?VklHU0pYZXhCTXFieVBUR2xnQVlKc2dVRmV2TEF1NjQ3V3FSQVRWb1pIclEr?=
 =?utf-8?B?aDZlSXM2VVlTSit4ejhjM2pVR1BUdFBra295djZUc0lDelZXQm5RdjlaL1hj?=
 =?utf-8?B?cU5FeDVVdkptb3c4NEE0a0M2b0ZNMHJUNEoyUTl1cE9ucXpzOG4yclVLODNL?=
 =?utf-8?B?VE9HKzlPOXhWcS9hNm9NODlpTkc5TjIwWkRRNmJIeHFrQXArVXcwVExYb1FM?=
 =?utf-8?B?cTZtRWZRdEZUcWhTeGoyRU9iSHd0TDBNRGZUdThuY2J4V2NrelcxaE9Tb2dE?=
 =?utf-8?B?RVdpcUVZTHBmUG9Vb3FQaDFHNzJzaEV3bGJBd2JzVXNNNGlCYWRWRmJRMUIr?=
 =?utf-8?B?V0JPanRPVU1pQ2QvSGpCZXNMMWplWGo3ZnZDVGxBdWNDVkRuNlUwaVJvWDdI?=
 =?utf-8?B?UVNoMVd6RjZjR2FlMjMwWG1FTHlDRzJheEJ1dm5CVWlGdzZRSk5pc0N0QXNN?=
 =?utf-8?B?enB4TnQyRitTeHFNdkMxeTkrb2hYa0dLYXI5VVFDR3ZpK01BcU50bGFLQ1Y1?=
 =?utf-8?B?dWhDNGZvdE1JYktrWUptREpIdm00Wm9CWDVVZ3JZTEVlN3FMWjVxRVFYL0lF?=
 =?utf-8?B?bUt0WHVEM09CU25JZlNjakFXK3pVdTh6QXpGUnRWcXJnWHFwbThoOVdETEhk?=
 =?utf-8?B?d1ZvbHZ2VWdoYWFscUR2MFlaS2l1ckRack91VUkreGdMUjlCUTdjQk01bmtQ?=
 =?utf-8?B?YmJHMWRTbUNLYStPWXdIbGNKOGh1MzMzRmdYWWlrQmFzNkRIVXZJZW0zQ28z?=
 =?utf-8?B?UkxsQ1dGVDFhcG1weFhSc00xN09mTWJSemRPL0srelIvNDZoTnFTZUNPc2pw?=
 =?utf-8?B?eGl5aFpQZURYb0RiOS9zTW1menBYc0ZHVDFRNFppTUFGR0tyU0lZdUhlY1Bx?=
 =?utf-8?B?alR6WnhvRm41Q2ZRaFF0bkF4SDFXbWRJNjdzWGx4cWZRNzJyN3NTeTFKSWpR?=
 =?utf-8?B?V2tENmxrVXpDVmZkWHQzVnJWZ2pXS2htMjJZcjlQVUZpMGFvbThBK1BldGIy?=
 =?utf-8?B?aS9MWkhGam9KY1NlZUVEUjNUOGpKOEgyQm1qQTZFK3lnS0JCR2JHZGdSczFi?=
 =?utf-8?B?ejRlaVFBSDhqZTZlc1RIVUorRldzaDhzbWNVNXl3d2N1amdtek84dGlTVjdh?=
 =?utf-8?B?V1VBaVgvOE1NMFp0VHVWT3JjNzh6a1R6SHBPVmN2bm40dklwL2V5MmxZeVRY?=
 =?utf-8?B?L2xyN1dWVFJCQ2hWeE0xL3JVSkduYjliVjYvUm9zWVpCdXppT2RHUFdMMHFl?=
 =?utf-8?B?akdxZjJJbTNrRXUvNStmMlRMRUd2K0dQVUVmeitmUElNcnNLbHRYdk5MOG9l?=
 =?utf-8?B?ajVWSFNEQmtzYnFhRFlKL1p0OWNTZjJucTlQcS9TY0dDZU5BQkNFWks3K1dh?=
 =?utf-8?B?a3FDRUlYUCt2N2JEVUw5dGJOODk5UHFqNXoxcVRyVmxFaFRzK0ZmN0JQRExn?=
 =?utf-8?B?YmZrMEtPd3pRSDlzK3NvSFZnbHN5aXJtblAzREZuY2ttWGVrQm5rRVp0Vm9B?=
 =?utf-8?B?cnhjMkozbnh0Z3Jyek55OXJ0TEgyK3RpOTNoT21PL1VCVTBqWWxhRFUyYjJT?=
 =?utf-8?B?NmJ6VXl1bFNsanNGTjc4SWZwVHphRWgrU2Qxc2x0aE13Z2NXcmJaRjM1QzNL?=
 =?utf-8?B?cEJnaTJUdm45NXZoQkZQZWFOdWt4eXN0VnlmbUtoZ294MlJBZEk2NXJwUWtB?=
 =?utf-8?Q?myRxvgGYYNjIhM6AV+UWf87pwnyW08+ZkV5S/K8?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB6037.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UzBiQktDa2oreWhoYmFWb3Q2Y2k1VXBna1JhdTJHb3VsNVR3b3c0a3dxNlg2?=
 =?utf-8?B?a2tsaDd2M3BuS0NXaThHMWcrWklPZ1lmZHAxek9jb29ZSWM2V2RaOFUyNlBx?=
 =?utf-8?B?cTlicXFxT3hJSlhGSjNFVlpmdTJMZFUzN3crYmkrajh6d0NtT0VETTQ0TTcw?=
 =?utf-8?B?aFQ1NjNmd0ZUMkNoRER6RWcyZFcyaU1CeWhTeFVBdytxZ1JRZ1gxa2tYaDlC?=
 =?utf-8?B?a05jeEVIUFlMcDVnZGgzUFBSK21vT0o4czhhWnlzVWVocU53Smg3Yzh4VEZS?=
 =?utf-8?B?R3h1eU9yUkIrS0xYTG4vQzUvbjBwa0E5bHNVdEVjR1o4bkNRdGFOTUYzaE9E?=
 =?utf-8?B?a1I5VXNCc1RLUkQ1UmIxc3BwKzFhajZudmFzbzFVcDdlRFpGL2RDSWx2S21Z?=
 =?utf-8?B?VStqTmRkcjc1WGN3aG1KbWErcWYxbVRyT2pzb3BhdXVaL1N2V0hlRDNWRlY2?=
 =?utf-8?B?S0s5cWFxbzh0VXpCYUZjSVIxVnJZTzNHN0NNYUJuQmpOSllkQU44aU5tUUkz?=
 =?utf-8?B?WTZwdmYrMXNHTnYxSHJRL3BoclNpMDFLdk9BR2JaZDRQK2NKSUt6cXhpK3Nz?=
 =?utf-8?B?RTd6eGdOMjU0RWd4UnFnS2dyK2tFV0JRdDU3Ty8waU9GUnY5WFF3Vk5tLzVN?=
 =?utf-8?B?S0ZtRXE0aG5SdFhaSTZaeXBmb1lka1BwelJRbmZ5cmU3WDlKWitkMmRBOUs4?=
 =?utf-8?B?QTFpZU1DS0hwSHF5TE03SHFJY2dDVm1ONzZQaEZSL1BKUkJYV1VNb0lXRG5I?=
 =?utf-8?B?YndpWm96K0JwNWI2Zk9ubHpBN3BYQ1owREUrdEpTSUNBVzJNdVhCNVgwd2p4?=
 =?utf-8?B?aEVWbXNBMnRZb25zb2xtYW1CRHhRcm1NUThib2NuN0R6Zm9uVHlEeFl5dDhu?=
 =?utf-8?B?b2gzdkpZcC9WSmFqaUZpYWlJQjdyODMyOURZNjR6VlZwMmNId3c2NFdGb0M0?=
 =?utf-8?B?UHN4Nk9OV0dQYm5RYjJpVTk4cVptNGE0QmJFcDdqQlJEZjY3N0l1Y0drSStw?=
 =?utf-8?B?eWpLNFNONjcvdVA4eisvUTFGZEo5Y0wyWHp1eUxBOGZRN1RMbVN6MTdCcXdI?=
 =?utf-8?B?U3BJWUhpUzRad1l4K2w5SWhiOHFPQld2N2FVRjJTMTllOUUzb1RRMXlWb3hO?=
 =?utf-8?B?MUx5bUFMcld0NmFLNnJMenVPcDRmeUR0R3lFaHBnTU1paDFncUhLRVg1L2ZM?=
 =?utf-8?B?Z1pHK3RmSmloTUNvUGw4NU8zMmhISnRrcDArMlBVT2JDUjgvYUZ5NkI0YTRI?=
 =?utf-8?B?OUxwbjlKZ0F6MTAzRmlQZkZLNlpWT3NoM3BUZWhtR215NkJyb2JXQmN3clhP?=
 =?utf-8?B?eGxNYisxR05FTExjbGFRb3J6V0Y3dlNQS0t3L29wNWFpa0lHWm9qMVFYTVd2?=
 =?utf-8?B?V3VSUWdDY25PeUlXYmcwVkRNNHpRTnRndEQzRmxuUFFQbFdBU2YyQ05JNG5W?=
 =?utf-8?B?em1Kb2JZZlc2elc1L01BR2I5WlljRy8vcWZoWS9BcUI0TTZXNnBTZUxTcGpt?=
 =?utf-8?B?TnJUd09xU2t2MWhOQzNKTEJ6TWs3UFF3S3ZGMHBBeUZyUzNCU1BmSS9Ib0JX?=
 =?utf-8?B?UXFjMjRVVXVRejBMKzJWa2EvOHZYU2ZMdG1JVE1xWHZja3NPdjBFYkVCUFFS?=
 =?utf-8?B?Y2FxcTV5K0Yxa1ZvMlMzQldRRldrekl0dFRiWUI3aVJUbG9WQit2KzNWQXB5?=
 =?utf-8?B?Rlh6NGphUnNzNy9YK1YrK2R3NXRlRTJhSkx6TkJKaTVoeGxMaVVnYlhqMjlQ?=
 =?utf-8?B?aDI3aUhCMndPL3hXeEM0TzQzOHYrdzJESzB2K0xVaGtmL21SSG1Nb2tKZnpy?=
 =?utf-8?B?RTk1aXd6UFlUL3JoKzArdDZqTG5WZXZWS2RzNmdSY2hmZEQ5YVI3UklKcm40?=
 =?utf-8?B?MDJ2ZzdYSFFSRmx1UVZmZmVMcytSSXF1cUdoRUZQdlJDaXB2L2xXUFRrSVk1?=
 =?utf-8?B?UTAxNUJsR29jSGYzMkdXTEFHU0R0TjU0OFdSd0lVOFg4QjdmODIrYVAycUl4?=
 =?utf-8?B?KzdrbUNyaUJTeXl0YldmQk8xRUN1UlU2ZnhBSXdHRC8wNDNzNjdpbm83Q29Z?=
 =?utf-8?B?d1UxY25QQkszVUM1d0RucHBHUUJaQUFqYjZ0bElxTTJpQmo4R3FBZTFCU29B?=
 =?utf-8?Q?bjQkOltoPpGiOR3v1sKR79pEA?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB6037.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 20fd8af9-7d77-4354-e0e5-08dc87e6d47b
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jun 2024 18:14:25.6562 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mnbFiUIh717sor9v8iGQh+NBDArfeXh1rcuwvGEhD1H3eHZjq2FmkDbVl4oEw0bIH6zAEcghEBLE0exSPM2F6w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6038
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717870470; x=1749406470;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Vqk8Xfad8m94HtyOExjALxPU0itgoxhzVEVc/2/+Okg=;
 b=ftcqd7iJ4zPUz0TLiq/GuA+T+GsbUOLUw2vjOJiBv5Jr61RlD9KCGyMx
 YFVuJ2ha8Vhffi6RJuAad7H0zFIuc3nEW+s1TgZrM0njwVTzg1nnWcV/K
 UBtZNLcKgt9SbbeU1rZfKDMdbr9i5bonBp+MZIK5V2kN76uixCD/BINfB
 sOWpqVTUzFSjLXTw3oG3r39oxpVfQ8lJLUGtR44hPi76R0oUbALA7Ok7G
 A9cLD8d9nBHrKhv2huS65qWSkwexcNral7dybovGYoZKizEjU3BU6fD/r
 YypJajR31MB0IQKIFcLGWk5WG+NrzTpS97DBnMtudvnyGh/DZ034yrHwm
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ftcqd7iJ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 0/3] ice:Support to dump
 PHY config, FEC
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Pepiak,
 Leszek" <leszek.pepiak@intel.com>, "Czapnik,
 Lukasz" <lukasz.czapnik@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

SGkgSmFjb2IsIA0KQ2FuIHlvdSBwbGVhc2UgaGVscCBtZSB3aXRoIHRoZSBicmFuY2ggbmFtZSB0
aGF0IEkgc2hvdWxkIHJlYmFzZT8gDQpMYXN0IHRpbWUgSSByZWJhc2VkIHRvICJkZXYtcXVldWUi
IGJyYW5jaCBvZiAiZ2l0IGNsb25lIGdpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVs
L2dpdC90bmd1eS9uZXh0LXF1ZXVlLmdpdCIuIA0KDQpMZXQgbWUga25vdywgaWYgSSBzaG91bGQg
dXNlIGEgZGlmZmVyZW50IGJyYW5jaCBmb3IgcmViYXNpbmcuIA0KDQpUaGFua3MNCkFuaWwgDQoN
Ci0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQpGcm9tOiBLZWxsZXIsIEphY29iIEUgPGphY29i
LmUua2VsbGVyQGludGVsLmNvbT4gDQpTZW50OiBGcmlkYXksIE1heSAyNCwgMjAyNCAyOjExIFBN
DQpUbzogU2FtYWwsIEFuaWwgPGFuaWwuc2FtYWxAaW50ZWwuY29tPjsgaW50ZWwtd2lyZWQtbGFu
QGxpc3RzLm9zdW9zbC5vcmcNCkNjOiBuZXRkZXZAdmdlci5rZXJuZWwub3JnOyBQZXBpYWssIExl
c3playA8bGVzemVrLnBlcGlha0BpbnRlbC5jb20+OyBLaXRzemVsLCBQcnplbXlzbGF3IDxwcnpl
bXlzbGF3LmtpdHN6ZWxAaW50ZWwuY29tPjsgQ3phcG5paywgTHVrYXN6IDxsdWthc3ouY3phcG5p
a0BpbnRlbC5jb20+OyBOZ3V5ZW4sIEFudGhvbnkgTCA8YW50aG9ueS5sLm5ndXllbkBpbnRlbC5j
b20+DQpTdWJqZWN0OiBSZTogW1BBVENIIGl3bC1uZXh0IHYzIDAvM10gaWNlOlN1cHBvcnQgdG8g
ZHVtcCBQSFkgY29uZmlnLCBGRUMNCg0KDQoNCk9uIDUvMjQvMjAyNCA2OjUxIEFNLCBBbmlsIFNh
bWFsIHdyb3RlOg0KPiBJbXBsZW1lbnRhdGlvbiB0byBkdW1wIFBIWSBjb25maWd1cmF0aW9uIGFu
ZCBGRUMgc3RhdGlzdGljcyB0byANCj4gZmFjaWxpdGF0ZSBsaW5rIGxldmVsIGRlYnVnZ2luZyBv
ZiBjdXN0b21lciBpc3N1ZXMuICBJbXBsZW1lbnRhdGlvbiANCj4gaGFzIHR3byBwYXJ0cw0KPiAg
IA0KDQpXaGF0IGNvbW1pdCBpcyB0aGlzIGJhc2VkIG9mZiBvZj8gSSBiZWxpZXZlIHdlIGhhdmUg
c2xpZ2h0bHkgY29uZmxpY3Rpbmcgd29yayBhbHJlYWR5IHF1ZXVlZCBpbiBJV0wgbmV4dC1xdWV1
ZSwgYW5kIHRoZSBOSVBBIGF1dG9tYXRpb24gaXMgdW5hYmxlIHRvIGFwcGx5IHRoaXMgc2VyaWVz
IGZvciB0ZXN0aW5nOg0KDQo+IFtJV0wtTklQQV0gUGF0Y2g6IGh0dHBzOi8vcGF0Y2h3b3JrLm96
bGFicy5vcmcvcGF0Y2gvMTkzOTA4OA0KPiBQYXNzOiAxIFdhcm46IDAgRmFpbDogMQ0KPiANCj4g
UGF0Y2g6IGh0dHBzOi8vcGF0Y2h3b3JrLm96bGFicy5vcmcvcGF0Y2gvMTkzOTA4OA0KPiByZXN1
bHRzIHBhdGg6IHJlc3VsdHMvNDA4MDk4LzE5MzkwODgNCj4gDQo+IFRlc3Q6IGFwcGx5DQo+IEZh
aWwgLSBQYXRjaCBkb2VzIG5vdCBhcHBseSB0byBuZXh0LXF1ZXVlDQo+IA0KPiBUZXN0OiB0cmVl
X3NlbGVjdGlvbg0KPiBPa2F5IC0gQ2xlYXJseSBtYXJrZWQgZm9yIG5leHQtcXVldWUNCg0KTm9y
bWFsbHksIGJhc2luZyBkaXJlY3RseSBvbiBuZXQtbmV4dCBpcyBmaW5lLiBVbmZvcnR1bmF0ZWx5
LCBJIGFtIGhhdmluZyB0cm91YmxlIHByb3Blcmx5IHJlc29sdmluZyB0aGUgY29uZmxpY3RzIHdp
dGggdGhlIHdvcmsgb24gdGhlIHF1ZXVlIGFscmVhZHkuDQoNCklmIHlvdSBjb3VsZCByZWJhc2Ug
dGhpcyBvbiB0b3Agb2YgZGV2LXF1ZXVlIFsxXSB0aGF0IHdvdWxkIGJlIGFwcHJlY2lhdGVkLg0K
DQpbMV06DQpodHRwczovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC90
bmd1eS9uZXh0LXF1ZXVlLmdpdC9jb21taXQvP2g9ZGV2LXF1ZXVlDQoNCg==
