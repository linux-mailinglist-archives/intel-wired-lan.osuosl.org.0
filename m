Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kOeyOeeQBWrfYgIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 May 2026 11:07:51 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B14953F977
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 May 2026 11:07:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 202D680E80;
	Thu, 14 May 2026 09:07:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aCYls_iUtm7j; Thu, 14 May 2026 09:07:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 40C2380DFD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778749668;
	bh=MVQn969DadsAEHCsZlkDTYhqG6YynQzIXcGIlyXzzUc=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=9FrDutpW2mB78qk9TRHWTGmsRKBLh2I+J2Y2g59DRRLj114SSP7GU6dza8lcGmt48
	 lpiYPRKp6WKPHvfZKJt1VP8kdvIXDfkJ82UNtdq1cWJ2jw2Zsz7371RKcQqVC48iCu
	 hzPOwSSAcsxIY1sHKNQHxoIJM6Ycg6wELWejKHB0BgapsRAuxpxuQP3PQpoAMkvhG9
	 WfE5t+Gki30W+HYHuEq/WwrMsbpfejPvzVSjS/P+yLRrU24i65DeCUZjb6L/2g3LFo
	 3dT6Q7/PD3iuy6/JXd0M1VgOMRPqVtEZ72FKxPlXi0/HpUMPip8b2yHOnnIu8OowmF
	 gfW7tSkzOW6rg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 40C2380DFD;
	Thu, 14 May 2026 09:07:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id B409B37D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 May 2026 09:07:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A55B640E62
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 May 2026 09:07:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YgDlxSHjitio for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 May 2026 09:07:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 9AAB940D3B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9AAB940D3B
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9AAB940D3B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 May 2026 09:07:45 +0000 (UTC)
X-CSE-ConnectionGUID: 9Is5wl1ARwyR6CHHwGKU7Q==
X-CSE-MsgGUID: G1fQKrzIT1eVEkFHIFDUDQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11785"; a="102357955"
X-IronPort-AV: E=Sophos;i="6.23,234,1770624000"; d="scan'208";a="102357955"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2026 02:07:46 -0700
X-CSE-ConnectionGUID: KvB2eGo6QuCGJ6t70FKTBg==
X-CSE-MsgGUID: pF6uHOOJTA+SmFVvv5MFdA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,234,1770624000"; d="scan'208";a="235276474"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2026 02:07:45 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 14 May 2026 02:07:44 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 14 May 2026 02:07:44 -0700
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.59) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 14 May 2026 02:07:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=C33DK2JNoAScxX6pTeJd3qAX5FJoOraCYZyw9xSet8GvA8imJ1wHlLx5UBMUYmYE3R0+1v3K4WkmYffNde5cfF1URqmFe+jOO7G9kpdOdU+MkWx7QCqDIVxJDZ7OR9b0jxfOSf8vkstSJtxJHzZhwWz5nqfDD1S80Y+6slg6wZDjq3YfI0NLr1HLlr3KOc/FPfsWS5F/FGFKy7/aW08vxXaJku+xI9lGAamb+YUrGttEOEapwLjASGONCUVxjf4I2eXU/FsKkMTkxdCSgHGju2RVKRbClMoxEmja8zcvWItaMx4SEIDX5t1sxtpS5VzziWrNtM6fTeuZHPu24T//kQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MVQn969DadsAEHCsZlkDTYhqG6YynQzIXcGIlyXzzUc=;
 b=gxhzX21f8EbaVy+OO7DiSok7C/0u6QfQFfc5MaXj5vktGHuU8OqR18+E6WQ4CbcQzud/aogdbF/Is/5g4TA8r72jJUKIfiseaIi/qN+Y9xYuHjMXJhlZv22EpbUJGL8XjGzVL1SzaWbRLIaZUVigqpwpF7Hvu5dxwpvH92NEq5sUlmCx268oKJNisM1dsTkmJVkFscneBjw4Nzu5ooUtaPWtUx6C+5q8u5/YP8WkmfbN/sJxDpxPKmhAVDzLzz3JIfyunVX90RBJ0gO1HRKml88m2UvavP3Cbobl+mwogF0MQ6dEU+S5/M1M/Xmq6V84OotkOqamPtmojyypv5DdRQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by PH0PR11MB4790.namprd11.prod.outlook.com (2603:10b6:510:40::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9913.11; Thu, 14 May
 2026 09:07:36 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9891.021; Thu, 14 May 2026
 09:07:36 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Junrui Luo <moonafterrain@outlook.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Mitch Williams
 <mitch.a.williams@intel.com>, Greg Rose <gregory.v.rose@intel.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Yuhao Jiang
 <danisjiang@gmail.com>, "stable@vger.kernel.org" <stable@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v2] iavf: validate num_vsis in
 VIRTCHNL_OP_GET_VF_RESOURCES response
