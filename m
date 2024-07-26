Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6381C93D43C
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Jul 2024 15:38:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0B30A60B14;
	Fri, 26 Jul 2024 13:38:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Qq_7i798N610; Fri, 26 Jul 2024 13:38:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 836BF60B17
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1722001079;
	bh=YIkaAsocWIOQvwIeEwdxb3TfOoZpWr4qt+rXIiQ/PVU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=pzDz9VJcRt+Lj44ouoqMgP+tHOsGjU4ufP5oQ+2Zc4B/PmPCTLoomMsizFaR2NW+R
	 H3iJxA6Lm851XvKm7OHq0nbzrLdjaLeyoctxAn/BEmWR7iGLGz57s63sBRBjykti6/
	 bXupcokh4bcEtmyDrgFyq48eAAr1mWSMGbgRtHwmPnNqgUQ/00HgwNyYXme51Ze7iT
	 G324wNActKtBslREnLADstGlYuWwe3IMclDMPRyBI0GewfvWWPXcxxLb0gvWtQ5jE+
	 ywP1tn3L8KFl2zNVdRiQ2u3VBLx9Gn+xc7kATpYbteKKmbXviZj3YbPeMVtYjh9cs8
	 GfxdqtBT+Tbww==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 836BF60B17;
	Fri, 26 Jul 2024 13:37:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7CE3A1BF344
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jul 2024 13:37:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 75B4040426
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jul 2024 13:37:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TlCxF_SEIbqV for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 Jul 2024 13:37:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 1415240106
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1415240106
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1415240106
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jul 2024 13:37:55 +0000 (UTC)
X-CSE-ConnectionGUID: Qg+OOa2MS0+DZy0SUi8q4A==
X-CSE-MsgGUID: Y9SGnlD1SmaHbWBzYfbc5w==
X-IronPort-AV: E=McAfee;i="6700,10204,11144"; a="23592644"
X-IronPort-AV: E=Sophos;i="6.09,238,1716274800"; d="scan'208";a="23592644"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2024 06:37:54 -0700
X-CSE-ConnectionGUID: lvBxdu0GToS+P+dGQRQ84w==
X-CSE-MsgGUID: 7Vs3BZS4TUis/bVHCb6zGw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,238,1716274800"; d="scan'208";a="58377169"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Jul 2024 06:37:52 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 26 Jul 2024 06:37:50 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 26 Jul 2024 06:37:49 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 26 Jul 2024 06:37:49 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.44) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 26 Jul 2024 06:37:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pH19EhbG+dM23ZTw6kaI+YWOFQHpPU4nfDAb+8FWVh9lZ0lXK/zIq4Cmld+tAHewPuT2G0CAfvo8+F7BWr29RS5jvCiTIPhUtaN2REi9rRhuCDJhB2SIyczlGEzn9+flAC+9tPE0vFRNb2xlDFnISrjtvGTzKrXFW+vtFLP5a9bQ/HoKUvyTt9lXU3rCsUbua9qre8kf/qHFOGn9HKdUKecvnGLmxNeUBGfYArN7lhFufuCjveDMhW91jGHsLzHt85iPI/z7Sk0U6drGgTXYKjP61tQGVbcWFu7S2p4lO0qEtEpSnEmeeHzXySsEtu5Ml3WO4EG+Wus0iItddRp3Lw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YIkaAsocWIOQvwIeEwdxb3TfOoZpWr4qt+rXIiQ/PVU=;
 b=ahZ1sD31+YLq6icfGGub6qILT04eYwcYv2XhBW/yLT6Tqf7Kxh7kkZOKMQVBY5XWDM4HQvoyPEbouRpBa8p1vQIlrHIKRUOZVsBMswAI70iodVYsnw8OotsYzuPlDbDrc0U+fuzxn/d4LDmcZ3OpwRjReULcMJzrLvC6+8fAo+NYu0TIN7H0qdJ+ZtHGi+Z8OCbiVgcN42VtNoTL6YdHXIN4ggjUO4VVgksjt0EysfWEosj/vVbtyXHnmRX97YVNLRrQydFGQ/Dpt0jx/4hIWT383XtUehSA0+VVn6bMPxE+HhL2gblFUTVbAFWEGbJbOSX3xZ9UYA8yLxB1P2Fncg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by CH0PR11MB8088.namprd11.prod.outlook.com (2603:10b6:610:184::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7784.32; Fri, 26 Jul
 2024 13:37:42 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808%5]) with mapi id 15.20.7784.020; Fri, 26 Jul 2024
 13:37:42 +0000
