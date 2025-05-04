Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C09E0AA855B
	for <lists+intel-wired-lan@lfdr.de>; Sun,  4 May 2025 11:15:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B378160B49;
	Sun,  4 May 2025 09:15:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3HH9dh_MGFDj; Sun,  4 May 2025 09:15:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1A1A960B71
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1746350106;
	bh=07RoAupwKPBEI9jRDurlPiDcj8oysDC3xdrajoUlYKI=;
	h=To:CC:References:From:Date:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=blQUEHc4Q//dRKLkl7iK9QEAZuyRDCAXVVVaLjj3gXYsFEqgZB+ji5U2DWcocsIwt
	 GxcDrVdKhmZF2n/yYt4b1pZdxj3TjcEftIuJxysVXzpdhkUHZAjjcJtYVC9+MtBAzy
	 +Rzvj4oa+LTeVkiRR+wboz8Ede+c48b7S+vNATo2GQTaRcY14KP1s2YhfhFHdov0td
	 xOBH6/MDSYKl707w7gGXR38gcSqAa1i/WecPk29COVAejGJhfLhmsAzBk90hDBKhkW
	 lg2c9H2UIkDJYCXiF2PRA4M/S/2Ta7kOUY9bmGTa+PlUOdM1ZOToBQ2KkckFr3xTCy
	 +i1wcK6CI5ZFQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1A1A960B71;
	Sun,  4 May 2025 09:15:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 59677EA
 for <intel-wired-lan@lists.osuosl.org>; Sun,  4 May 2025 09:15:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2F42C40C98
 for <intel-wired-lan@lists.osuosl.org>; Sun,  4 May 2025 09:15:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BjTeBjfmaQiA for <intel-wired-lan@lists.osuosl.org>;
 Sun,  4 May 2025 09:15:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=vitaly.lifshits@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org CE5FA409DF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CE5FA409DF
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CE5FA409DF
 for <intel-wired-lan@lists.osuosl.org>; Sun,  4 May 2025 09:15:01 +0000 (UTC)
