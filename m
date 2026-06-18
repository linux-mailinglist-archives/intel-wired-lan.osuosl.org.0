Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 2N77MUNUNGoKVAYAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Jun 2026 22:25:39 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9597B6A2850
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Jun 2026 22:25:38 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=jZcNKy8F;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 98A8F61611;
	Thu, 18 Jun 2026 20:25:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EWJc0AnEDJ_4; Thu, 18 Jun 2026 20:25:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 196BB6160E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1781814335;
	bh=2jfNTEW4ttCJmwj8Pfq7gqn69QRZL5tEJsfVs+sFMUw=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=jZcNKy8FEW7dr3nKLOSHi/tFQoIZSJPGryoLa3buCFOifZt3lllRPzSJvQoGlaBt2
	 I64goCEp+ed9bYZ1Xr6tegmvZY7jb352QDcCsacoFy5Bsitary9dmwZE2IFXE2gwYs
	 DYenrqVWiFUJon32rfXDszK/hGcllW4tJzgrtWgqhHU2W/lDYklbAS/k5fwnVxzVyc
	 SrISSjsKRyrHCb2/6TjVMvKJ8oMgz40Va7FIH8mYuF7DSISmW88eDTqmSaY8Iwnfru
	 NgsXQOpUdjJGlegC5HFwPWo9UFFrj7ghNErVnKEuDWvVaLSXXGv/i0yrtpAlgrc/pr
	 HIEVyzfjFGpwg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 196BB6160E;
	Thu, 18 Jun 2026 20:25:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 786F8367
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jun 2026 20:25:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5E1506160C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jun 2026 20:25:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id se8SfQsDIXKP for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Jun 2026 20:25:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 8CF3461606
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8CF3461606
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8CF3461606
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jun 2026 20:25:31 +0000 (UTC)
X-CSE-ConnectionGUID: MlrSr+v6Q2ezpPCmt1XoFw==
X-CSE-MsgGUID: eqvxeQkbT5GBSoV3+yBYsw==
X-IronPort-AV: E=McAfee;i="6800,10657,11821"; a="82540479"
X-IronPort-AV: E=Sophos;i="6.24,212,1774335600"; d="scan'208";a="82540479"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2026 13:25:30 -0700
X-CSE-ConnectionGUID: c87Cajo+SQ2kZv4QBSrjVQ==
X-CSE-MsgGUID: 27NcIbtaR2KvIEq9B8nzfQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,212,1774335600"; d="scan'208";a="242080537"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2026 13:25:31 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 18 Jun 2026 13:25:30 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 18 Jun 2026 13:25:30 -0700
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.11) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 18 Jun 2026 13:25:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WgOjIbpLnz3uhflz6q3xDutPhZHoY0UdGGrcfulKAOc3warUu5hJunBq8Qyt/uPP+C1Jr2do5uiK2sQPwcop7toFiQj0oPRHbiW4ouf8O3K4R4z746tEpcWXbAu3W9t3NLLtS7nNk0AQu9avGymB/iw8JhF5M7XDUJI3QrfG9cXZW2rq/wK48zDOHrK8JKJLRrhYw9vUSFX/7LHOIXJJyaH6DTXSpAYaz55RT153Lf/J1QISVvUAvqANKl4Q1D0Sg13vt1BT0Jd+c9F5VXzDqYa1UOs7ZP+JGY/OpG+iAH0KWTj/Il4F5/ECOe3bK1jTyZoFuoWZA4L8CJhCPQYSuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2jfNTEW4ttCJmwj8Pfq7gqn69QRZL5tEJsfVs+sFMUw=;
 b=HBH0kepIha4xjkY6tNwPqOT6KeDv/DeDFsopHsLmNggIsypqnc+3KBZsruv7I3yQlmlvjw/lP1gKN4GsqCbhuA2QRpL9KpVUQqB252kGO2zSd3cEUrdPibHC5cpU/Q6iN3zDtYNHbGPa4i6B8b9OUumSR0Ngzem+TD7bj14XgnAFOcD+bpkLaDtU/jYmYQNkUQ0GzQ3lAza/KJ6XVumMShK+gxV0P5K5w3CDsJM0k46kd+YhrfWzBchyn/6gtlz6uld42ifl6h2TBOLlaR1WvjfDXmi9NgJ8XABMdd0aybyUxcd/n11hwArMoRpkm0fX97sWF6PWEq9Uuuis9x5pwQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7381.namprd11.prod.outlook.com (2603:10b6:8:134::14)
 by PH0PR11MB7709.namprd11.prod.outlook.com (2603:10b6:510:296::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.18; Thu, 18 Jun
 2026 20:25:26 +0000
Received: from DS0PR11MB7381.namprd11.prod.outlook.com
 ([fe80::4c39:dfe6:d6dc:6f58]) by DS0PR11MB7381.namprd11.prod.outlook.com
 ([fe80::4c39:dfe6:d6dc:6f58%5]) with mapi id 15.21.0113.015; Thu, 18 Jun 2026
 20:25:26 +0000
Message-ID: <a75a7b0e-86d6-47ab-9ac7-790c947ff295@intel.com>
Date: Thu, 18 Jun 2026 13:25:23 -0700
User-Agent: Mozilla Thunderbird
To: Tony Nguyen <anthony.l.nguyen@intel.com>, Kurt Kanzenbach
 <kurt@linutronix.de>, Tjerk Kusters <tkusters@aweta.nl>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "przemyslaw.kitszel@intel.com" <przemyslaw.kitszel@intel.com>,
 "andrew+netdev@lunn.ch" <andrew+netdev@lunn.ch>, "davem@davemloft.net"
 <davem@davemloft.net>, "edumazet@google.com" <edumazet@google.com>,
 "kuba@kernel.org" <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>, 
 "richardcochran@gmail.com" <richardcochran@gmail.com>, "hawk@kernel.org"
 <hawk@kernel.org>, "stable@vger.kernel.org" <stable@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
References: <PAWPR05MB1069106D52F4E17F1EDB99C67B9182@PAWPR05MB10691.eurprd05.prod.outlook.com>
 <8733yojljf.fsf@jax.kurt.home>
 <55ab9b13-ee51-4ac6-af7b-b3feb159eb51@intel.com>
From: Jacob Keller <jacob.e.keller@intel.com>
Content-Language: en-US
In-Reply-To: <55ab9b13-ee51-4ac6-af7b-b3feb159eb51@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW3PR05CA0016.namprd05.prod.outlook.com
 (2603:10b6:303:2b::21) To DS0PR11MB7381.namprd11.prod.outlook.com
 (2603:10b6:8:134::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB7381:EE_|PH0PR11MB7709:EE_
X-MS-Office365-Filtering-Correlation-Id: c9d5afd1-3d3b-44aa-602b-08decd77bb89
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|7416014|366016|23010399003|18002099003|22082099003|4143699003|11063799006|56012099006;
X-Microsoft-Antispam-Message-Info: mLL+ni6DwmZzDKndzFnRx1E8y/RgL26eqMW0aeejAdBg+QD/aP3jIWWIZBHd/sWbRUkGjdxUpLVZFQ2ez10O5HBa9e2Y+Wn5Rju6S32A2sY5vcRkdMqHIITssOvKl3n8CeOKU0I5dRNWfI4Kqu1+tIdvZYdKc97pA1vNZgpFfPtr1v1j8yOl7s9fLCkSNhXU1/zBE1o3BYremq+KmXQ59mTvGxumOApkx1MzRp9ytEiBw+cU/cH5OmcAH1dhqKOQUXdVqIt/nCTuMU2odiKwXo20z9xD9xSReBwa0qShxNTcmOZNZHgZRE7V2O5wetlCqNnlQ8cwQ/7uXUke5YdIh2lx2LTGekxGHjQ44FqvpzMWpDlkyo+UAF2ylP3hE6DKkdV/lMsP/bVF234rsWSYUloQhjkVceBO9ETRB/vL1t0YcDzfQGbNxJkmCK/l7s8y+EOoeZG0m0CGq+oYNuXw3IX5H7Q+tKTNOY5c7vCwyjHk2ae6BfJpUtp/bnrqtupgoaP6y+KpgarUeAifmw3Nz2aiFNfNKLc+DEZE2/h076spKDNzrPEFKUY05whNvaa1XRY8Wd70/YCRaS6iRpOxMTpTL9AnPwjAopPnC2izGTLwNd0jinPAjXt9QlVfNpIDDURGPs7q/b/KRuDVW8YG3RLhBKDfLfeN95KoeWgcHKg=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7381.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(7416014)(366016)(23010399003)(18002099003)(22082099003)(4143699003)(11063799006)(56012099006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?anZtRXJxejBNZStFVjNVaVI2QmYvckovUVRZOEVid0JqYlk5ZnBMbkVuQWRl?=
 =?utf-8?B?eUVFZTRFSjZaUmsyamh4UEd5ejJudkVsSjNwa3RFa253eWNveFNRS1RjRDlt?=
 =?utf-8?B?RnlwZHU0UlFWUkJLRDdBNXIxdndJMkJrMmo1cUcwRkRSOWcrU3RCRWM1NzBz?=
 =?utf-8?B?NjFWNzN0THpEQlVsbzN3VzF5MVp0TU9maVo2eFpGMkhqWjNCWWZiVkJIcmE0?=
 =?utf-8?B?Z2N0YUMvVHZ6WWlFbUtqUWdnWjE1a0d6MWptMXR2V2FKOFJ6SlZTQ0Y0b1FG?=
 =?utf-8?B?L1lYVkMrSzR3cUVyVlNNWlNORFd4UGJ0RUFyNHdBWGxNZXk3RzBySm1GL1Yz?=
 =?utf-8?B?WDNJaW5VRXdLYjUrd28rVHpwOWxmMUMxU3h1bzdBYW9RZ1dleUNtL3lPNW0w?=
 =?utf-8?B?VDVYWjUwZ3R4VnJ1enZxQ0JZTlRyTTdUM0VyaG9YeUMrYVRaTzBER2ptNU5l?=
 =?utf-8?B?QnVmK1BLMGVLeFVNNWhCMXk3NHFWdlQydGlxdlNDQVUzakJZVUM3dmxUTzFI?=
 =?utf-8?B?ZmNNSU05UGZ4aVhCbmFvMmZ2UGRZdnhKTWZqajFNaWxISkdoUXFaYU54RUVq?=
 =?utf-8?B?ODJETnpvMUpnK2hlLysvMXNub0JNM3N1QmZMb2I3UzU4V3g1djFDdFJKWnBx?=
 =?utf-8?B?cS8zZXBpanBMU0ZyS3lXcHJ3aVU5YjhCdEV0WWV2VlMxWmpkc2tsM3hnanpP?=
 =?utf-8?B?REF1K3lhQm8vZS9ZTjFSRVNwY1pQOHNmalZ3UFFENzIzcDBBY0RuZk9CaHp4?=
 =?utf-8?B?bUVCMjFxa200bXBrdHpJZ2YwSDd6RjZSRks0TXZpdGJhRWt6Rmk0cVJiRzU5?=
 =?utf-8?B?T291b0twSkQrdWhwT0lVV0EwREhHeVhMRitrTVo0aXljMWtYVWRNbG1hRkhs?=
 =?utf-8?B?MkNPMUN1Y0VxRGorZkdjMDRkdDY4QnVmZm9heEo4emZkbnVza1pvSGpnbHV5?=
 =?utf-8?B?cTkrT2dXV3pjMDdDVU93MSt5L2RXZ21CZWpFOHZ4Q2hnd0hHNEt4RGJCUjd1?=
 =?utf-8?B?VXJ5RjJQTHBmRlJzQWZLUDdOWkN1NkZhMm5ZV0VFOWNJMUtvS1NmaEVlTmJK?=
 =?utf-8?B?SWFKaXlsRnRCWUxQb2V4TXhSQlQwa1F0aFVHbDNvZXpGVW9tdHFpOVAxcXRI?=
 =?utf-8?B?Rlo0cm45RWY0UFB6Z1RQMUVXUDd6eTNCTGdQMzQya2dkeU9QdDYxYmxjdGZI?=
 =?utf-8?B?aG9UNmUyeUc2cnBhOFFjUU1Xa1E4dFYwOEhQOVorbXREQ24xMG9MVHk3Qnhx?=
 =?utf-8?B?L0RQNVZFZG4yRVVMaklEV1ZFWHVVemxDbldubnplQVpTT3NVK29lY084a1N5?=
 =?utf-8?B?ZTRrem5wSUVMTGpkOFRBNTZmbjB4aCtCTGRrdjNhRFlnaFZWa1RGNzZPSGU4?=
 =?utf-8?B?dWovT2JtVytFekI0TUVFR2ZzRXhIem1KL3VYVE5hSDc2SUZBdXhGQ21YTzFY?=
 =?utf-8?B?N01zOStNSWxMQ2tSUTBiVEhCYWRYZ2N1ZjdZeUpNNW1qL2g0SS9XTUZWRWdi?=
 =?utf-8?B?dWlNWVFzV3Z2ZVlROTA2QnlGaW9RcGlnQ2EzSlZRclk4QTNGV3FDeTUzV2cv?=
 =?utf-8?B?bEdOallLUVFuc2FIZmhZUVhZY3lTQjF0Y1BQVnZWTDFpaHAwUmJmdE5rY3J3?=
 =?utf-8?B?eWFiUzFjZ1llYkpMWDltTmZLdFFrdUs0MThLOWVpZ0FZZmlEN1BMU3JyemlS?=
 =?utf-8?B?QnB5WkJVbUV2UGZUMUJJbG1CdTFxODdWOTRnUHJuNDhxanpaQ1plWkFENE4y?=
 =?utf-8?B?aEsyRVN4NmdrSVhkc2Q5bml2V1ltalM2SndjY29INDh0R3M4NlZ1SXFobmJG?=
 =?utf-8?B?TTFETzY5bEl1b3FkcUw1OWthbGp2TmxVejZMU05UVmpQZDgyNC8ydGVTQTNl?=
 =?utf-8?B?MldIN0I2UlR3QUt2Ym05RllQVWUvaTNzRHF2NWRHdnRGRW45TERmUHJHUitu?=
 =?utf-8?B?NThyR2xMNGd0U29OQ3dJdEJZejBRb1lXRWdObXNQdkJlTGV5RHJHZUJjZVor?=
 =?utf-8?B?TkQ4YXdWMlFjZTBEN1lxeXZza0FvVmNsZjZyaHJINVVLWE5tc3Zwb2pyU0wx?=
 =?utf-8?B?ZFk5d29wT3paQzY3djM2Zm5adTV2TVZybmxMVE1va3ZFUXdsYlY2a0NaaC9H?=
 =?utf-8?B?bm8vSmg2bEY1ZFBTRWNta2xpVis4ckJDTEhHN1hheElwK3Zmd2FGS3JGZ1FG?=
 =?utf-8?B?Mi8wVTBsUUdwS2g1cFZva0tta0QrNHQ4S00rMGIvdXJpaGpTRGViL1VxaVAx?=
 =?utf-8?B?bk1JaXduYUxnOWJaeHFuTzZDMGhwalRyR1dvYStqOHMxL3JqSkFrb2NIVU4r?=
 =?utf-8?B?Rm83VDNmNFJUQkVZeUl5OGNVaUJLYmhMWndoZTZTd2tzRzU5dDlEamVsTUQw?=
 =?utf-8?Q?ISc2WvsxhNExrd7w=3D?=
X-Exchange-RoutingPolicyChecked: PsiWP8IFEPZT8BNP+g73MkuWAYEFOiZLFMAvqM69batL50u7PVWZ5A0s4wceaW/ETU9ZoMjev1zBWuuYgAF9NW0e+2trnWtce1AbuU6r1+1lNgBBDzypiwD6Iex3H/txFL8o3P5TB8WQCrgynmFJjTSaL2NQ7THoxTThu3b7dkxbXK9W0LOQoqxKpxCd+NXX3Lnx/87bRn5jBxjC4Ld88B0x+SdpLoMiUrcwy+n/rEyIl2SwbivCzDBWjNHBbg6J0TuDNvTBtO5v88GifR9YOXajNBLgKgm8/QrNDHKQP7t9nXY4ZtIzSYtWFF9PR28NI8OVDqsaoE+YuoduVD3yBg==
X-MS-Exchange-CrossTenant-Network-Message-Id: c9d5afd1-3d3b-44aa-602b-08decd77bb89
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7381.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Jun 2026 20:25:26.6232 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Q4FfWTngZKm0KWlyIrFpER0pc/Hw21Z6KV177tJfETL1IdrTa/UKInvE6LTr09BcYKMWKGni8WV8gsjxt1XlDEYcbdLpMHf8dRzO9UmQSic=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7709
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781814332; x=1813350332;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Fr8NhIHNNZFEgi32iBc8aX144vMNo2iVwEupYD+hEm8=;
 b=ADl6jtidYjQxasxHh8Z7R+iQVDMt9N3iwWzU3tcADwQkX+bPseRnrZlf
 XTZWlylh3KBNpjIzbBc5wyXB/NN9uuKe4IRVwk04q9ZpGCH5LA5KPnhX4
 ezHsrMNvsZJQ9CluoSz3f9/RU8gTCfEvTe8z/2kcUlP9sxyCB8Eq7inJR
 mJN0IA5tp4KmYgkBuTRMEMDG/EIb5Gpmzo2v6pyzCJcgmD/j1XIAPzib5
 CYliyDusuBfH129Q1kMLzBrCk5hChmbIvi/tXijqCCTYGa4AStjDBUI5C
 mykVu2XH+sFRoJpqTbMXuG4RHR/FwVWCuf3BU2c0LhJR4NrH+Zou9SlV6
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ADl6jtid
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] igb: only strip Rx timestamp
 header on the first buffer of a frame
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:kurt@linutronix.de,m:tkusters@aweta.nl,m:netdev@vger.kernel.org,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:richardcochran@gmail.com,m:hawk@kernel.org,m:stable@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORGED_SENDER(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_CC(0.00)[lists.osuosl.org,intel.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,gmail.com,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[aweta.nl:email,intel.com:mid,intel.com:from_mime,osuosl.org:dkim,osuosl.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9597B6A2850

On 6/18/2026 10:38 AM, Tony Nguyen wrote:
> On 6/15/2026 12:43 AM, Kurt Kanzenbach wrote:
>> On Fri Jun 12 2026, Tjerk Kusters wrote:
>>> Fixes: 5379260852b0 ("igb: Fix XDP with PTP enabled")
>>> Cc: stable@vger.kernel.org
>>> Signed-off-by: T Kusters <tkusters@aweta.nl>
> 
> Sign off should be your full name.
> 
Ideally it should also match whatever you use as your email in the From.