Message-ID: <ad94e165-ea7f-4216-b43d-b035c443a914@intel.com>
Date: Fri, 26 Jul 2024 15:37:37 +0200
User-Agent: Mozilla Thunderbird
To: Karol Kolacinski <karol.kolacinski@intel.com>
References: <20240725093932.54856-6-karol.kolacinski@intel.com>
 <20240725093932.54856-10-karol.kolacinski@intel.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
Content-Language: en-US
In-Reply-To: <20240725093932.54856-10-karol.kolacinski@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: DU7PR01CA0019.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:50f::22) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|CH0PR11MB8088:EE_
X-MS-Office365-Filtering-Correlation-Id: 956add01-81e6-4ee2-fee0-08dcad781fec
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?NVZxTG9wNlhnT0R1akorSCtSNW5WWnpVeEw4aFBEZE5QZzRYTTZDU2pzRzlJ?=
 =?utf-8?B?QzhFRU9aNmllN3Q0UXFWUFVnUWtSaVZUNjUzV3VsTzRXVDdSK00zYmEvNk5y?=
 =?utf-8?B?YzdVTkxYdlNrUjYrYzJVbWFuWlUzT1psWE5NWUl5b0x3bSt2MWNsSFRqTSts?=
 =?utf-8?B?SXpXeXNoZkVHU2dpY283QmpCZHlaUWduSXJscFFBWWpFOXZJdEwyMHg0UGQx?=
 =?utf-8?B?Q2VNM1ZoSGxoa0lCenpkVVVCbWVPMVppZ21Ia3djSEFEc3lpYnNkeXdaSC81?=
 =?utf-8?B?aFpnR09ITjZiZG4zSkNNbVVBdTljZFFOcHhZUDlqVVlTcWtjZ2pHYU1lQjZQ?=
 =?utf-8?B?VmVtUDlIc1lOWkQ2dmxzVGxhN0FSaUdrVmJwSWtrOFBEMjZad1ltSGFMTXpw?=
 =?utf-8?B?c0tHMWtnbjJDcGlxcUdQcW5FdUZTVzEwZWN3N3VrWFZhUGxya2J1bUs5dnp1?=
 =?utf-8?B?VHBscStOdzU0KzF3NmV5MUJML3MwRTV6UHBjWVdTdU1ybFhScm9xSlhvN1hl?=
 =?utf-8?B?OStjS09KYndBMXdCaUFnNFBsY2xJQ2F5RDRPQm9UbWl3ZG5SME5lSDVPcnVw?=
 =?utf-8?B?NnRmTmdWOTMrRlppMkRXcFZwODFhR1B1ZlBMRGdWU3ZFS1RMTlRhUlRZV1Rz?=
 =?utf-8?B?Szgwd2lCK3RuUENqaHlBbmtyQ0ZZaC9EMW5WRFJDbStRT2V0cWdiUEdqd0ts?=
 =?utf-8?B?M0FLSlN3bnZRb3lIOXgwQTVDd3VxMzR0eE5QQm5IMDJ4ZDlDYTA1THR2RnRw?=
 =?utf-8?B?L3dIS0NmazFTRTBDV25vWjducDM1VmQrSHhiNDEyQ3IwZEVWZy8xM0lWbTA1?=
 =?utf-8?B?SUNBNGFPVFhpNVhlM0tsRjJVb0k3cVNUdElkZk5CbitKR3QrcVFJMzBGOWk3?=
 =?utf-8?B?aDYyWGswbmg1VWo2emJIOXJycEZ0bER1bklPdnBHb25CaVpZWTkwWUJ4VExJ?=
 =?utf-8?B?R1pVRWlSYUxNd2VGbWRRakVORW1oTnhKTW5RaThCb1pZbnk5WDZibmtVRnJI?=
 =?utf-8?B?aXd2RzdQaGJycWVYaGdYejlYVWtmbUx2cEtQVXJFcmF4S21JYS9UMDNSRElG?=
 =?utf-8?B?RFQ2U0U0OTlvbFR6VTJNN1RCaEJkTWZKakF6elFTMGlWNFY4ZTRJZmtQOHdj?=
 =?utf-8?B?WlVpRjFqS3YrTnVOZXY1dXRYekxLSldxa1k0Y1ArSUJCZ3A0dkxYRVprVXhx?=
 =?utf-8?B?S24xRDZPcVk5MVY1THFwSUtKWnNxeGxJTk9CQUZHc3ZDVGxHVDl3eXdHYW5K?=
 =?utf-8?B?My8rTjYzLzNlOFNvV1lNOGp2dGhtWFF5UG9KOW4xUEdVSThnTE9SMVlvUnZm?=
 =?utf-8?B?V0ZkR2gyVTZvaTFrU1IzS2VMb1JYZnJQL0FtNXNoZW9ZSlVhY1F0RmVUQVU4?=
 =?utf-8?B?TGV6NGV0ZGMvNkxVanFqVzJRUWtXOWxhbkhxemp2a2J1ZlVML01tL3BsU1hN?=
 =?utf-8?B?dWYxYlN3NDk2ZGN5cHBvN21CY010NTc5Y2JzQVA3WVJvWUF1Tjk1SXpsWktB?=
 =?utf-8?B?UWpTTkdjcmRQZ25XMzcyWjRid25vSHoyYStOYnRYcTFCYTdudTZKQWcrbjBM?=
 =?utf-8?B?OUt6T015ME5MSTVZN1RXQ3BHbCtJUUNtRFBDeUdXc0VYK0dsLy9qUmRKcmlC?=
 =?utf-8?B?L1gzV01DZ3ZtSUE0aExSalJUcXk5NzVoWm5aSzVZQjY5NUFDYy90YUJkclpj?=
 =?utf-8?B?SVMxTjJCZmRpS3dWeEtFbk1YRC9GU2JWME1zeHpyRVpLeHdMbVpNR21MWGEr?=
 =?utf-8?B?YnkxKzdFVC9yUnp3dGhraW9yOVhmS0pncEI0bENocmM2WitDL0VlTU5NeDRy?=
 =?utf-8?B?eHc4SGNmV2dSZ24zTkh6dz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QnNLa2g4SkRVMEwyc0R2dkpyOHFzdWVRbFlzZ3ZoOFJ1RmpUbmtFek5rUkRi?=
 =?utf-8?B?WFg3cUlTWmgwdGxHQXFGRTVybGIwS3pUU05BYUNRNUppT1FzSzBDWE42c3hs?=
 =?utf-8?B?RVNrcTRmaE1YOGIvSnpjYTFhTnFiMkMxZDROQ0h3MVBxVDdsSkhabGx3d2hP?=
 =?utf-8?B?QjVDNStocWZmeGtldDNsZUo0b1B2S0VuSFdnb2lHV2dTQUJBcm1TRk1mcG5w?=
 =?utf-8?B?WnR6LzFCUUxpSjZYR3BHczFVektVbm9GYjBXOEtzamRlOHN3bHl3ZExnb1Nv?=
 =?utf-8?B?WHhaN1U4dENmWkgweG9pOTB5T0MzbDBzZEs4YXhVUlVqbW1PQ0ViYjR2UTBT?=
 =?utf-8?B?bkVmWjlWQ2VPMnF6cW0xSXpDL2NDOEJNUi8xUzRKUHNiMmRLeGpYS0lrTnZp?=
 =?utf-8?B?ZWs4TUtGNWlSRmEvbmUwREU3cWJEMjdWZVlaSmJkcHMwR2kzTlI4dTJENklj?=
 =?utf-8?B?aExVempQYWU1MUhtbWRJR0ZjRTJWZWdOcW9yQkhsbXhQWEFMV2JOMS9PYmtX?=
 =?utf-8?B?djlUcERJdnh5ZE9KbzFqN3ZSR1dyc2ZJSDBkUWlWWDh5ckpBK2VoVm9vMnlT?=
 =?utf-8?B?dHpqWThKTEZRZEFucDY4T0J3SThDZU5FR3cyTjNUWEx0Wm5HZ3o5bXJ2dWFG?=
 =?utf-8?B?SGtMZjBVU2U5UVl6U0xoakNCcmZDbkNsbkVmQ241QWdDaDA0ZERiYjdGQ0NP?=
 =?utf-8?B?cGs4SE83TmljRXhKUVoxdG00anhiT1RFTTlyUHkxM1o2bG1WdXZPd0FvSE1u?=
 =?utf-8?B?VEhTTFVYQ0gyZEdkdEFEQXF5MjQ0UXoreFUrWnQyTzNxL3Vvdlh1Ui9DVDVI?=
 =?utf-8?B?dWN2VXd5OVdBbDNYUlRKemNGNmwvWjlnOTdzQnV4Yzk2cDZCZUw1RFYwUW1r?=
 =?utf-8?B?OXV2R3YwYTFyNWRiMnZnVHJWZk5ySUVPMHZReTUzdUdNYzhTb1ZLR1RQUEwz?=
 =?utf-8?B?SldvdHdCVmsrNVBidVhEUU8renVwYVgwNDIrdzlVU0FhSXhodzVYQ0RLaC9v?=
 =?utf-8?B?NHhkZTZKVFVFWE5YSHlmQ01FL0JXcG5NSHB6SUtSbHRXUTB3SjU3S29DOFNk?=
 =?utf-8?B?cVVDZ2g0L1RWVXRINGxqK3YwT3dUWm9TWTVKRVpMUzdxOFlhd3RxdmMxa0VO?=
 =?utf-8?B?V3NRNDk5NWdBUnloa0hLcEhVUHJ6VDAvdGNEUDNpRnM4YStKaDF5V1ZkelR1?=
 =?utf-8?B?bnpabURCY21rbU1HQ1pMQ3NOUFdMUk9OelBuSzZ0aS9SblZIbUFrbW9VemFk?=
 =?utf-8?B?anhoYnRzSzl6RUp0Q0dEdENGYVp4ZEpRTE42UzlaQlVBcmxka0hBN09qM0xw?=
 =?utf-8?B?eXRsUHBQZ28xWnFMUXRsTGdUSkN6a0dDTyt3SFFGMy85QnlYUTl5cTRBK3g1?=
 =?utf-8?B?TTFlZFI5Q0lqQ21aOGNYT3pJMU5ybGd2cm1zZmcxcXlETWNNWFF2ZUd4WTcw?=
 =?utf-8?B?cWVaSWp2NXFZVU5penVsNWtkbVBoV2lmaU1IYm9YQWkvQ01odHJrejRvb3k3?=
 =?utf-8?B?T3YwMWt0SFdlRkJRdWJlUUZQK3ZYTXkya1dzN2xpZU0wMUliTmNkdEpaajlo?=
 =?utf-8?B?RFhuWFB4V2FEMU11L1FyNFZTelduRTBBNHJGU2tmRU5mS1NRZnBiMnpnNGkx?=
 =?utf-8?B?SnZmRzU3eFJkVDF2aXZtdkMzczVTVFVzYjA5dVlsN1A4Q1RFejJ6a3I4Zmcw?=
 =?utf-8?B?SU9tb1cxSm44bEpDRjhoM1JzT2pzMkp6Y0QrVXdmazBoa0tIZ3NxVjAzSU9h?=
 =?utf-8?B?RS9JN2NLOWdpU1ROL0pRM0RrRSszbUFGUTJzcHpaWUZQM01lMjkyM0FjWUJh?=
 =?utf-8?B?cndEYURwTnN6STN5Qll6ZW5ucGZ2eVJZbW0vS3dEem54QXVUSU5UUEVXZGhL?=
 =?utf-8?B?QklvTThzMFBET01pY0VLbWwwSkY5REY3Zm1DRjZiaE9QWFlmeEhqd2pQNFhC?=
 =?utf-8?B?dTgvOFFSekQzSFRqSUc3b2pQeHVxZldXMm5FY0NNTWwrM1lqOHVEMVR4RUlp?=
 =?utf-8?B?QzFCM0plekp4OEVrUVdYRk9CNmFvMDZBdmZBZXRGRFVVbWVBUHZJLzhHcVhY?=
 =?utf-8?B?WVg3TDlGOTdBVTFKdGdDQUo1VDFXQ3N6K2RDQU1KTkxybzRDK1FWZHhjbjU2?=
 =?utf-8?B?NUg2ZmNJSjlrQ0FRUDlPeUJFRFZwWTBSS2lmZTFuZGN2QVVROVZFUG1qOHUv?=
 =?utf-8?B?K3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 956add01-81e6-4ee2-fee0-08dcad781fec
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jul 2024 13:37:42.4289 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: oePTakdVqYle3NXnHoORKl3lWJQbNhIZTkA5f7vxOweMSZheMt4vC+r/8fMz9WYJebeooi2HEL8UClgIoP82XepabfletUE1PywU0XAYm78=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB8088
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722001076; x=1753537076;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=eVM02B5kV/BsR5li/Cn1m9N3fKhfWhhh2IVxtUL1EN0=;
 b=jd70lPZQIPV5dPuqs1wONkXnLls0GWMTc3jx5h4moYV/tEj60Vfn0/pl
 OX8K8NS4PuU5TSN36F6wuULgCc9HDFXm0vt3wczB3uXfday16dA5AA+Hg
 OkYBNBITxJMRZ8xKuPrTkAMtpfttIo1L3FPO6HWn8n92kOQwWS8e/5LGf
 fim0tMQk9TxA59HUWK4yMCgAsE1JhiU9Me9+HqEHM7BnS3WriG1Bwnr9D
 j5qygo4+BWyYUwLH8rm3amCTUbMAkDuYNHXhGHpNavAUBkdmGcpLc45pV
 IPXmszZE8G/iXloq+TmWNUcH6EwpPfGCIPUlcuvKmfdeMJ6ZMXgVXT/yH
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=jd70lPZQ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v3 iwl-next 4/4] ice: combine cross
 timestamp functions for E82x and E830
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
Cc: Jacob Keller <jacob.e.keller@intel.com>, netdev@vger.kernel.org,
 anthony.l.nguyen@intel.com, intel-wired-lan@lists.osuosl.org,
 przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Karol Kolacinski <karol.kolacinski@intel.com>
