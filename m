Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C6EA916539
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Jun 2024 12:26:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8BBAB60F02;
	Tue, 25 Jun 2024 10:26:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id udJ843iB2mB7; Tue, 25 Jun 2024 10:26:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 900F961020
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1719311200;
	bh=RLXoJnntL4yiwl1kV3OmZvWrYqmlabpb+aBtnfam7LY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=p2RB1GIn0q123IhRxuRIwWtu6XMXhod9iVQF1aLL0+BsvZOVDOLY52g7Yh6tArT53
	 RnkfiIMzzhfx/bEUwFndFIct8qVHXlNs78PcvED70K1WvSEF/cX1qjbZB7tqdhir1H
	 22UVezAU2aEJI74nLqpA60ieaX7lfWLdHom13DUI1jjFp6+bI3KUroH9FMEPIiqM6E
	 2bqnDahvAjGQqNJIM/Vj3VxKMQFgKKHzyYVqTPz+vAo2m0wK8pIlHlj8ruRz8QUiix
	 ZAavl9zqcJlOcekOqe7NQLvOTFNvLsFNkUtGeYOaI21XcZ5Eb5J5ykATY2uy9HuFMZ
	 FlGWewzMv1ecA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 900F961020;
	Tue, 25 Jun 2024 10:26:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 416561BF271
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Jun 2024 10:26:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2DF04605C3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Jun 2024 10:26:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GyAAclPumZez for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Jun 2024 10:26:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 07AF06083F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 07AF06083F
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 07AF06083F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Jun 2024 10:26:37 +0000 (UTC)
X-CSE-ConnectionGUID: OxlGq1S5TQqbIcSQgOaeQw==
X-CSE-MsgGUID: EV2LWV3qTKuGB+27D0EzPg==
X-IronPort-AV: E=McAfee;i="6700,10204,11113"; a="16074281"
X-IronPort-AV: E=Sophos;i="6.08,263,1712646000"; d="scan'208";a="16074281"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2024 03:26:37 -0700
X-CSE-ConnectionGUID: MGojINfPRmae+oIE/m0oAw==
X-CSE-MsgGUID: JEkoV3cCTLulC9JSjvjSDQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,263,1712646000"; d="scan'208";a="44044565"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 25 Jun 2024 03:26:37 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 25 Jun 2024 03:26:36 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 25 Jun 2024 03:26:36 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 25 Jun 2024 03:26:36 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 25 Jun 2024 03:26:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VX8+5suQC92RkXU03mjtuxbxIvH/HNE9791UdDApNFZUW8f9LNs/dMIttvsPmfyNfyoCcpR0k3nybxpHt4TEclyj6C3xLTOevFwhkzfGoKa5bobO1MHs5O8kySrRjV1xjQiO0wglpqHWDlHIlvQtK81pr8s9rPc16wxGyjezXUCzuQCfYxa2becDVZX79wwo1tK8+ExWmqXqrPcozGV10VJ9sIIGrdnA2tush1Ls9DGJ7wxuepuSV+YOX9QQx4Jm7zK3pZ4T4+g9HpKs+oJFjIdHqfTx1JRNb98NDlL2UuyJWFhQXPDQPAfgWGTyKHBxKgW4zz2tyqH5JbKmHRVpSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RLXoJnntL4yiwl1kV3OmZvWrYqmlabpb+aBtnfam7LY=;
 b=B66hmrwCP2sOS384TWN5MSkyaTb1tSRu42KJiCA9UxJUkB6/g/sRfBSmjmyqecOnqYHbq4oAbBXOKbLvCHp9pSRdBSqPDQARuxekuYYkuq5rIK8/VOroL6iwUNxnIxgkKq7XUwJzaC5bd/U0+SUUEVBysjJrCrLJGYChUHznfrN55qorHG4SvYJLpOUYwfzk5HZqMCFe5K+ezEfDrCXDDml04c2mwt7kPosWaDtHpDtWaFDkKJl4NI+83jDHf6e0b9ycIHHAwvHMhJM/Y6S/Z3RyECK422nR3D/BCyYKnl/cgJbeFGpeQ8DcO93NIUYZatsER4BdRghAJWmOpHfF/Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by PH7PR11MB7073.namprd11.prod.outlook.com (2603:10b6:510:20c::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7698.29; Tue, 25 Jun
 2024 10:26:28 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808%4]) with mapi id 15.20.7698.025; Tue, 25 Jun 2024
 10:26:28 +0000
