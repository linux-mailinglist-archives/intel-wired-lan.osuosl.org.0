Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uD6nApSqHWq+cwkAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 01 Jun 2026 17:51:48 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BDED762210D
	for <lists+intel-wired-lan@lfdr.de>; Mon, 01 Jun 2026 17:51:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A57058428D;
	Mon,  1 Jun 2026 15:51:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Joj47GU6zT_s; Mon,  1 Jun 2026 15:51:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CBBB184292
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1780329103;
	bh=JBRkL8nQihDGQNVyl/hfOXNYBa5k6cfuI4xF/gr+X0Q=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Ga1/17mPbXgk0w8sF54Az9zeNqmvh5RrVQqZBUYvPSCGyW1CKbbO94ZlmYZrflfED
	 ztf9qJmEzkKD9/dLw8i0Y1ArDohplpZW8enjWSxtAN/BFq0GzQvVa0OMlBrp3UT1He
	 Ht7ryhX7C7TUfGcflZmhR7fQn9QaQke3+SEWvd2Me8AqY/vL7BIb6bqPSlQPv6ZDjB
	 kWlypbcYq0sP67Yln/g+OJm2E46a+LRKMw6glYIJUWcMhDbRb7jtA6wohRQTiVo4I3
	 ZR3S+y53yDQJl5u13wjmjoLnFiFHaDkvXy+wW0Lz80Uy5npqT8ivKSLk7SkOm5uyw9
	 ijED3BxxFFP9w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id CBBB184292;
	Mon,  1 Jun 2026 15:51:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 8DACF294
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Jun 2026 15:51:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 738734007F
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Jun 2026 15:51:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LP5xxDTfoft9 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  1 Jun 2026 15:51:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 355AC4007B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 355AC4007B
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 355AC4007B
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Jun 2026 15:51:40 +0000 (UTC)
X-CSE-ConnectionGUID: tKD/NEYoRQC4lscWYzsClw==
X-CSE-MsgGUID: 1B7+NRXuQXO0u6XoFB8BDg==
X-IronPort-AV: E=McAfee;i="6800,10657,11804"; a="91402664"
X-IronPort-AV: E=Sophos;i="6.24,181,1774335600"; d="scan'208";a="91402664"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2026 08:51:29 -0700
X-CSE-ConnectionGUID: ymaJJUxwSGa9uZa7GVpeJw==
X-CSE-MsgGUID: rCI88x2iTBCLceYhlrHz1Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,181,1774335600"; d="scan'208";a="243732745"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2026 08:51:29 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 1 Jun 2026 08:51:28 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 1 Jun 2026 08:51:28 -0700
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.43) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 1 Jun 2026 08:51:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hzSQsdJDjxeBgmRSl+Wb2pyvToVXyUnPpLlT8VKReJ8AKz/QNrcwwV2KNzOkrDlwa++f38tANo3EkuxF0E68VOr7b86gcGq9eI6t5uOPqQSybmDbjPsaTdT+eDCQXpb9bZQf3e90fzl2cfrPK4qA1Tdp11GoTyoN7P5XfKFbfUvqFS4KNZ5QBbn9lFNz+XDuIcKMxHVxZfo9T3jWHhl5LYzTVhNMShHqyfacl4wnkG2swZjTsxg63J+hDbXu2rEjG/a1yajmgBIp7NFqbTSeq/LEBTm8VZMtJFjBOW91IS6eu5wTZWm1x5t9uhoM3GkuC8g//P9r40/n9lTpHy5p9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JBRkL8nQihDGQNVyl/hfOXNYBa5k6cfuI4xF/gr+X0Q=;
 b=WFm1hAIbZh2apKrC64yAE32URtFLGfZXXoHDSDN73/GqU9y9Iim6fECLVFbxeL+a1uotVkt2M9AKmti0TTx6OpP6pp/uKZm4CmawHeedCOSflW1h/VJUReYtcXkQO2vjW0exjFX81jCT1+W3KmguIQRQTBWD/42rBc9GHACJcwNoeRu92Ndc2IxNMvDoRZy20fQ5OkdjBi4io8O7/gS+SA4RtDHWUN5mr5WMd4W7Wgn00RtSpNaw0GLmg87JjOwaIBsG3xgG9VolbeOLVFIvt5G4992iqjvmFKYquyO0OWitEBxM7a/0EdgBhKUS/Bf2mKE9x0ArN1XsEVBAoMg8Rg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6117.namprd11.prod.outlook.com (2603:10b6:8:b3::19) by
 IA3PR11MB8920.namprd11.prod.outlook.com (2603:10b6:208:578::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.12; Mon, 1 Jun 2026
 15:51:25 +0000
Received: from DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d9b3:e942:2686:3cdd]) by DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d9b3:e942:2686:3cdd%5]) with mapi id 15.21.0071.015; Mon, 1 Jun 2026
 15:51:25 +0000