Date: Thu, 25 Jul 2024 11:34:51 +0200

> From: Jacob Keller <jacob.e.keller@intel.com>
> 
> The E830 and E82x devices use essentially the same logic for performing
> a crosstimestamp. The only difference is that E830 hardware has
> different offsets. Instead of having two implementations, combine them
> into a single ice_capture_crosststamp() function.
> 
> Also combine the wrapper functions which call
> get_device_system_crosststamp() into a single ice_ptp_getcrosststamp()
> function.
> 
> To support both hardware types, the ice_capture_crosststamp function
> must be able to determine the appropriate registers to access. To handle
> this, pass a custom context structure instead of the PF pointer. This
> structure, ice_crosststamp_ctx, contains a pointer to the PF, and
> a pointer to the device configuration structure. This new structure also
> will make it easier to implement historic snapshot support in a future
> commit.
> 
> The device configuration structure is a static const data which defines
> the offsets and flags for the various registers. This includes the lock
> register, the cross timestamp control register, the upper and lower ART
> system time capture registers, and the upper and lower device time
> capture registers for each timer index.
> 
> This does add extra data to the .text of the module (and thus kernel),
> but it also removes 2 near duplicate functions for enabling E830
> support.
> 
> Use the configuration structure to access all of the registers in
> ice_capture_crosststamp(). Ensure that we don't over-run the device time
> array by checking that the timer index is 0 or 1. Previously this was
> simply assumed, and it would cause the device to read an incorrect and
> likely garbage register.
> 
> It does feel like there should be a kernel interface for managing
> register offsets like this, but the closest thing I saw was
> <linux/regmap.h> which is interesting but not quite what we're looking
> for...
> 
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>