Message-ID: <d6bc563e-e700-421f-ae19-ed254ed01786@intel.com>
Date: Tue, 25 Jun 2024 12:24:23 +0200
User-Agent: Mozilla Thunderbird
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
References: <20240620135347.3006818-1-aleksander.lobakin@intel.com>
 <20240620135347.3006818-2-aleksander.lobakin@intel.com>
 <38875747-d728-4784-b8da-057d999e1fac@intel.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
Content-Language: en-US
In-Reply-To: <38875747-d728-4784-b8da-057d999e1fac@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: ZR0P278CA0205.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:6a::12) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|PH7PR11MB7073:EE_
X-MS-Office365-Filtering-Correlation-Id: ad55c84b-6bd7-4bda-5909-08dc95014619
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230037|376011|366013|1800799021;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?YTlLZXdOMktNNHh1TUZ1OTk2dTVQNVoxMTZJUWliMzI1U0RaaGRoUGtNc1B5?=
 =?utf-8?B?NXA2UmRRT0ZxTUd3RlMwSHpEVzZrL1hLdVlLMXkzUXVnaC80Qzk1S0JnMmlp?=
 =?utf-8?B?OENraTJMYlVQS3RoZGtlNU02RExQWXFreDdQbzlvRUJ3R2pEV0cyR1gwSm1U?=
 =?utf-8?B?b2ZnU0M2Yk9jZE9KdTdGQndIU3FCYUxNQUhsczlLODVkWVdJdjZKYUlTZTVT?=
 =?utf-8?B?ODdDVlhNVmhNMEtjUzl3a3oyTEYvcVF3SEdzRXlJRG5HQVVHamZoOEJmWndq?=
 =?utf-8?B?Y1k5Y0lOWVU4Q2gzVXBqR0FyaXV3ZXFrZmxpVDg1K05NM2MraGhYUWJSbXVU?=
 =?utf-8?B?dFBRZnNWM1BwSHo0NUdENDRhN2FockQ3V2dUL3lvdUkyNkRTY2xrMCtmemla?=
 =?utf-8?B?VWcvTUhBMk9La1ZtNTMyVGFVME9NUUZBWVQ5NVBDRzlKcWh5TzYrWFl5TWlq?=
 =?utf-8?B?dk40cUE4OWNldzRFOWxFWFN1UUo3Z1BDdnp0QmZKRGVIbG12K1EvaEpROHFR?=
 =?utf-8?B?MUJCclpFNVJrcmhaNjhXakIrSEprVnU3UEd0OXprcHBrOE85VmRZWFBnRDdS?=
 =?utf-8?B?TDdVMXdiWTJ2NDY0UnpUV0JVb0tER1EyMittRlB6WWNTVy9VbEZLN3hRTE1P?=
 =?utf-8?B?QU0wcjJjbUFLU1dmK3dzQkptSEJvZTFFbmlEdkRVZ3hJcTlKWTE4OGU5SktG?=
 =?utf-8?B?NkNXRGRhdk15em1McXlRU3ZYTUgxM2x3d0tEZmdEc3RRamZyMzNUcWFyVWpi?=
 =?utf-8?B?U2JlQzN4d1JtMDVHd1BCUWpvNVlURVl2bkhGbkpNNDFHcjlTYXpLVFhMeDE5?=
 =?utf-8?B?ZHU2Zm03TTY0YVd0UGticExRNE13YjZBQ2VNMy8xb0xlM3pkUW5CcHg2bDRv?=
 =?utf-8?B?aHJQWGtWUmhGL2FUMGM3ZkVuaFV2eFdJTFRqRHpMUmJteHZQYldmV3dxVXRR?=
 =?utf-8?B?ZXJVaWVSM0ZEUm0yZ2FxQXo1R1p6c3JzVE10QnNDYmE3OUtPLzUxRTlUNjRu?=
 =?utf-8?B?bDI2M0hUZ3ZBNE9MSW96RTdDZ3BqUFZZenlKb3dqQVFBQ1FNeVVNRHVhdHpN?=
 =?utf-8?B?eUJpMjZRWVVVZm1kYlhSNUZmZUh4M2FtWktldmNEc1V0N083YVcwVVBvREc1?=
 =?utf-8?B?RmdoRmI1Uk9OMzU3UWpGanVhaTNEVysvUWxFZDRpWUlMaEJSUmhxTTVKZlp2?=
 =?utf-8?B?TDRwL2tXNGk5c0owWktyNHRnc3hCM0JNdkRyZi9Xc1ZpSEpPai80ZmpiQ3Z3?=
 =?utf-8?B?ZzFDWlVKNEtBTmV4VmhCd000Mk01cmI1bWpCVzB4dHhPOUt2UWdIblB2bVBQ?=
 =?utf-8?B?OEQ3MGVEUFI3YXBvUU82SHY1eWFRRVc2a0JWeGdpeUhnYU5hZmxGdnVpbTZG?=
 =?utf-8?B?K1hoc3ZTdnR2TkxiWUlwTDZ2S2ozVU0yT0ZEaXBXMXJib0l1MkVOSzRHUk5B?=
 =?utf-8?B?dlh3cGkyMEpSUUF3NlhEMmZKbThqWjdsS2hoVlpweVJaY0VqbTNGbWRrWjdJ?=
 =?utf-8?B?a0lCZHBtMGJqWHhYQUU1aFZtSFlhdTkvcE1vMU5WcU5pdUV1d3ZsUFVwdlpX?=
 =?utf-8?B?STcwY2RIcVVnWG9MK0V0S3ZpYlo5RDdXeVk1NXNvVXAxU2tMK1owL1BZeVIx?=
 =?utf-8?B?d3BuSk5McDZtTjZCU3M3S0dIVWkrT3FMUTFFaitPZTBOc3piZXlVbVFTYlhO?=
 =?utf-8?B?SWRZSDRTZ3QrbUNyT1hzc0wwUmI1ajFQdlFiSE91ZDJMcmtFS0RnK05vUVg1?=
 =?utf-8?Q?2fC/NZvvsi4+jsiyfE=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230037)(376011)(366013)(1800799021); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?V3A4SmFmczlwY2tQRENPTUxDdFJXRGY4clZmOFY3OEZnMFduVjVDOEdPSStG?=
 =?utf-8?B?QWFYM0U1MjNiZlNZcTZPeEoxaXVxQ0ZFL3FUZHRkNEowbnZFNk1ob3NHb3hN?=
 =?utf-8?B?cEt3QWlhVkF4ZDdyQUg5aXhzUGVodzIwN1VRZ0NpL0g3LytadDQrMXdYVnZr?=
 =?utf-8?B?STZxbS80S0ZNMllNUlIvcDB3dFpKbzhPZmQwR2lubE40RjJLWGxiMXNEOWZa?=
 =?utf-8?B?UDB4cGFDSm9CdUx2R29KSjNRVm9pazhjb05HWis5NFdMZnlndE5kK3N0ZkRV?=
 =?utf-8?B?K0F4Qm13dDBUNkxYQmc3SlJ3SjJyYmRHSDMrSitBemN3aG96OGVSMDlGTHVs?=
 =?utf-8?B?Smx5RGI4SVloWWhocFdybUFGWkxUNUhoa29aYSt6VkVTb0tCdU9TTGVsT1lr?=
 =?utf-8?B?L1ZOVnRqNjR5K3BoMjJlM3QwTzh6ZlBpWGFjblBRL3JkeXBrek9GTVNyYm11?=
 =?utf-8?B?VG12UDJKa2M2MVpMRU1tVnNldUs4VUIxSmNaalFwWm41WkwwNlVTUXdLRERQ?=
 =?utf-8?B?V3JKNWRBL3BZdHpRNkUvZGd5ZGxTZWQwanRNTEV1MWpBUVR5d1grc3VGbGJZ?=
 =?utf-8?B?dklCSjk3bHlVaFdrM0QrZzZicDh5UFRNbjJZRW13bU9yUkwyenY2Rjlzb0Vr?=
 =?utf-8?B?WXJteTd5SW81RXk1cVN3SUhWTzlRUCtRK0hObGVNYXF3bElGdkFrZ0sxZzE5?=
 =?utf-8?B?a2pLQTE4QVl5blhId1ZhSGJYdVpNL0Fudk5DN20xam9FZkFRS2pwOWwwT0hM?=
 =?utf-8?B?ZXNJOVNKM2pPTlhWcklXZWJkUGMzZ3YrOWpieGVsdWxTcVVBcWRnS0NBZjRh?=
 =?utf-8?B?OGNVMzZocjluSlZrSzRmUUlqSlpnYXU1MkJtN3ZDQnNzMUVnTDVUbHhCcUZU?=
 =?utf-8?B?cWZlSlNLYkJSalRhN2xkZ05uNUdVSVRDbGpRQWFPZE12ZG9TUzNWeVpjMUlX?=
 =?utf-8?B?M0ZTN2FJWVo0c1B0cmFITFk2U1ZVemdGeFo2Sm1nLzNjQ21mb2ZhVDJhU0p6?=
 =?utf-8?B?TkkyZklQWHoxMHAvTUNlalNPVGw0ekdhYWQwNlA5UGdLWlBLc3VRUGZBRkJ1?=
 =?utf-8?B?MlJzS0xnSDlQOGh5UnFRTFVTTjZWaFZrUm1UWHBUdEp2NE40QThXY2pLYkta?=
 =?utf-8?B?aWVSYU9vVzBOOHhtV01WNytrYWFuUTBtc0JDWXdxcTB2UHNUWUZEdXZiQmxx?=
 =?utf-8?B?c1lHenRWZ2tVQWRZMXVJVGdTdzJqd0NtelBjdFFJZTA4K0FxUjJVeXYwTUk1?=
 =?utf-8?B?eTdHc2VvOGFKTWxTUEFiQW9hZ0V1T3kzVDZCeDB0N1NnM3JQSXVuVUhqNnpj?=
 =?utf-8?B?Y0JqRzJaeWJBZlFCbDZjQjZ1YmU4Z0QrZjhRek5TakxrR0tQT1NkYVB2TGFh?=
 =?utf-8?B?YkZwSlRVTi9nNUdLVGdJcy94emQ0WG1OTW5LOTM5ajV0Uk1jSzV1RlVGZjVq?=
 =?utf-8?B?czNDb2Y1QlYvY0kzZmZPdk1lUFB5Qm9zNC8wM0MrNVJMTzRTMTRRYzRtK1dn?=
 =?utf-8?B?VWlRNlZ3VWNCbG9PZ0w4Zis0Y3laSWIyTlpyYXhQR2FaQW1OUnNza1VIN1Jq?=
 =?utf-8?B?WWFHazVGRjd1akpTaTVJUnJwY3ZGSlMrcFJKRWUwU2FweUtMWll2Nno5Qy9j?=
 =?utf-8?B?NnVZMGg2REx4NFBCcm0zOFB3TEZtNUZHV3pROTk1RStDemVWSGZ5dkU2dkhR?=
 =?utf-8?B?ZHIyTktJbUw1elJKakV4MEE1cXRaTk9NdmJheTVBVlA2cldwWTFPRVhaZlV2?=
 =?utf-8?B?cXdXdHI2bXduN1ZuSnlKNlZUNzgwOFVYMm94SlBETE95a0NBS0pxbFIrZE4x?=
 =?utf-8?B?blcxU1RFV2xSaEJldml0cytLTFNWSGhjZFV5L1pUZU1Wb0dvNE5GSUZVOTJ4?=
 =?utf-8?B?QiszK2NUV3ZQYzB2SXRHMVlXWk8vR3lZQmR5ZnZwSWo0TUxybStIWSs2UzJq?=
 =?utf-8?B?eVRSc0oreVdBaXR4a1pueXgzRWJNbjU2OFZnMHJ2MnRZSHdYYjFTajJiYWNT?=
 =?utf-8?B?WERxcTRWSGJWalpaTlkvamNNOHc2eU85SkVUMEpWVCtZNVBjaTg1OUVvRFJ4?=
 =?utf-8?B?am1xMDNoNVpBelZOcGl2MmhuVk53Zis2c3Fvbk5rZXMzREE2NWlqQWZwaXdq?=
 =?utf-8?B?alA5a2VueDZEd1Q0T3lvNGtGTGgyRDJveFdwRjBJb2xETkVWUEdwK3BuVjNB?=
 =?utf-8?B?eUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ad55c84b-6bd7-4bda-5909-08dc95014619
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Jun 2024 10:26:28.5776 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nuqww2+7Dhi42Zj9eKkWGuwp5KY7ge2JyXvm/NSepTD2pd+VPhzKIC+MB7aAEOcrsab6I/hNMAZApo3qQS3rSnacSWALCXQg6Enb5m1oswk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7073
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719311198; x=1750847198;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Giswucq3P0dN1p/4WKWLD7kez7YOoSLdmWJUM+5+EzU=;
 b=cl3xlYnv8v2SyNyZilx3wpoDXEgrRwKCohfEIk38ngnOIUdFJps+dQl3
 plela45+5RNFIMx8liA2gHgADKHfZvYS5+rXYvGPSgudrIee+w3Ejy7bl
 hw2zrY23lac9/Euy7uAMh9XW3SPdZ+Xv2OzMf1p1xZkoUikmwKGdblxaq
 7PXEJKDrD7dNUNfeRNU0MF/oxyRlubkLKFhP6hsWcD8NZzyuH858LvCOo
 ZvJwYWjgyGS/jGkskCYhuPhF6k4y0+qwVr/w+kZzLCl4jDZOf7wr0sm2Q
 RrZfqAur1OytotShoNDC0nGPq73jEQ9nM34tyr1Ap8osQcu9KgkIIxXWT
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=cl3xlYnv
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 01/14] cache: add
 __cacheline_group_{begin, end}_aligned() (+ couple more)
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
Cc: Mina
 Almasry <almasrymina@google.com>, nex.sw.ncis.osdt.itp.upstreaming@intel.com,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, Jacob Keller <jacob.e.keller@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Paolo
 Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Date: Thu, 20 Jun 2024 17:15:53 +0200