Thread-Index: AQHc428+dx8bzHBUnE+nbbBqP5/QmbYNO0Sw
Date: Thu, 14 May 2026 09:07:36 +0000
Message-ID: <IA3PR11MB89861B03BBF80E4210251CBCE5072@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <SYBPR01MB7881AF11C45AEDC0D4CA89C1AF062@SYBPR01MB7881.ausprd01.prod.outlook.com>
 <SYBPR01MB788139F8F31129E4B64E66D4AF072@SYBPR01MB7881.ausprd01.prod.outlook.com>
In-Reply-To: <SYBPR01MB788139F8F31129E4B64E66D4AF072@SYBPR01MB7881.ausprd01.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|PH0PR11MB4790:EE_
x-ms-office365-filtering-correlation-id: 06d19bbb-884e-4eec-a6dc-08deb1983def
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|7416014|376014|366016|1800799024|56012099003|18002099003|22082099003|11063799003|921020|38070700021|4143699003;
x-microsoft-antispam-message-info: 3lP4NtqsCkqE525Zc8bR3Te+OOehF1Z7+H+1zaOKccVPS268Lgyvzcb15yrWBqgdW1EJ7WpRO81rab57i7Cqsv+ioKZlVFS9DkrDOEy+oCkezy34e13FFqlzUcjNB4PkRGTKQ7hs1AMP7WCKV7EBHFRa3oDZkA8+8wHCz0jcYQRiUuPTb3AmeANKfq9QmG8exxG/qtN2E8Mrzg7Wf2MB3F2WKP4DCN1wh8CYLzqRhAVG5l3T8qCpmgDYe0Cy9jsrzRI8vAHDBuptL/h2gpA6269PmXwgOSxeYlFl/bltSUhPG0owZSmh7mk+BBxetmdkYqJyHSjAAYziyvXTHnZ4a7M2dqgB4turB/q6C+r7umPdIYjGYr9La2MND1WHkKJWpz3JDyD1qthTUYL9cN5t/SijhBYpYZyPV8hC0Lvq8P7ZY9JlfhKoqhIeTmSLxyMSPsTKHUa/x0YcAu1Ygf4fao4uwvixerG5MQmLODEvHRrJHMGwtWoNTDb03m3eBZxoIxgCvXiqWjnr2TgHqsHu1cDw9bh1OjiXggs3wDuQPChR/MV/UnchbimpMrZ/O4QiCIUluK7a62NoWcGf0O3k5w2m1dHIyc/na49l1Oqy4Yvg1u+6lX1zmwI57TQnbFzxnfbLatcaI8v6sgvqqXw6tBNl+7uzAlVNDxK8at5IKBi8M44gwbG3iEp1vTn1WJ5PQo3lnZl/U/CT5VcEF5ddyj+E92RIwbWiTkB3rcc62DymwoAWUjA1YeWbJLl3ejYXwJhIbwrolEgJgVwUhcYQHQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(366016)(1800799024)(56012099003)(18002099003)(22082099003)(11063799003)(921020)(38070700021)(4143699003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NjRwaXZSMGZNanh1ZHhzQ3hKR1VpS3RIeFRSbmZ0bjh6ZWZlZk54Slp3TFRy?=
 =?utf-8?B?NjRXYk9iaU55MDQwUnZmaDE3VVc3OTVCakc5ejVMTzI3ZjB4cFhzOE9ZT08v?=
 =?utf-8?B?SEdXODVMcHp5NkplT1NOUStEZGJreFRXNDNYSE1sZ1BXMWlyKzNrVmtiNmFU?=
 =?utf-8?B?TWN4dXF3cnVtQjlVYXduS1J3NFZKbnFsOEIybU1lUXZGSXdhSmZwWGNVZzNp?=
 =?utf-8?B?eCtwZEVHLzBadUZlc1NrTk1DWDdnTVVvMmJrUE1kYzdwWnBQd3BSS0gvTkNT?=
 =?utf-8?B?b25URjBWVnc2cWpEVXBhenk0MzJGekx6VDh3cmVDak5qSmVNdkhveGVpN2d2?=
 =?utf-8?B?K0ZlM25jOTdybHlIU2llYy9rUWltL3lJcmZ1SXZVOWliV0xXeWdPaWtSV0VH?=
 =?utf-8?B?OU5qMmp3UE1XSk9BeFp5bHVFWk83VitLMjNCQXRFb25PSTZjR3RLUFdkdHgr?=
 =?utf-8?B?dU9GU2JGY3dieVFudXkrbm0zMnh3eGVMWURNS3IrRlFjK2daYVRJTE45RGxN?=
 =?utf-8?B?UjVKajN0QTI5THo1c2N1OGlMK3MzQ1pJdnBOK01NMlJoazdJWkNWR0xWZVhu?=
 =?utf-8?B?WnR4Z1pDWTJML0g5MG5RT1VlR3lFcnUvU3hUTWRFSWlVSHNGSGk0NkR3KzhD?=
 =?utf-8?B?M1lUaDdpYjYvZlBTVnZkaXlXZHJZN3BMZ016UHhmbE02Y3JEYUREaEwrS3JI?=
 =?utf-8?B?Wk9KRHdpWDIrV0RWK0t1ckd5M1huWktHcElaUDRmSEp3aHc4OE94bThLMEhV?=
 =?utf-8?B?OFBVZnNTYmlRL0hib0U3TklPSThXMGc4YnltOGhIYmdXcEpnT0NYWEdneVV2?=
 =?utf-8?B?V3RPTU9KNkxRMngyUlNJSjcvNUxDbHpadzkyczlaQ2FzZU51b0Qzb1YweDIv?=
 =?utf-8?B?QStjUGcwTkJ5Yzh0V0paVHFzczdEdE4yOU1SekRQczk2S3hlaldhc0FiQW95?=
 =?utf-8?B?OGhvR1pMNE9VdFlqc3BkeGJPZGhnS3kxQnlVUVE1ay9BdU5yVE9STFdDT2NI?=
 =?utf-8?B?Zlp5cTlwRDQ0YWRDTUF2OUtSeGR4YXZNWjAyL1pDazJUN24vcUQvMW54bnNI?=
 =?utf-8?B?bFV5b2RSY0N4NVA1a2htVVlZZ0FPVHRpclZ0a1pnbkxXNkR6YXR3em9WZC9o?=
 =?utf-8?B?S21xT2NobFFrZGJ4ZU1aZFAzY0NsaDhESXpkZGc0Wnh6NkgvbmJGK0tBN0xF?=
 =?utf-8?B?b2NRYzdDQW1VQmd2aGIzQ3BDM21XU0ljSnBWc1RuWUVmc0tUV2dhMEtMUTJu?=
 =?utf-8?B?YVFDMnMyYVlZcncvc0VkQzBUNVk5VGtUQzhqRHdzd2NvQWpkaEg0TW9UUWY1?=
 =?utf-8?B?MDI2ak51WGc2ZnJmT2x4U2xjWEdZTHA4N29oMm1KNjR3L0hoY0EyUUFtb0pl?=
 =?utf-8?B?Z1BVMEZoQzZ3WUhsdXZpQ0lTNFR3R0t5Z0lqV1hZOU8xWDJjS291RGRSY2ZT?=
 =?utf-8?B?VmtmYzlJcEVNWHphL2t0Q0U2UGlaUk5NN2k2OWZSaHFIRTJlcHRLVTBXaitV?=
 =?utf-8?B?OXZ6Q0gzMXJxcXFKZkRud0Y0S3pEcktDMGJzSWtiWFNneEZuN1RQSVB2aHdK?=
 =?utf-8?B?N0liNUsrczdrNVR4bkg1Mkc1eFJvb1VQS3g4cXVwem1kZFVpL1FnSi9YMU1i?=
 =?utf-8?B?SXlEUzNOWldLQ2JXeUp3dUEwem1iTFJ3YS9PTFk5SEZ4MngrdkVWd1FkRkpr?=
 =?utf-8?B?dFdacUYwVVpJNk45OGxySDNSeS9wdGYwRTd2Vzh3TFNJTDVDbWRtc2p1RVNy?=
 =?utf-8?B?dGMwT0VRM20xU3h4UFBEL0hzd1hUMlB1dFBtS0h5MWQ4MUd2ZCs4ZXFCMDBn?=
 =?utf-8?B?M2FGTGdNMW93KzZDdnY2Mi9kYnoxWTBMQ3dld2lLTDlPTTFUcTlFajhnOHBn?=
 =?utf-8?B?cU5GMmwxYjl3OU96b2ZtR1RJVHBibUhOZ3lwK0s0YU1QMHpnaG12U3g1alQ1?=
 =?utf-8?B?Z3duZ2tCVXdxYkwzTXQvUFJTWTZCai9iazBpUnBRZkFXVmRmQTA5VWZXYlFO?=
 =?utf-8?B?Qzgza3FSd0ovS2U2UnF5bjR3WERTZzQrT1o0MmJmRmRNZTFodlpzekhIMzVz?=
 =?utf-8?B?SWFnZnJxY3ZwZnhkRFBRK241dlBmMlZMRmswaFphZk5ESTBxR0lIS1Rkazkz?=
 =?utf-8?B?WW03Ri85anFORnlTTG9uL1RVQ1JjTmRMSEtLQXcvWCt1ZFlpTXExOWUycW16?=
 =?utf-8?B?NUdUWS9XdlZLL2FITGE3NWc5SGNWdENQOTV1M0RrZmtCNmR0cnNFb2RNdmp2?=
 =?utf-8?B?YWYzOGRqWkl3Q0ZTYUdTbERsVXV5ZzZnTlIzc3pyQlFxVS9CMjk5MGVLOTcw?=
 =?utf-8?B?dmlxdDRlVnZTOVVjWEQrbXV3bVhvL0lXKzdROW16VGU5ZHNlTVhoaHl0L3B3?=
 =?utf-8?Q?pQt5L6kUPsm2mhKQ=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: VcbehrG2CIvQL3X8ndKHZ+6xu9DUq4hnl8wzJBVpFwSKYIcc8QENKkyntqzEs5iyeaBFCc3PqXZvuLaAO+BFQFV2b9iaJKj5rEcLSDHd4b0yognRsuH7ecAuoxKGO8/UlwoOQnzyPIOKqxPLbO3d36cn/VAs93XgOYgNkztecr0widLTFhJIhy2bT4FYqIWl3nR8DIPGHQO7v7C7xxrxUYdN1a3u14xh/gULICtUAJW4R3L/hRGcvO/C2Eb69q4QEnlfaVMti3slRV4+hGiG7WPNNa53ySahcrp5u6SuzBY6P9BFprEkSO+4UmP0rD/B1lbVoQ7o1ATVg7rOphL9Uw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 06d19bbb-884e-4eec-a6dc-08deb1983def
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 May 2026 09:07:36.5201 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: c+bY6Fn75bEfZViNZANwp1DLVisTCgb8YP/REraHoEKQju1NTrh2SeVmfPzkRB52a8EdvflRn3MomMEL0Onzf2rnm4+S+kLYFHR/X/+JYrQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4790
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778749666; x=1810285666;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=MVQn969DadsAEHCsZlkDTYhqG6YynQzIXcGIlyXzzUc=;
 b=NXnJjzhyEF30xVbHJ0RtRZsgOTka8ltgQPujAnzSlNJVAGCmYEwMczfB
 E3ooyWRFUVCcfTaKvV2pw6jjo4oY7RPlyDYeRayb8/kovnoW8uiCuFUpD
 XOFSY+bwKkRfHe0jnU27KacgF79DwC+KQtXPy+m98OcSwFOiGqAPBYq9+
 p6AX1zAAvMka+fTSSLJCc9MMbONPEX2aqDXjtvaLrZZ5GYhFrmIcAP+Y+
 EXpZDbgCjJ7ug0dZttmDsqxqqBgFp2uUCRVTUUZeNENLfznaL6uxN9bZG
 i33uejfWe0GvOmucRdJGCQg0gLMiiJCkiXBqWiKStcDapuUz3oEXS6LzE
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=NXnJjzhy
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v2] iavf: validate num_vsis in
 VIRTCHNL_OP_GET_VF_RESOURCES response
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
X-Rspamd-Queue-Id: 2B14953F977
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.99 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[15];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:moonafterrain@outlook.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:mitch.a.williams@intel.com,m:gregory.v.rose@intel.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:danisjiang@gmail.com,m:stable@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FREEMAIL_TO(0.00)[outlook.com,intel.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[lists.osuosl.org,vger.kernel.org,gmail.com];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns]
X-Rspamd-Action: no action

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtd2lyZWQtbGFu
IDxpbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYNCj4gT2YgSnVu
cnVpIEx1bw0KPiBTZW50OiBUaHVyc2RheSwgTWF5IDE0LCAyMDI2IDg6NTUgQU0NCj4gVG86IE5n
dXllbiwgQW50aG9ueSBMIDxhbnRob255Lmwubmd1eWVuQGludGVsLmNvbT47IEtpdHN6ZWwsDQo+
IFByemVteXNsYXcgPHByemVteXNsYXcua2l0c3plbEBpbnRlbC5jb20+OyBBbmRyZXcgTHVubg0K
PiA8YW5kcmV3K25ldGRldkBsdW5uLmNoPjsgRGF2aWQgUy4gTWlsbGVyIDxkYXZlbUBkYXZlbWxv
ZnQubmV0PjsgRXJpYw0KPiBEdW1hemV0IDxlZHVtYXpldEBnb29nbGUuY29tPjsgSmFrdWIgS2lj
aW5za2kgPGt1YmFAa2VybmVsLm9yZz47IFBhb2xvDQo+IEFiZW5pIDxwYWJlbmlAcmVkaGF0LmNv
bT47IE1pdGNoIFdpbGxpYW1zDQo+IDxtaXRjaC5hLndpbGxpYW1zQGludGVsLmNvbT47IEdyZWcg
Um9zZSA8Z3JlZ29yeS52LnJvc2VAaW50ZWwuY29tPg0KPiBDYzogaW50ZWwtd2lyZWQtbGFuQGxp
c3RzLm9zdW9zbC5vcmc7IG5ldGRldkB2Z2VyLmtlcm5lbC5vcmc7IGxpbnV4LQ0KPiBrZXJuZWxA
dmdlci5rZXJuZWwub3JnOyBZdWhhbyBKaWFuZyA8ZGFuaXNqaWFuZ0BnbWFpbC5jb20+Ow0KPiBz
dGFibGVAdmdlci5rZXJuZWwub3JnOyBKdW5ydWkgTHVvIDxtb29uYWZ0ZXJyYWluQG91dGxvb2su
Y29tPg0KPiBTdWJqZWN0OiBbSW50ZWwtd2lyZWQtbGFuXSBbUEFUQ0ggbmV0IHYyXSBpYXZmOiB2
YWxpZGF0ZSBudW1fdnNpcyBpbg0KPiBWSVJUQ0hOTF9PUF9HRVRfVkZfUkVTT1VSQ0VTIHJlc3Bv
bnNlDQo+IA0KPiBUaGUgVkYgYWxsb2NhdGVzIGEgZml4ZWQtc2l6ZSBidWZmZXIgZm9yIElBVkZf
TUFYX1ZGX1ZTSSAoMykgVlNJDQo+IGVudHJpZXMgd2hlbiBwcm9jZXNzaW5nIGEgVklSVENITkxf
T1BfR0VUX1ZGX1JFU09VUkNFUyByZXNwb25zZSBmcm9tDQo+IHRoZSBQRi4gSG93ZXZlciwgbnVt
X3ZzaXMgZnJvbSB0aGUgUEYgcmVzcG9uc2UgaXMgdXNlZCB1bmNoZWNrZWQgYXMNCj4gdGhlIGxv
b3AgYm91bmQgd2hlbiBpdGVyYXRpbmcgb3ZlciB2c2lfcmVzW10gaW4gbXVsdGlwbGUgZnVuY3Rp
b25zLg0KPiANCj4gQSBQRiBzZW5kaW5nIG51bV92c2lzIGdyZWF0ZXIgdGhhbiBJQVZGX01BWF9W
Rl9WU0ksIG9yIHRoZSByZWNlaXZlZA0KPiBtZXNzYWdlIGlzIHNob3J0ZXIgdGhhbiBudW1fdnNp
cyBjbGFpbXMgbGVhZHMgdG8gb3V0LW9mLWJvdW5kcw0KPiBhY2Nlc3NlcyBvbiB0aGUgdnNpX3Jl
c1tdIGFycmF5Lg0KPiANCj4gQ2xhbXAgbnVtX3ZzaXMgYmFzZWQgb24gdGhlIGFjdHVhbCBieXRl
cyBjb3BpZWQgZnJvbSB0aGUgUEYgcmVzcG9uc2UuDQo+IA0KPiBGaXhlczogNWVhZTAwYzU3ZjVl
ICgiaTQwZXZmOiBtYWluIGRyaXZlciBjb3JlIikNCj4gUmVwb3J0ZWQtYnk6IFl1aGFvIEppYW5n
IDxkYW5pc2ppYW5nQGdtYWlsLmNvbT4NCj4gQ2M6IHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmcNCj4g
U2lnbmVkLW9mZi1ieTogSnVucnVpIEx1byA8bW9vbmFmdGVycmFpbkBvdXRsb29rLmNvbT4NCj4g
LS0tDQo+IENoYW5nZXMgaW4gdjI6DQo+IC0gQ2xhbXAgbnVtX3ZzaXMgYmFzZWQgb24gYWN0dWFs
IHJlY2VpdmVkIG1lc3NhZ2UgbGVuZ3RoIGluc3RlYWQgb2YNCj4gSUFWRl9NQVhfVkZfVlNJIHN1
Z2dlc3RlZCBieSBQcnplbWVrDQo+IC0gTGluayB0byB2MToNCj4gaHR0cHM6Ly9sb3JlLmtlcm5l
bC5vcmcvci9TWUJQUjAxTUI3ODgxQUYxMUM0NUFFREMwRDRDQTg5QzFBRjA2MkBTWUJQUg0KPiAw
MU1CNzg4MS5hdXNwcmQwMS5wcm9kLm91dGxvb2suY29tDQo+IC0tLQ0KPiAgZHJpdmVycy9uZXQv
ZXRoZXJuZXQvaW50ZWwvaWF2Zi9pYXZmX3ZpcnRjaG5sLmMgfCAyNg0KPiArKysrKysrKysrKysr
KysrKysrKy0tLS0tDQo+ICAxIGZpbGUgY2hhbmdlZCwgMjEgaW5zZXJ0aW9ucygrKSwgNSBkZWxl
dGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9p
YXZmL2lhdmZfdmlydGNobmwuYw0KPiBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lhdmYv
aWF2Zl92aXJ0Y2hubC5jDQo+IGluZGV4IGE1MmMxMDBkY2JjNS4uMWY5YTJmYzcwMDg0IDEwMDY0
NA0KPiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pYXZmL2lhdmZfdmlydGNobmwu
Yw0KPiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pYXZmL2lhdmZfdmlydGNobmwu
Yw0KPiBAQCAtMjQ4LDEyICsyNDgsMjggQEAgaW50IGlhdmZfc2VuZF92Zl9wdHBfY2Fwc19tc2co
c3RydWN0DQo+IGlhdmZfYWRhcHRlciAqYWRhcHRlcikNCj4gIC8qKg0KPiAgICogaWF2Zl92YWxp
ZGF0ZV9udW1fcXVldWVzDQo+ICAgKiBAYWRhcHRlcjogYWRhcHRlciBzdHJ1Y3R1cmUNCj4gKyAq
IEBtc2dsZW46IGxlbmd0aCBvZiB0aGUgcmVjZWl2ZWQgVkYgcmVzb3VyY2UgbWVzc2FnZQ0KPiAg
ICoNCj4gLSAqIFZhbGlkYXRlIHRoYXQgdGhlIG51bWJlciBvZiBxdWV1ZXMgdGhlIFBGIGhhcyBz
ZW50IGluDQo+IC0gKiBWSVJUQ0hOTF9PUF9HRVRfVkZfUkVTT1VSQ0VTIGlzIG5vdCBsYXJnZXIg
dGhhbiB0aGUgVkYgY2FuIGhhbmRsZS4NCj4gKyAqIFZhbGlkYXRlIHRoZSBWSVJUQ0hOTF9PUF9H
RVRfVkZfUkVTT1VSQ0VTIHJlc3BvbnNlIGZyb20gdGhlIFBGLg0KPiArIEVuc3VyZQ0KPiArICog
bnVtX3ZzaXMgZG9lcyBub3QgZXhjZWVkIHdoYXQgdGhlIG1lc3NhZ2UgbGVuZ3RoIGNhbiBjb3Zl
ciwgYW5kDQo+IGNhcA0KPiArICogbnVtX3F1ZXVlX3BhaXJzIHRvIHRoZSBWRiBtYXhpbXVtLg0K
PiAgICoqLw0KPiAtc3RhdGljIHZvaWQgaWF2Zl92YWxpZGF0ZV9udW1fcXVldWVzKHN0cnVjdCBp
YXZmX2FkYXB0ZXIgKmFkYXB0ZXIpDQo+ICtzdGF0aWMgdm9pZCBpYXZmX3ZhbGlkYXRlX251bV9x
dWV1ZXMoc3RydWN0IGlhdmZfYWRhcHRlciAqYWRhcHRlciwNCj4gdTE2DQo+ICttc2dsZW4pDQo+
ICB7DQo+ICsJdTE2IG1heF92c2lzOw0KPiArDQo+ICsJaWYgKG1zZ2xlbiA8IHNpemVvZihzdHJ1
Y3QgdmlydGNobmxfdmZfcmVzb3VyY2UpKQ0KPiArCQltYXhfdnNpcyA9IDA7DQo+ICsJZWxzZQ0K
PiArCQltYXhfdnNpcyA9IChtc2dsZW4gLSBzaXplb2Yoc3RydWN0DQo+IHZpcnRjaG5sX3ZmX3Jl
c291cmNlKSkgLw0KPiArCQkJICAgc2l6ZW9mKHN0cnVjdCB2aXJ0Y2hubF92c2lfcmVzb3VyY2Up
Ow0KPiArDQo+ICsJaWYgKGFkYXB0ZXItPnZmX3Jlcy0+bnVtX3ZzaXMgPiBtYXhfdnNpcykgew0K
PiArCQlkZXZfaW5mbygmYWRhcHRlci0+cGRldi0+ZGV2LCAiUmVjZWl2ZWQgJWQgVlNJcywgYnV0
DQo+IG1lc3NhZ2UgY2FuIG9ubHkgY292ZXIgJWRcbiIsDQo+ICsJCQkgYWRhcHRlci0+dmZfcmVz
LT5udW1fdnNpcywgbWF4X3ZzaXMpOw0KPiArCQlhZGFwdGVyLT52Zl9yZXMtPm51bV92c2lzID0g
bWF4X3ZzaXM7DQo+ICsJfQ0KPiArDQo+ICAJaWYgKGFkYXB0ZXItPnZmX3Jlcy0+bnVtX3F1ZXVl
X3BhaXJzID4gSUFWRl9NQVhfUkVRX1FVRVVFUykgew0KPiAgCQlzdHJ1Y3QgdmlydGNobmxfdnNp
X3Jlc291cmNlICp2c2lfcmVzOw0KPiAgCQlpbnQgaTsNCj4gQEAgLTMwMCw3ICszMTYsNyBAQCBp
bnQgaWF2Zl9nZXRfdmZfY29uZmlnKHN0cnVjdCBpYXZmX2FkYXB0ZXINCj4gKmFkYXB0ZXIpDQo+
ICAJICogd2UgYXJlbid0IGdldHRpbmcgdG9vIG1hbnkgcXVldWVzDQo+ICAJICovDQo+ICAJaWYg
KCFlcnIpDQo+IC0JCWlhdmZfdmFsaWRhdGVfbnVtX3F1ZXVlcyhhZGFwdGVyKTsNCj4gKwkJaWF2
Zl92YWxpZGF0ZV9udW1fcXVldWVzKGFkYXB0ZXIsIG1pbihldmVudC5tc2dfbGVuLA0KPiBsZW4p
KTsNCj4gIAlpYXZmX3ZmX3BhcnNlX2h3X2NvbmZpZyhodywgYWRhcHRlci0+dmZfcmVzKTsNCj4g
DQo+ICAJa2ZyZWUoZXZlbnQubXNnX2J1Zik7DQo+IEBAIC0yNjA5LDcgKzI2MjUsNyBAQCB2b2lk
IGlhdmZfdmlydGNobmxfY29tcGxldGlvbihzdHJ1Y3QNCj4gaWF2Zl9hZGFwdGVyICphZGFwdGVy
LA0KPiAgCQl1MTYgbGVuID0gSUFWRl9WSVJUQ0hOTF9WRl9SRVNPVVJDRV9TSVpFOw0KPiANCj4g
IAkJbWVtY3B5KGFkYXB0ZXItPnZmX3JlcywgbXNnLCBtaW4obXNnbGVuLCBsZW4pKTsNCj4gLQkJ
aWF2Zl92YWxpZGF0ZV9udW1fcXVldWVzKGFkYXB0ZXIpOw0KPiArCQlpYXZmX3ZhbGlkYXRlX251
bV9xdWV1ZXMoYWRhcHRlciwgbWluKG1zZ2xlbiwgbGVuKSk7DQo+ICAJCWlhdmZfdmZfcGFyc2Vf
aHdfY29uZmlnKCZhZGFwdGVyLT5odywgYWRhcHRlci0+dmZfcmVzKTsNCj4gIAkJaWYgKGlzX3pl
cm9fZXRoZXJfYWRkcihhZGFwdGVyLT5ody5tYWMuYWRkcikpIHsNCj4gIAkJCS8qIHJlc3RvcmUg
Y3VycmVudCBtYWMgYWRkcmVzcyAqLw0KPiANCj4gLS0tDQo+IGJhc2UtY29tbWl0OiA3YWFhODA0
N2VhZmQwYmQ2MjgwNjViMTU3NTdkOWI0OGM1ZjljMDdkDQo+IGNoYW5nZS1pZDogMjAyNjA1MTQt
Zml4ZXMtYTZjNDE3NmMwYzZhDQo+IA0KPiBCZXN0IHJlZ2FyZHMsDQo+IC0tDQo+IEp1bnJ1aSBM
dW8gPG1vb25hZnRlcnJhaW5Ab3V0bG9vay5jb20+DQoNClJldmlld2VkLWJ5OiBBbGVrc2FuZHIg
TG9rdGlvbm92IDxhbGVrc2FuZHIubG9rdGlvbm92QGludGVsLmNvbT4NCg==