X-CSE-ConnectionGUID: geIZs8MqRDKQ5+4FomIDWg==
X-CSE-MsgGUID: N9Y81/+bR6SikOF/nQi6Vg==
X-IronPort-AV: E=McAfee;i="6700,10204,11422"; a="48065019"
X-IronPort-AV: E=Sophos;i="6.15,261,1739865600"; d="scan'208";a="48065019"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2025 02:15:01 -0700
X-CSE-ConnectionGUID: 4O4DJB0/TJeqWpa5+Bg+IQ==
X-CSE-MsgGUID: q9AhgH5pQ+qGKAXj4VASQQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,261,1739865600"; d="scan'208";a="172233785"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2025 02:15:01 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Sun, 4 May 2025 02:15:00 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Sun, 4 May 2025 02:15:00 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.48) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Sun, 4 May 2025 02:14:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jc5lxQZWO4NDWWk50/HQ2qhw8NpdjhPkjBWMYbDmIplCfiyMUB9UztQyFd3C8R6cZBHnGE65oZRwNXBK6Y9n+HI51Ai5mtxA1EK46uLr635u2U1z1mMWOACDUsjw985kgybfbklWuKi/BpFx8g2KqLsaNIiJpR/FTf3KAhEAs6XpbxW1AJYpEXtOUDZDFd7bdjvtZaRzlX/uDjRnhqJ7xKYGmOaf9GoeKR42VUI6fNHwLd0vaQWybZfGOyglO4wV2RRsz9rr1U4rkLZtnTtY9mjGEa5kqcUvNkMQpG3mONAc1lCleJVcpF1hEZW55sUPq7RNrfY1hNzQjU+245gIFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=07RoAupwKPBEI9jRDurlPiDcj8oysDC3xdrajoUlYKI=;
 b=ReqUcYforTGDeMcYX7tJVzChadkb0Tk9R8vEPBF8K6q+ve113veVmEJQvTz743C7ny1HYOPGIbESAqnn3PyymtaS5cqLpAO/8XahcnZpXVtRRwJXAo+ASAHAU+3KlgvpWjPhrVuqPQK+3wUh5GufgHjVehzxVufhZV/7tBl02+ywJMNsxduvekM9RJ6B+E83OCyRcX469grbgT9Ch7+Z48YI/lEyG8xPpjF9V5D+T6yFg44aKbYef+gZRbLSaQNt5Q+7tOJmMNChfp07f5fBnMZ5wbii8cyesd5ZYFOBUEBu1vSgxrwNIltizYOONZlB+K62byhZHUKsjrQhSQXYNQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5949.namprd11.prod.outlook.com (2603:10b6:510:144::6)
 by CH3PR11MB8468.namprd11.prod.outlook.com (2603:10b6:610:1ba::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8699.20; Sun, 4 May
 2025 09:13:51 +0000
Received: from PH0PR11MB5949.namprd11.prod.outlook.com
 ([fe80::1c5d:e556:f779:e861]) by PH0PR11MB5949.namprd11.prod.outlook.com
 ([fe80::1c5d:e556:f779:e861%6]) with mapi id 15.20.8699.019; Sun, 4 May 2025
 09:13:51 +0000
To: Jacek Kowalski <jacek@jacekk.info>, Simon Horman <horms@kernel.org>
CC: Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
References: <5555d3bd-44f6-45c1-9413-c29fe28e79eb@jacekk.info>
 <20250424162444.GH3042781@horms.kernel.org>
 <879abd6b-d44b-5a3d-0df6-9de8d0b472a3@intel.com>
 <e6899d87-9ec4-42aa-9952-11653bc27092@jacekk.info>
 <0530ea8e-eb81-74cd-5056-4ee6db8feb9e@intel.com>
 <a0069d48-38b9-4bf0-979f-7051f8e906f4@jacekk.info>
From: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
Message-ID: <c890cd3b-a4c5-217d-3ad3-6d9389b98f7c@intel.com>
Date: Sun, 4 May 2025 12:13:44 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
In-Reply-To: <a0069d48-38b9-4bf0-979f-7051f8e906f4@jacekk.info>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US
X-ClientProxiedBy: TLZP290CA0011.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:9::19) To PH0PR11MB5949.namprd11.prod.outlook.com
 (2603:10b6:510:144::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB5949:EE_|CH3PR11MB8468:EE_
X-MS-Office365-Filtering-Correlation-Id: d30c4352-9524-4d5d-525b-08dd8aebfc61
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014|7416014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?R1hBVzJtVUFLMzFOaHdLNDc2a2lEdlNTRGx1N3NCcGtnL2I0Nkw4TC91RENi?=
 =?utf-8?B?SmF3UC9xSDRkTldLUmdGcmkydkg4STNZNUM1YVFETXMycTFmb0ZiOFhlNXB2?=
 =?utf-8?B?clZnWXlLRHJLMGtCYmdwZVI1djZaQVRjNFUvLzZPZTMvSmJEajFjM21IalNU?=
 =?utf-8?B?TFF1OGJEK091a3pXcXRqMmdFSmRUSVZCTG10U1dnUS8vRFJXU2wxOHlBRE4v?=
 =?utf-8?B?dE9pbzE3MFVyQWZDbGZudFVNTndRQ1ZhQnVzbmtFT2kxakRoSUdLZlc2V3Z3?=
 =?utf-8?B?VXFKZUo2S0JDZ3FtelRLeFlXV0dtVExOQk9TMWFQbVExLzF0U1NycFRBdjg3?=
 =?utf-8?B?OFgzNGd0WUF2WTVMaEJPdlMwODJxN2hmNmwvVkhsR3p1aWd5eU1HMGtHU3Qw?=
 =?utf-8?B?Lys1c04ya3NGdHRsYk16OWRNOG9naFJtYmFlekxIUnZ0Z2o4UXVrc2Y2YW4x?=
 =?utf-8?B?c3dwRlZQdUNpdXRlYkRrb2ljVFZSempNcEpMR0lrT3ZZMU1HWEFxdHF0bTVP?=
 =?utf-8?B?Mmo2S1ZHSE5MYzJ2WkI5VnkzQ1FDcHJRdDU4UEJjOU9RTWJybDBqN2JGTzhh?=
 =?utf-8?B?RVFPZ2F2NGNmdldObTBna0s3RjgveEJRcVJ1bko0SnkwVG8wYndLKzN5d0J3?=
 =?utf-8?B?Z3d1cFZOYXh3emVkc0hVeEY5dlFkcCswbmVUbnZxZGhsQ0luNXo2Zkd0aUtP?=
 =?utf-8?B?OFNNTTRLazZKbTZQNEZzVnNpKzZoSmdiQzVjNjNHTXdDMFZIT1lUS3ZieWpo?=
 =?utf-8?B?eXdBMHJURERTcjlPZUlpVUY0M01qVklTanBTcjVHTXkyaWhNZy8wcDV6aVh0?=
 =?utf-8?B?d09UMGVvYWpmbCtScDFxTWt2ajd5VWRlVjc1T2FxS0JqOFFlaDlaY2VqTjhY?=
 =?utf-8?B?aWUxK2FVNFlmTVVBSGJWWXdPL3lHYnBGWHg3Z1ljMkN1S3U1N3o0T2RxQ3NS?=
 =?utf-8?B?Y0FyVUJ2dVQxSDU0dTE1N29FZXExUnl4emR5YUd2SlZhbUlWMGZ6MUd6R3lt?=
 =?utf-8?B?YjVHaGQyTmdibjBVdCtRM3dBN2VKcE1iQWRtYTEzQU9nTlVTTjB4ajIzeisx?=
 =?utf-8?B?YkMwOWlzcHJtZmJCWnQyMFpIWGczOWVpQVZuSzZsYVJaU3N0RjlzTXgxdnlQ?=
 =?utf-8?B?SWpsb2FjU1hqMTZTTmZYRkVsMXRLaExNdDBVSTk3WER5Mit5ZE9MQTc4Rmdv?=
 =?utf-8?B?TEdtTlI3dWYvSjI0Z2NXUUFhbXBvdzBkUHJ2MU5oMXFlcWU1TlB5V0VqdHhO?=
 =?utf-8?B?ZXBwV3BZTzRGdkpEWHNLL2w0N3pqVEp4bEhwZFNWVW9SVUZ1Y2hIOWZGNUNv?=
 =?utf-8?B?QXJaUFFPNWFKdHFaNFh5ZXcrOUdvaGNSYVB0cHZNN2xSZUN4UC9paFM1RElZ?=
 =?utf-8?B?TTArZG8yUHZFRVVoYTZQUlZ1YXhMTTBPL3A4OEh4VHA2SlZJTnRRSlpRQmFi?=
 =?utf-8?B?MFhRdzFhOUlXN3czdisxOW9NUE84bDRBNEZVMGxGcDJqcUh1WGs2MmN3L2sv?=
 =?utf-8?B?VmdSMjNUb0Zjb1A5OEUvb1dZVG5weUxpeEtCQlhrV1l6eHhkRDRnV1k1ZnNR?=
 =?utf-8?B?R1N4YXM5SnJsMEcySExUNWtnVkJjUzZMdUlaWU5xRHRUclV5NjNzZ01JTEM4?=
 =?utf-8?B?WUxIS0U0RmxEMXNnZGJPMEJ3MWRHTU5raWVtaGxNRGRDazIwRmh0ZzVCR2N0?=
 =?utf-8?B?YTd3UmczT1lLb2hkcGlnKy9Ga2FHV3RIMlFkTUJBdndFTHhSdVlwV255dm5W?=
 =?utf-8?B?b2pnUWt2MnlzZXllVy96RG9oZzdZbFFnUDVpaXMrSDVlM2VyRHlEMTNDaWd2?=
 =?utf-8?B?RTNSay94M0FaVzYvSGhpaEZnL29SZmVTTTd3ZS8xT2cxeVVhVXJtT0YwaHRX?=
 =?utf-8?B?WkMvSkkvUlRuUHk4R1VWRHJteDNXMElXZW9JMWVGYVJacituazBoY2o1U3px?=
 =?utf-8?Q?Nz/eNfpoVbM=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5949.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7416014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SFVLUEFVTFlpNUxuRCtuTTlKUjhlY2h0MHp5RHpvWjhoZXhYcTdZUm9xOW53?=
 =?utf-8?B?UVo0V2Q0ajhDSjhZK0Q4VDRNZ3p0VVJaYzVWTHFpNHRBTkYvWlN3SHNBcG9Y?=
 =?utf-8?B?RG1sZGplR01pWTllZExtbUQ3UE9LSlZqY0NRZHVDU05DSUNRdUlQU21lWEJr?=
 =?utf-8?B?cXFmK1l5SUdVeU5kaU93a1hIS0lPVmFrUW5nMkFOeWRJSkY4Ny9jaCtrdkQv?=
 =?utf-8?B?b05wMnJ2Y3pGZUU3MWN4Q1htQ1JGaXRJY2ZqMURiQUxsQkJpM2NuT0kzbDN3?=
 =?utf-8?B?cU12RXd4U3VxZDNWV2FWaTVVWmRKMjJvQURPMEhjOXFSeE9CbFJSOW9VMnhO?=
 =?utf-8?B?SFhERXBqOGVKUzA3d3NuL0tHWFd0SjFSeHRjUitZaHMxS0kzUUw1VTJ4aFcw?=
 =?utf-8?B?N3phYlNKd05KL2ZUakJMTEZDZjgzalBCN1lIUm8xZzBxK2xuOW5LQ1pDY203?=
 =?utf-8?B?SEN3d3NPYWgxYVFid2M2WG9NN01qSDNzb1hkbWd3UHZKV1NWanF0ak9mRWVn?=
 =?utf-8?B?bmllLy94OHN6M0ptQlRnL3N6TFU4V3pTS3hkNXhLZkpBYVFyRGVaVmk1dVRE?=
 =?utf-8?B?OVdtWEZmcFdwT3laQVJUcHdER0NHbVpKWkRPdW93RDJGL3dJSnVoYUk5Qzl3?=
 =?utf-8?B?UjVSMnJhOGcrNmRDSUhNUWpCWHUxZTVjYWRZNlIxWFFpenRTQWZsV3gyb2w0?=
 =?utf-8?B?cmxFcFNOWXo3b2pFbXNPYjFxRUZEUzZjcmprcGN5RkJ2a0ZsclZWK3dpTVFp?=
 =?utf-8?B?OHRINjNwazhQQi9vNE5jck9nYWxQU3BqUVVIUWRybGNKN2kyZ1d0TEZkY29K?=
 =?utf-8?B?cHpFK2NaVkZmcTVEb1ZBMyt5Q3VxUzJzYlYwbVdITE9MSzFZV0dPbDNjRC9r?=
 =?utf-8?B?WjdJVmM5MmJCVGhLazNWeHhmSHdBelpqaEV1WTFLNXhzUW5OT0k3TGRxanAx?=
 =?utf-8?B?Wk5GdTlQbTIwTXc2TjJnQmxGUnN3bTQzcmN2WTA4bmFCT2MyNnN6SmlSTk9O?=
 =?utf-8?B?SHhsdE0xY25JbmFld3d2MXF0cERnMHNrOFY2dUNNYlVmb1grYk5mVCthTWYr?=
 =?utf-8?B?V2cwRDdRcTZUeGFIYmo2YTlBK3R4cStiM211Z01sOWFwdXZSNTlUcVZVVWRy?=
 =?utf-8?B?TWRYN3R0emtNSjFXU1NBOU1McHNNTnhGeXg0NDB1WUdWZGJ6bTI1dHBDUEds?=
 =?utf-8?B?OENkVEVLWnV1bnlhT2VLbXNTdFlrS0srRXVicVJkSDR3dTMwTDgxNGo5alRy?=
 =?utf-8?B?Ky9CSm8wR2ZNeVRyNnkvdFpPOXU5OXhlWkEwam1BaEpRZ0kzK2hmNGhNMUJO?=
 =?utf-8?B?cGZtZktlazJ6dFFyV1ZrNmdxUDRSck9JSzZGU2dPMmJ3Szk3YU4xV1RCL1FZ?=
 =?utf-8?B?N3F5bnMwWWdpY05UWFhaWFFlSHlrVlZaN1ZjZjB0eVp4Tk84Y29KdkJFQjVY?=
 =?utf-8?B?NUY3VXBSVGhRSThVdXhrd1dqcDBRejVMRndOTjh3MUlqMktBZjJSY2cyVm9W?=
 =?utf-8?B?SDBaeFVjS2NiVnl2a1VpT2tBSGFMQlZDSXVNWWV2c0E4Qk9qZ1NEZVVUS29x?=
 =?utf-8?B?R3V1RW0vWFllalIvTU1KejI5USt3WmVUa1ZaMjZ3U2NVZmt5MEFPdUlhelJv?=
 =?utf-8?B?c3hUS0NIWEpKdU5ZM0xNYW5rdUpTaWtWSngzRlNPdVlJUHFOMW8yMXphNmRP?=
 =?utf-8?B?ek5UYTVqc1pOcUFUNUlOTGFDUlVvYnZINWxiY0RGOG5HdGtYTXcyK3ZzODhN?=
 =?utf-8?B?TUoyRjl1aldhbXJDOTZ4YnMreERSRnBtc0lkcE1obUtvR09tb3JEeVNKRWkw?=
 =?utf-8?B?NysrM3JPdU4yZWZ2dmQ2dkl3VGFrWU9Vd0t6QW5DaGU4amllbHl2ZTk4RUla?=
 =?utf-8?B?RkVHWmxVOFFTeWtqOG04R09jaUNIdDlEUFNKNk5makZ2b3BWR3F1ZjRLRTZJ?=
 =?utf-8?B?WGtvMHVkU28rZXNRWFd6alJnYlovSzJLSG44MWl0dm52ZEM0N2dJaUVucnBh?=
 =?utf-8?B?c1RnRW9wR0dNdXNKc3JUbCtTTXZzbzdoY1pxT0x2cjd1Qks1dVhYNkJaV1Rt?=
 =?utf-8?B?dlpLSko4a2t6VkpYNkhycFJoeVhaSXVnWElBNUR1MHJBWGhoSzViWkc5a1dQ?=
 =?utf-8?B?ZjB6Z3YwS2IwamlHamtLcGZZT2V1M2s2U2lobHRnRHZBVTRETDh1RDdralpX?=
 =?utf-8?B?dXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d30c4352-9524-4d5d-525b-08dd8aebfc61
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5949.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 May 2025 09:13:51.4018 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: N+RQe8LWAPb6pzXIm5BPOUkm5Inqz0sjUW1f6Zk2SKfqWmlaNcirOq+csMqBHoVB2jI7Nd/f9OQfsw31HKhXSV7kL93ZkD86ArR1EVvyJ9g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8468
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746350101; x=1777886101;
 h=subject:to:cc:references:from:message-id:date:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Pu0y0EtRUYeo6DsxwwtqsWhoByQDugYFiFDjRelMxPM=;
 b=MAHYFbGSIoe4/SEst3mE35qRH0BwLEVTxAmEuLolFjZw7WPQwgYMizvM
 njJQCc+CskArCZezilY3VjFutILvbS2E85SAuFJTrgTkU7qf87TuAcjEN
 BzH4lrkTfYxGpWwff35uWZbR8q0gFuP+voYQIw1q3yBHRKcCKgHGqcfjg
 Iwx49xX/IZSCUJhbWMBQutJBsm5FQm3kZmfszzzdXTOlzosnZCe/a3lnm
 qZL62uGySA60LmT4tZuS2lEMHzVN72H+bUt9fTgwCUCtj3jIlW4DWpzMF
 tYGBWzTq8XYwXhgxgoVTPV5utdf2trUZPr8cfXEu2QoXqdKYdAEf6FypQ
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=MAHYFbGS
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] e1000e: disregard NVM checksum on tgp
 when valid checksum mask is not set
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


On 4/28/2025 7:43 PM, Jacek Kowalski wrote:
>> Anyway, I think that the commit message should be precise.
>> How about this?
>>
>> Starting from Tiger Lake, LAN NVM is locked for writes by SW, so the 
>> driver cannot perform checksum validation and correction. This means 
>> that all NVM images must leave the factory with correct checksum and 
>> checksum valid bit set. Since Tiger Lake devices were the first to 
>> have this lock, some systems in the field did not meet this 
>> requirement. Therefore, for these transitional devices we skip 
>> checksum update and verification, if the valid bit is not set.
>
> Should I prepare v2 with this description?
>

Yes, please.