Date: Mon, 1 Jun 2026 17:51:12 +0200
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Petr Oros <poros@redhat.com>
CC: Jacob Keller <jacob.e.keller@intel.com>, David Laight
 <david.laight.linux@gmail.com>, John Ousterhout <ouster@cs.stanford.edu>,
 <stable@vger.kernel.org>, <anthony.l.nguyen@intel.com>,
 <intel-wired-lan@lists.osuosl.org>, <przemyslaw.kitszel@intel.com>,
 <netdev@vger.kernel.org>
Message-ID: <ah2qcDLxMlGYNhgf@boxer>
References: <20260512181953.1689-1-ouster@cs.stanford.edu>
 <20260513100732.499e3f49@pumpkin>
 <CAGXJAmzK+56DHnitD1g263mPSgWg9jZyq2z6R+vd8bV_c4ZbuQ@mail.gmail.com>
 <20260513214927.17a8dd45@pumpkin>
 <CAGXJAmx4LaVv=QJ=SanvF6iayJ8+SiLyUqht+jMxouXPX=54-g@mail.gmail.com>
 <20260514110112.12bdf5ff@pumpkin>
 <30dc284c-8cc0-4bae-b7b0-99d6d71a66e3@intel.com>
 <e1ce1387-ae6b-4b43-b5d8-a1141c4a4f1c@redhat.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <e1ce1387-ae6b-4b43-b5d8-a1141c4a4f1c@redhat.com>