> On 6/20/24 15:53, Alexander Lobakin wrote:
>> __cacheline_group_begin(), unfortunately, doesn't align the group
>> anyhow. If it is wanted, then you need to do something like
>>
>> __cacheline_group_begin(grp) __aligned(ALIGN)
>>
>> which isn't really convenient nor compact.
>> Add the _aligned() counterparts to align the groups automatically to
>> either the specified alignment (optional) or ``SMP_CACHE_BYTES``.
>> Note that the actual struct layout will then be (on x64 with 64-byte CL):
>>
>> struct x {
>>     u32 y;                // offset 0, size 4, padding 56
>>     __cacheline_group_begin__grp;    // offset 64, size 0
>>     u32 z;                // offset 64, size 4, padding 4
>>     __cacheline_group_end__grp;    // offset 72, size 0
>>     __cacheline_group_pad__grp;    // offset 72, size 0, padding 56
>>     u32 w;                // offset 128
>> };
>>
>> The end marker is aligned to long, so that you can assert the struct
>> size more strictly, but the offset of the next field in the structure
>> will be aligned to the group alignment, so that the next field won't
>> fall into the group it's not intended to.
>>
>> Add __LARGEST_ALIGN definition and LARGEST_ALIGN() macro.
>> __LARGEST_ALIGN is the value to which the compilers align fields when
>> __aligned_largest is specified. Sometimes, it might be needed to get
>> this value outside of variable definitions. LARGEST_ALIGN() is macro
>> which just aligns a value to __LARGEST_ALIGN.
>> Also add SMP_CACHE_ALIGN(), similar to L1_CACHE_ALIGN(), but using
>> ``SMP_CACHE_BYTES`` instead of ``L1_CACHE_BYTES`` as the former
>> also accounts L2, needed in some cases.
>>
>> Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
>> ---
>>   include/linux/cache.h | 59 +++++++++++++++++++++++++++++++++++++++++++
>>   1 file changed, 59 insertions(+)
>>
> 
> [...]
> 
>> +/**
>> + * __cacheline_group_begin_aligned - declare an aligned group start
>> + * @GROUP: name of the group
>> + * @...: optional group alignment
> 
> didn't know that you could document "..." :)
> 
>> + *
>> + * The following block inside a struct:
>> + *
>> + *    __cacheline_group_begin_aligned(grp);
>> + *    field a;
>> + *    field b;
>> + *    __cacheline_group_end_aligned(grp);
>> + *
>> + * will always be aligned to either the specified alignment or
>> + * ``SMP_CACHE_BYTES``.
>> + */
>> +#define __cacheline_group_begin_aligned(GROUP, ...)        \
>> +    __cacheline_group_begin(GROUP)                \
>> +    __aligned((__VA_ARGS__ + 0) ? : SMP_CACHE_BYTES)
> 
> nice trick :) +0

The usual way to handle varargs. However, this one:

	__cacheline_group_begin_aligned(grp, 63 & 31);

will trigger a compiler warning as it expands to

	__aligned(63 & 31 + 0)

The compilers don't like bitops and arithmetic ops not separated by
parenthesis even in such simple case =\

Thanks,
Olek
