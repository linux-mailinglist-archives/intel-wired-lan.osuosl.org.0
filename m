Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BDB5B07A45
	for <lists+intel-wired-lan@lfdr.de>; Wed, 16 Jul 2025 17:50:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8AE37406ED;
	Wed, 16 Jul 2025 15:49:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id t5Y2wLbbikCp; Wed, 16 Jul 2025 15:49:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3A1C440734
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1752680998;
	bh=OGMcFPM3dkpUVab0rKNqYkQ2h8wfnMHPeP05AhK15GM=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=9tW8c4WyTw4jo4kouZy8ac8xvbZdH3DG1oLS1F/Mx8cyrVWiBFJYKXhf0r9PrvFVy
	 jc61LXkg2I9BI/pVNfeclP7dfjVW3evjdYdcVyohJFUGIqU60hAQZcnUKVhuniCw9w
	 7M/awh2ozAW9L/qX8BrSbLV+C9pjyUpTOGF3SJu43gvRv2FgMrKgvcLw5nSiqw2yzx
	 NLwcD2On26A7yMIwWdxqsllKB3dNONc5syKwCACMQSgI8Bb5aJEM1eJOqTFlHXBkck
	 u0h20qGzgDxepWmJIdtzYlPtRsV28Vqy2bFKpcU1UjXKhKQaDnHwPFL1lM4L3iLoZQ
	 2WRXlnJvhdyMA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3A1C440734;
	Wed, 16 Jul 2025 15:49:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 403D511AA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Jul 2025 15:49:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3253C403C8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Jul 2025 15:49:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id shYe0ZlpglG3 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Jul 2025 15:49:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 09A2E40128
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 09A2E40128
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 09A2E40128
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Jul 2025 15:49:54 +0000 (UTC)
X-CSE-ConnectionGUID: eKw1hnZMSFau+aaRcTkxlw==
X-CSE-MsgGUID: DzDYdgaXRRm3At+pYyBZJQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11493"; a="55053770"
X-IronPort-AV: E=Sophos;i="6.16,316,1744095600"; d="scan'208";a="55053770"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2025 08:49:47 -0700
X-CSE-ConnectionGUID: iSVAlwyJRce+jydAZOwv2w==
X-CSE-MsgGUID: AwcyuyXfTYeZ1jyHWXfO3A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,316,1744095600"; d="scan'208";a="163168192"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2025 08:49:48 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Wed, 16 Jul 2025 08:49:47 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Wed, 16 Jul 2025 08:49:47 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (40.107.243.54)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 16 Jul 2025 08:49:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Ob3RuPiIPsYyQ6xd44nn7OXzfLNW3vvZmEHKcS4D0XKlV+5CBc4BtsD4T2PQhhjzOpXYfAyvx6ZfWTKubPo/4dio8A9SUtkVGPTzbRDeJpXtOCzR+3cmQ6as26o4GpjO/blrqBbV7KhuKEW08tFEdKUR2nLo7+jPLlrt9rARm9yhFDZrQoPyGavAL3UW64iny6cMIon6w7nelaoQx+MAAnFWYCx8lG72WDjhFpQklXp9yCDfnbL1GjvfL8/rex0QbzFFWzvUPNGqywV/YZQ9TObuQBqGtfxIL7GcVEw2JwGewV2DHhP3wjUT68ByW0vaIlAfch3YdYVpbO84E0Cl6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OGMcFPM3dkpUVab0rKNqYkQ2h8wfnMHPeP05AhK15GM=;
 b=myG2TdUqmQXanPuPMOgBYEniDQd2NTrr59jdW5mastE81/8RYTo1k/ncuI8AWb2b9a8d+LUM3BgFCtpY3wmoBLG4aY5zP00VL8BlrH/uJWmq5c280BTNaAFwsN1IlhcNQPRISUJZLgX5fXEmeTIpA67OPk4GIrzMezoXE7YTOVSAHCVa9hq/ENSiFbdPz1ihCVtJUDq30sTr6Qj/j/1acmAH7YzpCG9AXNryjK6AaDO+NeCP8dQWbAqaO4FQ8SD3ihOEZA/dcNjrOMhBFZOo2LSN9anEqCFmXbqSoadlegH9Jr+lZbAR8ClEO79kx50fs+QbIzuaaselI3mvZXj7VQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by SJ1PR11MB6299.namprd11.prod.outlook.com (2603:10b6:a03:456::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8922.37; Wed, 16 Jul
 2025 15:49:43 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%4]) with mapi id 15.20.8922.028; Wed, 16 Jul 2025
 15:49:43 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, Kuniyuki Iwashima
 <kuniyu@google.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [RFC] Solution how to split a file in a way
 that git blame looks fine