X-ClientProxiedBy: VI4PEPF00000143.AUTP296.PROD.OUTLOOK.COM
 (2603:10a6:808:1::88a) To DM4PR11MB6117.namprd11.prod.outlook.com
 (2603:10b6:8:b3::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6117:EE_|IA3PR11MB8920:EE_
X-MS-Office365-Filtering-Correlation-Id: 76898746-f86f-4c84-9aa9-08debff5a2d9
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|6133799003|18002099003|22082099003|56012099006|11063799006|5023799004|4143699003|20046099003;
X-Microsoft-Antispam-Message-Info: ie16KaxgbC9rICKvX2Yfk8vt8w9/h8w18BShF1PyfkGps/J3pOBkfd3mAXI1orb59nqO0381W4+OtsC2Nv0y0MWupHvkHHIN366XyUw2vPiipel/QgesCuSkoXJ7AvckrcGb5ZfFX3SI+Z3V0sHqhwsnKVPOXso1HTRQUsYji70j8c90cwWIje3GsJiyItjhZJ4d55CBwFjuSBAKbDQvUzTA+CNYoN4S9QxI5w2AVR9t8n2vt6cttlTgvhznT8xlrylLN5MgWFSg3m1nIraOLpxZSHvtAb5r409VslYZTPRwVvv2J26j5cPqkJSiEjIncpTWO+AtWT1bCXbObar4xfwMP320hCNFOjwYpq4E7odYJTFzfovBz4cqKBItqYjkP1K0eozMmr9XtKoswodcQu30V3gqU6qsAnqCbAGgz/xpXZAzuWdwuKAp53lwUfI57poRTiYs6J9pO+jimzxH8NBjfTNDsL2wMQjrGJtAh9RNjsbpjpgW+9GErzVc6ee4+rlqgWczbc5ZVfxF5tFCwUF3M6IxFeMD/oMGpKyUXagqRQr2L8+Ytw8YxtRPhtG/9td+CuKtP3puj48Nqd2OtwXRNIENln9gRO4GP+nBLEWjQ45+7CSq23JuthBJTMPmiXAhbbaQ/HZAvGQcsVVXHwYonFuQam5lgeIZAFBB5i2T1dU+U6Rrzg03aSMJACJs
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6117.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(6133799003)(18002099003)(22082099003)(56012099006)(11063799006)(5023799004)(4143699003)(20046099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UXgzN1Q5RWU5NDVHRDRLQ0QyOTJjdm4vNStXUUNBZ24vcFZXaEd0YjJILzJD?=
 =?utf-8?B?YmZOT2pzNnJpT3dxQUZBczNFR1JVRDNjS1d4TmVTTlVnMU5IQVhSRTVjREN6?=
 =?utf-8?B?aU13K1libkp5Q0tSNFU0RVdnSG5RUnhQYlRidzFEakhuWmVPTFZVYUwzb1pi?=
 =?utf-8?B?aHphbXFhNWFHU1MzNFBJRXJ1anViZ3lHM2Z2K1JIK25Uald1SnN6a2UycG0v?=
 =?utf-8?B?elJxazFMZ0R3OW1raWVONmdsa0xUZklSd2M5Snh4UkxMclN4NGFFZCtVejBJ?=
 =?utf-8?B?ZHFFSFUzR1pyNTFhTVBXQThkNlV2cnZWeWFnNkY3Q2JNeDRTUEtxazgrclhW?=
 =?utf-8?B?eWVDY3hMWjA4R0R5eHdiSG50UGVIK1ROdWhudS9Xa3p3T29icEtrYjMyNldv?=
 =?utf-8?B?S3FMWEJyd2F3U0VZQXlVaHl1c1lqeFQvamJhZllWS3dHdG0wcUxJWmRoZkx6?=
 =?utf-8?B?eHFGaFQwUkwxTWRsbElKRmIya2N3V3RsZWRWUVhBOXZuT1UybzEzMk9UaHpV?=
 =?utf-8?B?MTlHTm5NM3BuR3VYZ1MwaHRhbDJhSm1pTjZXaEJyZlVaU2lhaEdEbXgyeWZG?=
 =?utf-8?B?d0RxbXQrWFczK0NVQ1ZxbzdudEtCUmgxUzE0bitHanNuZmoycmJNSEJtS2ZF?=
 =?utf-8?B?bWVZbkEwaDBGTXR4WHN4ZUpvTk9CRXRreWlZUElTQ0I4YVFyQmZ3V2ZjbjIy?=
 =?utf-8?B?UnBudVFESUEwUU0vb0VoVjhXS1hLSlZuKzYrQjVHUGN5TmFlRG9MM3Frc3Zx?=
 =?utf-8?B?WU5yQjFkcWdRSWNqbkk0U2szQ0NJanRoQjRZb2lJV0JaZkEreFc5dmFaMjQx?=
 =?utf-8?B?b3F5SklnZ0tKSmxtT3crRFN0SXZxQ1kyOTNFN3ZZZUZycjM3YXE4ZnpDb2ov?=
 =?utf-8?B?cUtkeGpBVm9QemhtVktkLzlyVlpTTmUwWSsweHU5ckRaTUwvRUhrMVE5bjdn?=
 =?utf-8?B?WlAybTZBTk1RVVJGNXBHZ1dzdkFNUE85V2NsRHVRSGVlNWpING1NdUR4RGZ0?=
 =?utf-8?B?OFlLVmdxaStsVmdQK1dicVBqMUtQa3ZPVGV2NDVyVjFIM2FvZGp5TldUcEha?=
 =?utf-8?B?QzV4WjVYVHdZejkydUZ6RTdoUkZKM0ZVZzlMVitkWVRlL2txUGpqaHdjNys3?=
 =?utf-8?B?ZGRydlh1RUorVFUxMDNwc3JvVVdKa1UzMFliaHZFcWhEcEJqTkhaY29JYkFk?=
 =?utf-8?B?SWFiOGNXd1ZyWGk2T2p2eXppeUpmVzBoVjZ2MFpGTHk4WFpnZjArMTB0OTZ2?=
 =?utf-8?B?V1IwNExYMStpaTYxQjY3ell6NEJoV2ZEcmI2MVovaDliV25ubncvdytVaVUv?=
 =?utf-8?B?cGc0NEJacnZlV1lTTjJGckRIS3RldHN4bytNM2dSMTlmMkJqYVprVWdwcmFO?=
 =?utf-8?B?ejhIdWJGMFRCOC80Tk9laFY5YTVuNHk1RnhHQWVnUmM0NDNmZXRmNUEwZ2J0?=
 =?utf-8?B?aFZJT2t1YUpUbzYzVTFmMmEra2ZGRVdoeENzQjFoaVZIU0ZjU2kvQUNMRXpl?=
 =?utf-8?B?UU9McGIzM1NOVkpnQW9RbDdlanFPYlBYZ0E5RFFKa21ub1hGZERYRmlKMy8v?=
 =?utf-8?B?RTVTWGlCRHRLSE5BMEhDWlZ0SUNPaFEzN0RaRGhHclFzbEVaWWluNlR0ZGZa?=
 =?utf-8?B?NExGTEFTOXR1YXVWK2lVbTBQNitnblE1WDVVMG9zaG1jdWtBbzFHNkRzV0R4?=
 =?utf-8?B?VUdiQWQ0dC94L1k2NmJVQ0JXa0U5ZlQ4UE94SklOTkI3WEgvNldaV3dJcG4w?=
 =?utf-8?B?NnNMNzFwaGg3SzRUdXZRVUJsN0pYL29NYVcybGZ1V0hHeFRMNGVmdkRNV0NO?=
 =?utf-8?B?TEt5SDIwVWEwbkI0djlFd1I1QTZOdlkwc2ttRmxCcFNWdWxWMDUrc3hscmRX?=
 =?utf-8?B?UkRwZjhhYzRXRi9ISlNXK1ovYitBaEltRlMwWm9rWmZwRmxpVDQ3cEMxNEls?=
 =?utf-8?B?RnFhd3JpSGFLK1JxSTd5SkdSanZ1cDU0c0k5NFBmR1EwV05wQ3p2TkdCVTNT?=
 =?utf-8?B?S1RKNXR4SE5sOVJZSEV1SXJCdGhWZnBRK2RCTDFiU2hHaW1Pbk1QZ0liRmw5?=
 =?utf-8?B?MzZMdHFxUDF4UWF1TlNLWmZLM3loZDJGWVFwM1UvYW12RFNHVTd1b3BhL21l?=
 =?utf-8?B?ejg5ZmRMOTlXd05BUEJFaUc3K1FMQXVxQThkSE5NMkhscXZLbUJMYVhPYUtT?=
 =?utf-8?B?TlFYa0lHWFI5MERDbEptRXBXUHJaMU1kdzVmQUxMamh0VDB2Ym8vUnhXbjNB?=
 =?utf-8?B?L2hPYkJUY3NRSStveDNEamhHM1FpWnVpZllEdXh6Z1BwZVNPeTN5YzNqRFJE?=
 =?utf-8?B?MTRkQVFBUzVDQUZzejVXeFJOZUNlUUVPZUFvdkM0enVOR2pISkZQNFUrc1ZG?=
 =?utf-8?Q?NzqD4YyAGfQhobYY=3D?=
X-Exchange-RoutingPolicyChecked: UCFe0lJU28fzchTRy8z7UpUYBIKjrc1fheAoG8fQI1xmMqkqT2Hd5nXJsuw+rqxKR0FjrPwHNi8wasGeZSxDM3y/HA0ILBqXSkr78acWqyeR5aef6D30kqA6xh96U7PIkdfVB0I8gnbnOFGUwuKN9kOQTO/Od+peRYr2zPc+xTO7bUEmOpLt1hC8vIdPPIPGn73hVVUVo0eHXxOxxGL63KrV6iRNE3IictbYroTeote1CJcNZ83mlP9+Xc7g5l2S9G1LtTvg8a3yR8nyjxFSwpLoECh//dJvVjomDZW6n7ICmX/5m0AlD/smjmpnmK1oF3nfSK1ODBU4Mvs6AfBo6A==
X-MS-Exchange-CrossTenant-Network-Message-Id: 76898746-f86f-4c84-9aa9-08debff5a2d9
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6117.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jun 2026 15:51:25.6814 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Z1IJ6nx3SE8SPapmc/usXjqeQkoKkx9QUu2JT8iVVH2EWh5xXSS2OrP0VEv/4DkjDeSu6QDBSHFNbMrHfT3aKq8iO2f3+5N+jajwExq4mFc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR11MB8920
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780329102; x=1811865102;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=2V+2917W8KrSIKxn+2HFFQ/DVM0Uu+BGUIqS1AoE4xo=;
 b=J7OC9OuPo8sjwxIT4aSr4Z1WCFCK8eG6TP4fhf89xUcHbrEfUY4tJWVi
 3iCQh2YfPxe05iQMwjtzWtEcc3lY35wWluEwft518z8WBxAVlxL53r9v3
 pdDa2sgNrcIKhYKe2qDI9NmXVHYC6QQd5vvKkr48reK0hjxY6u0q9sTnC
 B2TvLSUAUyaj2lWa5relrrNpc9Cy+DDg+GhfIxFXmuKvXFWNlyclKnOAi
 0z5WhqdXlqONq5dYuBiIbQREcZhbDRI7jUz+AJES3GCo9a4I3JjtWHQx6
 koZ/XD0XtismTtuUBoldq0Y/88uGdVFIpqvvA4t0FpODnsC1vZJpG4RdW
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=J7OC9OuP
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v3] ice: fix packet corruption due
 to extraneous page flip
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
X-Spamd-Result: default: False [2.29 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER(0.00)[maciej.fijalkowski@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:poros@redhat.com,m:jacob.e.keller@intel.com,m:david.laight.linux@gmail.com,m:ouster@cs.stanford.edu,m:stable@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:netdev@vger.kernel.org,m:davidlaightlinux@gmail.com,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[maciej.fijalkowski@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FREEMAIL_CC(0.00)[intel.com,gmail.com,cs.stanford.edu,vger.kernel.org,lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[stanford.edu:email,smtp1.osuosl.org:rdns,smtp1.osuosl.org:helo]
X-Rspamd-Queue-Id: BDED762210D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, May 26, 2026 at 02:47:42PM +0200, Petr Oros wrote:
> 
> On 5/14/26 18:43, Jacob Keller wrote:
> > On 5/14/2026 3:01 AM, David Laight wrote:
> > > On Wed, 13 May 2026 21:47:11 -0700
> > > John Ousterhout <ouster@cs.stanford.edu> wrote:
> > > 
> > > > On Wed, May 13, 2026 at 1:49 PM David Laight
> > > > <david.laight.linux@gmail.com> wrote:
> > > > > On Wed, 13 May 2026 09:28:40 -0700
> > > > > John Ousterhout <ouster@cs.stanford.edu> wrote:
> > > > > > On Wed, May 13, 2026 at 2:07 AM David Laight
> > > > > > <david.laight.linux@gmail.com> wrote:
> > > > > > > On Tue, 12 May 2026 11:19:53 -0700
> > > > > > > John Ousterhout <ouster@cs.stanford.edu> wrote:
> > > > > > > > Consider the following sequence of events:
> > > > > > > > * The bottom half of a buffer page is filled with data from
> > > > > > > >    packet A. The page has a net reference count (reference count
> > > > > > > >    - bias) of 1. The page is returned to the NIC, flipped to
> > > > > > > >    use the top half.
> > > > > > > > * Before the reference on the page is released, the NIC returns
> > > > > > > >    the page with no data in it ('size' is zero in ice_clean_rx_irq).
> > > > > > > >    In this case the bias does not get decremented. The page still
> > > > > > > >    has a net reference count of 1, so it gets returned to the NIC.
> > > > > > > >    However, ice_put_rx_mbuf flipped the page so that the bottom
> > > > > > > >    half is active.
> > > > > > > > * If the NIC stores another packet in the page before packet A
> > > > > > > >    has released its reference, the data in packet A will be
> > > > > > > >    overwritten with data from the new packet.
> > > > > > > > * Unfortunately zero-length buffers occur frequently: they seem
> > > > > > > >    to occur whenever a packet uses every available byte in a
> > > > > > > >    buffer, ending precisely at the end of the buffer. When this
> > > > > > > >    happens the NIC seems to generate an extra zero-length
> > > > > > > >    buffer.
> > > > > > > > The fix is for ice_put_rx_mbuf not to flip pages that have a
> > > > > > > > size of 0.
> > > > > > > How is this different from packet B (in the top half) being
> > > > > > > freed before packet A (in the bottom half)?
> > > > > > I'm not sure exactly what you're referring to here. Are you asking
> > > > > > about a situation where both halves of the page get filled with packet
> > > > > > data and then the second half to be filled is the first to be freed? I
> > > > > > believe that the ICE driver abandons a page if both halves are ever
> > > > > > occupied simultaneously; the page will be returned to the system once
> > > > > > both halves have dropped their references. Thus it doesn't matter
> > > > > > which half is freed first.
> > > > > That is what I was thinking, seems like the logic is over complicated.
> > > > > 
> > > > > If you need to put 4k pages into some kind of iommu rather than 2k buffers
> > > > > (to contain 1536 byte ethernet packets) then I'd have thought you'd
> > > > > initially put both halves into adjacent tx ring entries.
> > > > > If a rx buffer is discarded (eg a zero length fragment or a CRC error,
> > > > > or even 'copy break' for short packets) then, as an optimisation,
> > > > > you could reuse the buffer for another receive.
> > > > > The same could be done if the page is freed by an application.
> > > > > 
> > > > > However it sounds like it doesn't use the 2nd half until the first
> > > > > completes - otherwise you'd never 'flip' to make the other half
> > > > > active.
> > > > > 
> > > > > Thinks...
> > > > > By only putting half of each 4k 'page' into the rx ring the code
> > > > > will usually save (expensive) iommu setup in the (probably) normal
> > > > > case where the buffers are freed 'reasonably quickly'.
> > > > > But that really requires a 'free/with_nic/busy' state for each half
> > > > > rather then trying to guess from a reference count.
> > > > > 
> > > > > But if the low-level code is recycling the rx buffer (for any reason)
> > > > > it wants to use the same buffer.
> > > > > 
> > > > > The ethernet driver I wrote (a long time ago, early 90s) allocated
> > > > > 64k as 128 512byte buffers and did an aligned word-sized copy of
> > > > > every receive frame - most frames were in contiguous memory.
> > > > > The simplicity of it made up for the cost of the copy, especially
> > > > > since that was an iommu system.
> > > > I'm not here to defend the logic (and it has been replaced with
> > > > something that is probably simpler and more efficient); I'm just
> > > > suggesting a bug fix for the stable releases that still have this
> > > > logic.
> > Right. We definitely want a fix for the possible data corruption in
> > stable. Ideally one as simple as possible.
> > 
> > > You've forced me to look at all of the function :-)
> > > I've noticed a few things:
> > > - If ice_add_xdp_frag() fails (because there are too many fragments)
> > >    then the rest of the fragments are left in the tx ring (instead
> > >    of being discarded) - so are likely to be treated as a full packet
> > >    later on.
> > > - Frames with status errors (crc, framing etc) are discarded after
> > >    the skb is built - surely that should happen before the xdp 'program'
> > >    is called.
> > > - If the remote system send a very very long frame (traditionally the PHY's
> > >    'jabber detect' didn't always work) you can end up with all of the rx
> > >    ring being full of a single partial packet.
> > > 
> > > I think you need to avoid calling ice_add_xdp_frag() when 'size == 0'.
> > > Then in ice_put_rx_mbuf() unconditionally call ice_put_rx_buf() for
> > > zero length fragments.
> > > The comment would be 'zero length fragments can always be reused'.
> > > 
> > That seems correct.
> > 
> > > The zero length fragments almost certainly exist because the mac hardware
> > > advances the the new buffer expecting more data - but only gets the
> > > 4 byte CRC. So the zero length buffer contains the receive status.
> > > 
> > That matches my understanding.
> Hi John,
> 
> I have been looking at the same area in the pre-page-pool ice code and
> I want to ask whether you observed memory growth during your Homa runs
> that exposed the corruption, because in my testing the same bias mismatch
> also produces a slow page leak that your v3 does not close.
> 
> Short version of the leak path, in the PASS (!CONSUMED) branch:
> 
>   1. ice_get_rx_buf(size=0) does pagecnt_bias-- unconditionally
>      (added by commit ef68094cb09e ("ice: Fix kernel panic due to page
>      refcount underflow") as the fix for the matching panic).

you mean in ice_get_rx_buf() ? I do not see this part anywhere. Must be
your custom recipe when you ported 84bf1ac85af8 ("ice: fix Rx page leak on
multi-buffer frames") ?

Given the amount of issues 0 sized frags gave us I was thinking whether
they should be treated in the same manner as normal frags.

But please rule this out on your side to align with John so we could
proceed with this fix.

Thanks
Maciej

>   2. ice_add_xdp_frag() then returns 0 for size==0, so that page is
>      never attached to the xdp_buff/SKB. Nobody downstream will ever
>      call put_page() to balance the pagecnt_bias-- from step 1.
>   3. Your v3 in ice_put_rx_mbuf() correctly skips the page flip for
>      size==0, which closes the corruption window. But it does not
>      restore pagecnt_bias for that zero size buffer, so the page is
>      handed back to ice_reuse_rx_page() with a permanent deficit of 1.
>   4. On the next reuse of that page with size > 0, pagecnt_bias drops
>      again. ice_can_reuse_rx_page() now sees pgcnt - bias == 2 and
>      drains via __page_frag_cache_drain(page, pagecnt_bias). Because
>      pagecnt_bias is one too low, the drain undershoots by 1: page
>      refcount stays at 2 instead of 1.
>   5. The SKB eventually releases its reference (refcount -> 1), but
>      nothing ever brings it to 0. The page is leaked.
>      ice_alloc_rx_bufs() just allocates a fresh page to fill the slot.
> 
> At the zero size frequency you mentioned (thousands per second), this
> adds up to roughly MB/s of leaked page cache, which Jaroslav Pulchart
> originally reported against 6.13.y on NUMA nodes and which motivated
> the libeth/page_pool conversion in mainline. So in stable trees the
> leak side of this bug is still live.
> 
> Two questions:
> 
>   - Did you monitor RSS / page allocator stats over the duration of
>     your Homa runs? If you did and did not see growth, I would like
>     to understand what is different about your setup, because by my
>     reading of the code the leak should fire whenever both halves of
>     a page end up in SKBs simultaneously and one of them carried a
>     zero size descriptor along the way.
> 
>   - If your focus was specifically the corruption, would you be open
>     to extending v3 (or replacing it) with a fix that also restores
>     pagecnt_bias for the size==0 case? The minimal extension is one
>     extra branch in ice_put_rx_mbuf:
> 
>         if (verdict != ICE_XDP_CONSUMED && size != 0)
>                 ice_rx_buf_adjust_pg_offset(buf, xdp->frame_sz);
>         else
>                 buf->pagecnt_bias++;
> 
>     which restores bias on every path where the page is not actually
>     going out to an SKB. (I have a slightly different variant that
>     tracks has_data in struct ice_rx_buf to also handle the broken
>     positional 'i <= xdp_frags' counter in the CONSUMED path, where
>     zero size descriptors in the middle of a frame steal bias++ slots
>     from real fragments. Happy to share it if useful.)
> 
> Regards,
> Petr
> 
> 