[...]

> diff --git a/drivers/net/ethernet/intel/ice/ice_osdep.h b/drivers/net/ethernet/intel/ice/ice_osdep.h
> index a2562f04267f..c03ab0207e0a 100644
> --- a/drivers/net/ethernet/intel/ice/ice_osdep.h
> +++ b/drivers/net/ethernet/intel/ice/ice_osdep.h
> @@ -23,6 +23,9 @@
>  #define wr64(a, reg, value)	writeq((value), ((a)->hw_addr + (reg)))
>  #define rd64(a, reg)		readq((a)->hw_addr + (reg))
>  
> +#define rd32_poll_timeout(a, addr, val, cond, delay_us, timeout_us) \
> +	read_poll_timeout(rd32, val, cond, delay_us, timeout_us, false, a, addr)
> +
>  #define ice_flush(a)		rd32((a), GLGEN_STAT)
>  #define ICE_M(m, s)		((m ## U) << (s))
>  
> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
> index 9f0eff040a95..ac3944fec2d3 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
> @@ -1,6 +1,7 @@
>  // SPDX-License-Identifier: GPL-2.0
>  /* Copyright (C) 2021, Intel Corporation. */
>  
> +#include <linux/iopoll.h>

read_poll_timeout() is used in osdep.h, but you include it here.
You should either define rd32_poll_timeout() here instead of the header
or move this include to osdep.h.