Thread-Index: AQHb9cfXgXzgqf+8okiYfE924CxnhLQ0YG4dgACFe4A=
Date: Wed, 16 Jul 2025 15:49:43 +0000
Message-ID: <IA3PR11MB8986FCCB195AF1EB805743C5E556A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <5b94d14e-a0e7-47bd-82fc-c85171cbf26e@intel.com>
 <20250715220654.1337102-1-kuniyu@google.com>
 <791b9a57-2855-4b2b-868d-293a86edb6c4@intel.com>
In-Reply-To: <791b9a57-2855-4b2b-868d-293a86edb6c4@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|SJ1PR11MB6299:EE_
x-ms-office365-filtering-correlation-id: 6b6c1f8f-a57a-4a94-c1b6-08ddc4806213
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?VFR3QkRtcThnODNEV2hBdDNQNWtCdTNocEJ6M25NRVlNbnRsQjQyTlFSVjNO?=
 =?utf-8?B?SURBOWRCNmw1cjM3RjlwRjJmV0dMUGsyKy8rWk5Lelp1WGZqTXRxc2QvUWN1?=
 =?utf-8?B?aGpmM2FjZUJwWXNRTmh3LzRUS3RhNTVXWFB0RXZwU1hhNUNPU0xxVUtwbmhm?=
 =?utf-8?B?YlBkem0xZHZHcHNoUlhnZG85SGRQVTBTdEszRVNLRWRPNTNteUxRcGM3TmNq?=
 =?utf-8?B?TlhkQUxTcWJBVkt5L1VoTzdKNzc4aFFnWFgzMGprVk1Bd09BZzkwOXI3a0Z6?=
 =?utf-8?B?dkZ5MCtJWDdCdFdraHBUaWtyeHVUOWtCVGcrUjZJUTVrb2FvV0psT1JRcDRQ?=
 =?utf-8?B?SkdKUWdNUk5CMjdtVGdWSDFTM1c4NElGd2kwN09JRTZMcWZuTUtXZXhxaDda?=
 =?utf-8?B?WjVhaDZ0RFFLNUljQnRveUZXZlFPb3g0cnB1RWtDdHF0WFQ1NFg5RUs4Qktt?=
 =?utf-8?B?L2ZiRWpNeXBOa3ZLVjVhVzJuWStTU1JTVmNmYTdia2I4ajVpcHYzSGdKd1ZJ?=
 =?utf-8?B?MkdNWVFOdFUwLzJ3c3JrdG5qODB1SkNKcytDczJvQzArQXBwZmN6Q1BLVi9I?=
 =?utf-8?B?cFFkSml3eXVLVHNSa3dKT21HNnNwMUtZTjYxQW5DUzVSK0crVlRqMmwyMFJZ?=
 =?utf-8?B?SURYWGo4RklMYmZQdlVSOUFSWS9KdGFBai9XT2JwclIybTJWa3ppTWdVUUJk?=
 =?utf-8?B?SjhMV3lNbjc5ZXRUa0ZrMU1aMmRvYUNPdllKWjdZV2hadFZmTFpOSVR6QjY4?=
 =?utf-8?B?TkVzaTNIVWl3UWlMSTRaZFQrK0ViTWtmQXFrTUpEMVhaTlJFem5pQ2p5WmJH?=
 =?utf-8?B?dzVOQ3dySlBzMlMvTzNTNHIxR25IM2lEWWJqaEFOWWlkNHBMeHU1RGN2Q2NZ?=
 =?utf-8?B?OXJBbGsvckdMMUVoeTkvc3FZZE5XWVZaMzc3YjZGZUF1Y2pWblJ6c2ZzOVN1?=
 =?utf-8?B?bU1NZWlXcnB5T0ZLc2tXd2lJcVlXeVI4ZE9nVWhYRE1jVUtlaTdaSTRId0wv?=
 =?utf-8?B?bGVTbkJVZmVBY3lCWmxJMlBUQlk2TWd3Njd4Y3gwQzJyeHZDWGdrb3VqR3I2?=
 =?utf-8?B?QXR4LzFyUURNQW13RTQ5WHRWUVdCeEg4U3pTWXpkRTlvNWNGdTN1eXRqdk0r?=
 =?utf-8?B?YWpFd09CQXpOdEdJWEpoRExIRndTQnMyd0Q2bGYwb0JkZWMyTGRNYTVkeTFS?=
 =?utf-8?B?dU1vVjdkaG50NWxDSFNRUFNkLzdlTUc2cVNwSWFDVS96aTBEWERTZ0FyZCtO?=
 =?utf-8?B?QStHTk5aY0ZLOXZsMUxyMXpmajNNQkN2WnFlMVdZQXNidFJrZ0YxTTF4UzBW?=
 =?utf-8?B?bHA0NnBGUTI0VEN2ckFDa1JDVDVMQ0plbmE1WGN2YUpwd251NExxMTg4ZmZQ?=
 =?utf-8?B?a0d1UzNONWVMZjF4Tmlkd2RQTGZJNmZ2bnpuMWdRV2FwUjNkWmtVWmNVM3Ew?=
 =?utf-8?B?Tis0MFFkejlUNDRXV0dNWWZMNTdDb1RrK0NPbkc0MGtkWWl6SktJYXFBQVls?=
 =?utf-8?B?b3lTa0x4L0h2YmgxQ0lBNEViU1NjbzA1dXpUdnIwOWs1TEtNaGZGVkhqRnBK?=
 =?utf-8?B?ejVCU0sxVWdUSFRqWXBNM2JYVTl4c1hPakMvVVU1YWYvcW1IMUtRc3NkYWx5?=
 =?utf-8?B?Z05BQ3VEckZBMDJQMlYzdGJuaElibE9JR1hLY2RRMHo0YXFXTVlSSXhWMlhM?=
 =?utf-8?B?TGI4MzI2NjJNaEhuSjc0TlFaRVV4VFhRV2FvVk90WEh3YUtodVJIUHRWUWlX?=
 =?utf-8?B?UURwN1JtWC9OcHpoSnQ4NkdDNzk4SXowNVdHNENrSHdtRUpFWkN2MGdsYmhN?=
 =?utf-8?B?ZUNya0J1ZUx2UGxmSDYrZi85elRySVc3elFzcGlWL1BtQ3BxdGt6ZXJGSmxj?=
 =?utf-8?B?OGxLVzdTblIwa21ocWxtOFBDMEZTbVR0dDBSMHphUHBQRUlCRHN4Z0trMUx6?=
 =?utf-8?B?OVJXNFlpREswdmVNUlJMZHRPdlFLYU5OeTRFRmtvRjh2UTdIQktOb1QwUjhJ?=
 =?utf-8?Q?NfS/MDTt0TuLDSDT8N9AlJWRrjDeVU=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bDl1ZlF0VVVNSjhEdGRJVVdENWFjU3NSV2ViV1BSY2N5M0V2R2ZETFMyV1px?=
 =?utf-8?B?Ykh5dE9sdlIray9CZU96TGdRcEl3dkNHUjdoemljL3FLNzNYaW9WNVFHZHFB?=
 =?utf-8?B?YlM5NEJXUk9NRU5IQnZBOXpITHlUK0tVVnJiSzllbWtjZEVzanNCSHYraG04?=
 =?utf-8?B?YnFUYmNpYjlDaHhZQ1oxUjl6K1cwSjg1V1lFTVg4NDF6ZHYvendGTkRTdnR4?=
 =?utf-8?B?dFgrMjQ2Qmw2TUxOMGtnYjJ4ZkMyMXBiWVJ4bXd6djNTZ2crYWxUanNhS2I5?=
 =?utf-8?B?TWVKcmdDRjRFdjdDbDVFaGFCci81ZGw3TmgyZGF0SHZDS1BCQ0VNSnZqSzZJ?=
 =?utf-8?B?bnJPQ3UxYTJ4Z1QwSzgwUGxxemRlTXJ1a2hXSlZVL2ZreDRkR3B4dlBGd3Zz?=
 =?utf-8?B?V0thVU1ZY1lYMVpzc2FpREQwTVM1eEdNT0NsRjh0YUJrSk13MDNIUnphM294?=
 =?utf-8?B?NWcvMWxVUjJINW9tT0gyemdZSlRXVHNpeGFvMnBVd08yK3hSNktLSDg2Rkt0?=
 =?utf-8?B?S25kemh6b0NIUmkwU0U0NTFEWEM2WTVDcFcrT2gzNWtkMTZlc2YvelhlMDZt?=
 =?utf-8?B?cWlTVDlySlNocTFKNG5JRW82UTZDZzFJNkJEcjhzZ0Y4UlVMQ0JSU3BBWitH?=
 =?utf-8?B?dGhGVjR1NmJZdEdPRFEzOUFDaSs0WjJ5aHRSWmlZYUlCNnd0U2V1RDBzdlA3?=
 =?utf-8?B?K3JaR0drdDZvZTlhbUtKK280Slh0cWF1akJuclJLR1V2SDVRV25oQ0V5NDNZ?=
 =?utf-8?B?YThnSTdrbzJXYkN2VkRnUHFrc1V6V21SN1BVcWZ3c1d5cWJMdU5HOFNyMHk4?=
 =?utf-8?B?TU9JNG95aG9NTEJBK1hPRDRNU1NLZ2k3ZzBKSzNWUmZUQkRXM0xuMVJtU1NI?=
 =?utf-8?B?QkdpTzRrMFIyUVc3WEd5RW80TXdhbTJsVjl6ajBWWDd0MGpLOGdnVjhqNXhw?=
 =?utf-8?B?R0hkeXVwaG1PT1pvWmwxR1N5SFJtWnBSLzBUeCt5M0FkKzRZSHc2T1dhQVdk?=
 =?utf-8?B?Ym5RckxTSmV3T3dOanAvbjUwZmtpTzBObStId1lRa3I0NitKa0NuSkRIUTJw?=
 =?utf-8?B?REJ5a05GcmVrVjJaVmxRU1JIbFpTbUFQUk5MZ1NrNXcrRmxIZTFIMEF2OUVE?=
 =?utf-8?B?R2kxU0hRbkp6Mm05UEhYSnJpYjl1eXByY3RhU1c4UHUxc0tYNkxISTJFVTZa?=
 =?utf-8?B?UDQ5SkdiY0N4WW1xWU1vRmRPblVKdU5KaURvdUtTZVN4VXNrK050NE9zekk0?=
 =?utf-8?B?QVYvYmhibS9ud2sxSFhKSXVOWnp4MTRhb1FLSkg2NmVPQXdBakRZMll6bGg2?=
 =?utf-8?B?UmpweTVjVUcrNUM4OXhQUUxOMHBRTTJEYVVwOWhyNCtkdFE4VmlUUUUvQVdx?=
 =?utf-8?B?K25zMjJsU2VGTmhLWFA1QnZZYmpGL2xqdFFYZVJ4eG96dTNielU0cnl6WG5s?=
 =?utf-8?B?ZHZ6YVhReTVicEJ5ZnhlRVNmeWJSRVgwbTlKUDUyaU9HRXJKTWVyOWZnaDFw?=
 =?utf-8?B?OTROd3ZCb2pTNjNmbFVZRkNRbWRnWDgvRmc0YWVsNTRUUnpsNTRweVEzUXNj?=
 =?utf-8?B?UGFZQUdSSENtM2hCZnF3a2wzMDFHMFlhSlBYYk9SMTVJLzk0YVN6YVJTTWU3?=
 =?utf-8?B?L2QrVCtjbUlQMTVIMDRPdDNzZko0cy8vVlc1MmUvR0I3Y0JSM0hPUUxud2Z5?=
 =?utf-8?B?Qm1PQXFaWGdFQXY1M0ZZR1J4aXpZVTlvOEszLzROa2E2NWFkOSsrbXpWSFdj?=
 =?utf-8?B?bmttMjlWbndqQUFZU3Q4K2EvMlZJMHJ2M1JjTFpZUTMxUE5RR01Ma1U3M1VK?=
 =?utf-8?B?VFEzc0w1Y0ZYamg3cklFRXFyVkY4Y0Jnc0k0RWlsNmRHN0lCN0IyWmNESkVu?=
 =?utf-8?B?UU5wcnFwdTNxaHAyc2R4bnhSd0NFK05UMEtDVVh2VjNpN0FwWTg0eGllajdB?=
 =?utf-8?B?eWp5b2dQbzZrWm5ScXdFWVJQT015eU9hUW5rSURnYUExSDZuUXBmUjN5Qmti?=
 =?utf-8?B?UWh4M0tqNnFCbDZhKzlHZzZUeVkwckJnS3FGTjBoeVFyQ1ZpNkZNS3lwVkJX?=
 =?utf-8?B?ZCs2MDlrY3FiZVlQQ1FZSFBsWHJPUlRydCtRWTVpSHRPMGlqYTJ5ajNpSk1V?=
 =?utf-8?B?L1RxK3ZWTUZ4VFE3MTdLamcyc3pyL3k2THZwdlkwK0I4WlV4Z2dadHM5TzJV?=
 =?utf-8?B?NWc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6b6c1f8f-a57a-4a94-c1b6-08ddc4806213
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jul 2025 15:49:43.6754 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LA06m8oZEdBWCfgK6UR5G96pvcZJefI9m1Fiol/41xEZSM3XjOJWnLdkTUcNUypDhl95rvsiMcB+o01xX4NKeMZQA4s+uf1mYyZmSGDyImM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6299
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752680995; x=1784216995;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=OGMcFPM3dkpUVab0rKNqYkQ2h8wfnMHPeP05AhK15GM=;
 b=f7MCU/VGT/ZmJuL97pG/KJz1lTJ1SZtDT4XPm9UgvIyU3oF478DIYh1x
 GP9ofSBvAY5/T0keg1XhYHAq35yLw+g89Wep7wQxRyLPedwYdE695OpBN
 yd++g5VDMjwrmShdPGUMHaYvb4B/s8jVh/z+77yJ/bHgtEMeZ621MrjoW
 1EEBd8KYj0qi31TVm0A8jAR/9Rx/VWX2c57TY6sGKZYAatjqP2jQzDVRs
 oyQh+jY+9yQt5um9wJp+/nHrcvLKoOAZMPnuLpVY/G1aQ6jeFgFdcXyI5
 AdOqdRdC/0ZvFvsiE1InJ/OYSRPvOTiKq67e7tlk8SOwqOzcvuknqrHR6
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=f7MCU/VG
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [RFC] Solution how to split a file in a way
 that git blame looks fine
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtd2lyZWQtbGFu
IDxpbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYNCj4gT2YgUHJ6
ZW1layBLaXRzemVsDQo+IFNlbnQ6IFdlZG5lc2RheSwgSnVseSAxNiwgMjAyNSA5OjQ4IEFNDQo+
IFRvOiBLdW5peXVraSBJd2FzaGltYSA8a3VuaXl1QGdvb2dsZS5jb20+DQo+IENjOiBpbnRlbC13
aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9yZzsgbmV0ZGV2QHZnZXIua2VybmVsLm9yZw0KPiBTdWJq
ZWN0OiBSZTogW0ludGVsLXdpcmVkLWxhbl0gW1JGQ10gU29sdXRpb24gaG93IHRvIHNwbGl0IGEg
ZmlsZSBpbg0KPiBhIHdheSB0aGF0IGdpdCBibGFtZSBsb29rcyBmaW5lDQo+IA0KPiBPbiA3LzE2
LzI1IDAwOjA1LCBLdW5peXVraSBJd2FzaGltYSB3cm90ZToNCj4gPiBGcm9tOiBQcnplbWVrIEtp
dHN6ZWwgPHByemVteXNsYXcua2l0c3plbEBpbnRlbC5jb20+DQo+ID4gRGF0ZTogVHVlLCAxNSBK
dWwgMjAyNSAyMjozMzo0MCArMDIwMA0KPiA+PiBIaSwNCj4gPj4NCj4gPj4gSSBoYXZlIGRldmVs
b3BlZCAob3IgZGlzY292ZXJlZCA7KSkgaG93IHRvIHNwbGl0IGEgZmlsZSBpbiBhIHdheQ0KPiB0
aGF0DQo+ID4+IGJvdGggb2xkIGFuZCBuZXcgYXJlIG5pY2UgaW4gdGVybXMgb2YgZ2l0LWJsYW1l
DQo+ID4+DQo+ID4+IGh0dHBzOi8vZ2l0aHViLmNvbS9wa2l0c3plbC9saW51eC9jb21taXRzL3Zp
cnRjaG5sLXNwbGl0Lw0KPiA+Pg0KPiA+PiBUaGUgcHVycG9zZSBvZiBSRkMgaXMgdG8gYXNrIGlm
IGFueW9uZSBpcyBpbiBzdHJvbmcgZGlzYWdyZWVtZW50DQo+IHdpdGgNCj4gPj4gbWUNCj4gPj4N
Cj4gPj4gVGhlcmUgaXMgbW9yZSBjb21taXRzIG5lZWRlZCB0byBoYXZlIGl0IG5pY2UsIHNvIGl0
IGZvcm1zIGEgZ2l0LQ0KPiBsb2cNCj4gPj4gdnMgZ2l0LWJsYW1lIHRyYWRlb2ZmLCBidXQgKGFm
dGVyIHRoZSBicmllZiBtb21lbnQgdGhhdCB0aGlzIGlzDQo+IG9uDQo+ID4+IHRoZSB0b3ApIHdl
IHNwZW5kIG9yZGVycyBvZiBtYWduaXR1ZGUgbW9yZSB0aW1lIGxvb2tpbmcgYXQgdGhlDQo+IGJs
YW1lDQo+ID4+IG91dHB1dCAoYW5kIGNvbW1pdCBtZXNzYWdlcyBsaW5rZWQgZnJvbSB0aGF0KSAt
IHNvIEkgZmluZCBpdCBtdWNoDQo+ID4+IGJldHRlciB0byBzZWUgYWN0dWFsIGxvZ2ljIGNoYW5n
ZXMgaW5zdGVhZCBvZiAibW92ZSB4eCB0byB5eSINCj4gc3R1ZmYNCj4gPj4gKHR5cGljYWwgZm9y
ICJzcXVhc2hlZC9zaW5nbGUtY29tbWl0IHNwbGl0cyIpLg0KPiA+DQo+ID4gRldJVywgZ2l0LWJs
YW1lIGhhcyAtTS9DIHRvIHRyYWNrIFgtdGltZXMgbGluZSBtb3ZlcyB3aXRoaW4vYWNyb3NzDQo+
IGZpbGVzLg0KPiANCj4gdGhvc2Ugc3dpdGNoZXMgYXJlIGdyZWF0LCBhZ3JlZSAod2l0aCBhIHRh
ZCBpbmNvbnZlbmllbmNlIHRoYXQgeW91DQo+IGxpa2VseSB3YW50IHRvIHNwZWNpZnkgLUMxMCB0
byBoYXZlIGl0IHdvcmsgaGFyZGVyKQ0KPiANCj4gYnV0IGV2ZW4gdGhlbiwgSSBmaW5kIG15ICJl
bGFib3JhdGUiIG1ldGhvZCBzdXBlcmlvciwgYXMgaXQgYWxsb3dzDQo+IGZvciBlYXN5ICJnbyB0
byBwcmV2aW91cyByZXZpc2lvbiBvbiBnaXZlbiBsaW5lIiBvcGVyYXRpb24sIHdoaWxlDQo+IHdp
dGggc2ltcGxlIHNxdWFzaGVkL3NpbmdsZS1jb21taXQgdmFyaWFudCB0aGVyZSBpcyBzaW1wbHkg
bm8NCj4gcHJldmlvdXMgY29tbWl0IG9uIHRoZSAobmV3KSBmaWxlDQo+IA0KPiBGb3IgZXhhbXBs
ZSBpbiB0aWcgKHdoaWNoIGlzIHRoZSBzdGF0ZS1vZi10aGUtYXJ0IHRvb2wgaW4gdGVybXMgb2YN
Cj4gaW50ZXJhY3RpdmUgZ2l0IGFyY2hlb2xvZ3kpIHlvdSBjYW4gc2ltcGx5IGdvIGJhY2sgb24g
Z2l2ZW4gbGluZQ0KPiB3aXRoIGEgc2luZ2xlIGtleXN0cm9rZSAobGlrZWx5IHRvIGdvIHByaW9y
IHRoZSAic3RhdGljIiBrdyByZW1vdmFsLA0KPiB0byBzZWUgc2lnbmF0dXJlIGNoYW5nZXMgbWFk
ZSBwcmlvciB0byBtb3Zpbmcgc3R1ZmYgaW50byBuZXcgZmlsZSksDQo+IGJ1dCB3aXRoIHNxdWFz
aGVkIHZhcmlhbnQgdGhlcmUgaXMgc2ltcGx5IG5vIHBsYWNlIHRvIGdvLCB3aGF0DQo+IHJlc3Vs
dCBpbiB0aGUgbXNnOg0KPiAiVGhlIHNlbGVjdGVkIGNvbW1pdCBoYXMgbm8gcGFyZW50cyB3aXRo
IHRoaXMgZmlsZSINCj4gDQo+IFRoaXMgaXMgcG9zc2libHkgcmVzb2x2ZWQgYnkgc3BlY2lmeWlu
ZyAiLUMgLUMiIGZvciBnaXQtYmxhbWUsIGJ1dA0KPiBpdCBpcyBzaW1wbHkgc28gc2xvdyBvbiBr
ZXJuZWwgcmVwbyB0aGF0IEkgZGlkbid0IGNoZWNrZWQgaG93IGl0DQo+IGxvb2tzLg0KPiANCj4g
Pg0KPiA+DQo+ID4+DQo+ID4+IENoZXJyeS1waWNrcy9yZWJhc2VzIHdvcmsgdGhlIHNhbWUgd2l0
aCB0aGlzIG1ldGhvZCBhcyB3aXRoDQo+IHNpbXBsZQ0KPiA+PiAic3F1YXNoZWQvc2luZ2xlLWNv
bW1pdCIgYXBwcm9hY2ggKGxpdGVyYWxseSBhbGwgY29tbWl0cyBzcXVhc2hlZA0KPiA+PiBpbnRv
IG9uZSAodG8gaGF2ZSBiZXR0ZXIgZ2l0LWxvZywgYnV0IHNoaXR0eSBnaXQtYmxhbWUgb3V0cHV0
KS4NCj4gPj4NCj4gPj4gUmF0aW9uYWxlIGZvciB0aGUgc3BsaXQgaXRzZWxmIGlzLCBhcyB1c3Vh
bCwgImZpbGUgaXMgYmlnIGFuZCB3ZQ0KPiB3YW50DQo+ID4+IHRvIGV4dGVuZCBpdCIuDQo+ID4+
DQoNCkZvciBteSBlZHVjYXRlZCBvcGluaW9uDQpUaGlzIGlzIGEgd2VsbC1qdXN0aWZpZWQgYW5k
IHRlY2huaWNhbGx5IHNvdW5kIHJlZmFjdG9yLiBXaGlsZSBpdCBtYXkNCnNlZW0gbGlrZSBvdmVy
a2lsbCBhdCBmaXJzdCBnbGFuY2UsIHRoZSBsb25nLXRlcm0gYmVuZWZpdHMg4oCUIGVzcGVjaWFs
bHkNCmluIGEgcHJvamVjdCBsaWtlIHRoZSBMaW51eCBrZXJuZWwg4oCUIGFyZSBzdWJzdGFudGlh
bC4NCg0KMS4gSW1wcm92ZXMgbG9uZy10ZXJtIG1haW50YWluYWJpbGl0eQ0KICBLZXJuZWwgY29k
ZSBsaXZlcyBmb3IgZGVjYWRlcy4gUHJlc2VydmluZyBoaXN0b3J5IGlzIG5vdCBqdXN0IGEgbmlj
ZXR5DQogIOKAlCBpdOKAmXMgYSBuZWNlc3NpdHkuDQogIEZ1dHVyZSBjb250cmlidXRvcnMgd2ls
bCBiZW5lZml0IGZyb20gYmVpbmcgYWJsZSB0byB0cmFjZSBjaGFuZ2VzDQogIGFjY3VyYXRlbHku
DQoyLiBBdm9pZHMgcmVsaWFuY2Ugb24gLU0gLUMNCiAgV2hpbGUgZ2l0IGJsYW1lIC1NIC1DIGNh
biB0cmFjayBtb3ZlZC9jb3BpZWQgbGluZXMsIGl0Og0KICBJcyBub3QgYWx3YXlzIGVuYWJsZWQg
aW4gdG9vbHMgKGUuZy4sIEdpdEh1YiwgR2l0TGFiLCBJREVzKS4NCiAgIENhbiBiZSBzbG93IG9u
IGxhcmdlIHJlcG9zIGxpa2UgdGhlIExpbnV4IGtlcm5lbC4NCiAgIERvZXNu4oCZdCBhbHdheXMg
d29yayB3ZWxsIHdpdGggcGFydGlhbCByZWZhY3RvcnMgb3IgaW50ZXJsZWF2ZWQgbG9naWMgY2hh
bmdlcy4NCjMuIE1pbmltYWwgY29zdA0KICBUaGUgZG93bnNpZGUgaXMgYSBzbGlnaHRseSBub2lz
aWVyIGdpdCBsb2csIGJ1dDoNCiAgVGhpcyBpcyBhIG9uZS10aW1lIGNvc3QuDQogIFRoZSBiZW5l
Zml0IHRvIGdpdCBibGFtZSBpcyBwZXJtYW5lbnQgYW5kIG9uZ29pbmcuDQoNCkFsZXgNCg==