>  #include "ice.h"
>  #include "ice_lib.h"
>  #include "ice_trace.h"

[...]

> -static int
> -ice_ptp_getcrosststamp_e82x(struct ptp_clock_info *info,
> -			    struct system_device_crosststamp *cts)
> +static int ice_ptp_getcrosststamp(struct ptp_clock_info *info,
> +				  struct system_device_crosststamp *cts)
>  {
>  	struct ice_pf *pf = ptp_info_to_pf(info);
> +	struct ice_crosststamp_ctx ctx = {};
> +
> +	ctx.pf = pf;

	struct ice_crosststamp_ctx ctx = {
		.pf	= pf,
	};

> +
> +	switch (pf->hw.ptp.phy_model) {
> +	case ICE_PHY_E82X:
> +		ctx.cfg = &ice_crosststamp_cfg_e82x;
> +		break;
> +	case ICE_PHY_E830:
> +		ctx.cfg = &ice_crosststamp_cfg_e830;
> +		break;
> +	default:
> +		return -EOPNOTSUPP;
> +	}
>  
> -	return get_device_system_crosststamp(ice_ptp_get_syncdevicetime,
> -					     pf, NULL, cts);
> +	return get_device_system_crosststamp(ice_capture_crosststamp, &ctx,
> +					     &ctx.snapshot, cts);
>  }
> -#endif /* CONFIG_ICE_HWTS */
>  
> +#endif /* CONFIG_ICE_HWTS */
>  /**
>   * ice_ptp_get_ts_config - ioctl interface to read the timestamping config
>   * @pf: Board private structure
> @@ -2523,7 +2599,7 @@ static void ice_ptp_set_funcs_e82x(struct ice_pf *pf)
>  #ifdef CONFIG_ICE_HWTS
>  	if (boot_cpu_has(X86_FEATURE_ART) &&
>  	    boot_cpu_has(X86_FEATURE_TSC_KNOWN_FREQ))
> -		pf->ptp.info.getcrosststamp = ice_ptp_getcrosststamp_e82x;
> +		pf->ptp.info.getcrosststamp = ice_ptp_getcrosststamp;
>  
>  #endif /* CONFIG_ICE_HWTS */
>  	if (ice_is_e825c(&pf->hw)) {
> @@ -2592,6 +2668,28 @@ static void ice_ptp_set_funcs_e810(struct ice_pf *pf)
>  	}
>  }
>  
> +/**
> + * ice_ptp_set_funcs_e830 - Set specialized functions for E830 support
> + * @pf: Board private structure
> + *
> + * Assign functions to the PTP capabiltiies structure for E830 devices.
> + * Functions which operate across all device families should be set directly
> + * in ice_ptp_set_caps. Only add functions here which are distinct for E830
> + * devices.
> + */
> +static void ice_ptp_set_funcs_e830(struct ice_pf *pf)
> +{
> +#ifdef CONFIG_ICE_HWTS
> +	if (pcie_ptm_enabled(pf->pdev) &&
> +	    boot_cpu_has(X86_FEATURE_ART) &&
> +	    boot_cpu_has(X86_FEATURE_TSC_KNOWN_FREQ))
> +		pf->ptp.info.getcrosststamp = ice_ptp_getcrosststamp;
> +#endif /* CONFIG_ICE_HWTS */

I've seen this pattern in several drivers already. I really feel like it
needs a generic wrapper.
I mean, there should be something like

arch/x86/include/asm/ptm.h (not sure about the name)

where you put let's say

static inline bool arch_has_ptm(struct pci_device *pdev)

Same for

include/asm-generic/ptm.h

there it will be `return false`.

In include/asm-generic/Kbuild, you add

mandatory-y += ptm.h.

Then, include/linux/ptm.h should include <asm/ptm.h> and in your driver
sources, you include <linux/ptm.h> and check

	if (arch_has_ptm(pdev))
		pf->ptp.info.getcrosststamp = ice_ptp_getcrosststamp;

It's just a draft, adjust accordingly.

Checking for x86 features in the driver doesn't look good. Especially
when you add ARM64 or whatever support in future.

> +
> +	/* Rest of the config is the same as base E810 */
> +	ice_ptp_set_funcs_e810(pf);
> +}

Thanks,
Olek
