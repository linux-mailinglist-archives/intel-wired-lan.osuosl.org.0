Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YI7wILfF5WlIoAEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 20 Apr 2026 08:20:39 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 477EF427245
	for <lists+intel-wired-lan@lfdr.de>; Mon, 20 Apr 2026 08:20:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1B75E80DAC;
	Mon, 20 Apr 2026 06:20:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2tuL20SxHqiP; Mon, 20 Apr 2026 06:20:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 624A580CFE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776666035;
	bh=uQnpDAA9+DppkToNqEZgsBwHOTmD8yr/luCyRA3ifc0=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=3E2lc+ZzUmpG4Lrqj72KgnqbMTHozyjkb4UNsiyMf7H2UviHIRXF3Au+l0iqE3FU7
	 ZjVAo9BQl3eQQnFccrcrFZSWJaqO7SRHpsgIMw1AYbxqnc9nHYtlTqixEGPz/zPhwK
	 K3SYHxc0BZB9yN9ZADCwe1KIdvWR1n6mqEjPj3GrAI/5aYGMgxFbGM0sBj4HTIfDR7
	 Ge+f9N4pA22fynATXneAnp/Fvh3iFy7ulJT6OGloy+g5/BzOGdpvR4kq9OOCvopOIQ
	 wKUDmGJ2DV7/1BYfDEeAGt1/6L5tyOvMpnEbU2xPnTOjxfGTJCjdeJ8qPjff+mGlPN
	 w9sGBAyrFXDYg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 624A580CFE;
	Mon, 20 Apr 2026 06:20:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id AC787355
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Apr 2026 06:20:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9251B60860
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Apr 2026 06:20:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TE-MjgL2B0AE for <intel-wired-lan@lists.osuosl.org>;
 Mon, 20 Apr 2026 06:20:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 838A260845
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 838A260845
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 838A260845
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Apr 2026 06:20:32 +0000 (UTC)
X-CSE-ConnectionGUID: O3P4e9IkRwiUA/eA0AqYqA==
X-CSE-MsgGUID: EkEYgxO6SoODbzuAnBFWoA==
X-IronPort-AV: E=McAfee;i="6800,10657,11762"; a="81452472"
X-IronPort-AV: E=Sophos;i="6.23,189,1770624000"; d="scan'208";a="81452472"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2026 23:20:31 -0700
X-CSE-ConnectionGUID: A9wVwgTkTwq5r33x/mN9oQ==
X-CSE-MsgGUID: go0nOc1UTCSpTJJQsSQ5tA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,189,1770624000"; d="scan'208";a="233393129"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2026 23:20:31 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 19 Apr 2026 23:20:31 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Sun, 19 Apr 2026 23:20:31 -0700
Received: from BN8PR05CU002.outbound.protection.outlook.com (52.101.57.34) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 19 Apr 2026 23:20:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OyNH3DfzXkL+xBr3IyvNjGvwv9FEFKParEWCbbpP1miSKvOQVj/m8hJbS54P5cfZSe6c7rYnRG0j72Ptt7ErXASzPLkC2jrSkhqeI5tNneJi41PD0UbkHaRnjmr99Wokspa0SDZVp1MkT9WmAsuKqr4OdW7eRt+ptC63Yt6D093I9V4ojhHOxAkM7g2EX6pnbID0tZeuxh7+UFd2Npeb5xXPjiSUKicCxb496Dp1T2Pmz2ieGuflrUn1qH6pwwlEuRcTPR3UbyxSBoMx+zHMTr+jqStqByocyIVofLrVRV20RdqqJps14nUb8pShPTPo25sfu/+LOvSWihY3CaXHhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uQnpDAA9+DppkToNqEZgsBwHOTmD8yr/luCyRA3ifc0=;
 b=R7biVa9VuSW5Nb6M58/iXXEjtn/LVKsTn1IT6q6yawCvIOhTXvjUjGmGyFYDZFdWzwReNvx1dIk0dq45ycJWiRZq2qQ6abfN+RNa3aEEpEXqDMxOr4aAPEusQuI7Bw0Gk8Yuciy2rZnZG/zOC6xOPZSwGXt3PpRno9u4a5Jz8wjmaC0RJvB72+f1bmc1GHdqWKSuEPYzY0vb57SA18tRvNve0b2n6kY9rvAusVTTyvzJCfnb8goVhVCeMx/scUGw61l1H1gnHae0huYJXH1Iq/Evbyjd5RQumti2oS4EZZlrk4qaGV4pXJyQjS2HTiPmqfNhcrr7XuEMZmU71DvD9Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9846.14; Mon, 20 Apr 2026 06:20:27 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9818.017; Mon, 20 Apr 2026
 06:20:27 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Li Li <boolli@google.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "David S. Miller" <davem@davemloft.net>,
 Jakub Kicinski <kuba@kernel.org>, Eric Dumazet <edumazet@google.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "David
 Decotigny" <decot@google.com>, "Singhai, Anjali" <anjali.singhai@intel.com>,
 "Samudrala, Sridhar" <sridhar.samudrala@intel.com>, Brian Vazquez
 <brianvv@google.com>, "Tantilov, Emil S" <emil.s.tantilov@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH] idpf: do not perform flow ops when
 netdev is detached
Thread-Index: AQHc0DJ5cZPN0AWnmU2brYOcqUuVYbXnesCQ
Date: Mon, 20 Apr 2026 06:20:26 +0000
Message-ID: <IA3PR11MB89864E6BED3A633061BB0A1FE52F2@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260419192555.3631327-1-boolli@google.com>
In-Reply-To: <20260419192555.3631327-1-boolli@google.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|DM4PR11MB6019:EE_
x-ms-office365-filtering-correlation-id: a3d0bd3c-be19-4a20-9f14-08de9ea4e9f3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|18002099003|38070700021|56012099003|22082099003;
x-microsoft-antispam-message-info: 9Iy5r9BSUsoFzVMLRZZhfmqAki8jW1+9dMG0YHL6afzFY1c1cBwwCn3HceNy/wczpthTZiJ+YfkxBJSncZrWC2IywUPnpxvjjIT89qDyI/PvnAgXW4TRiWg64mFvLdtKhW2niWVhQ0gsUTqRrbqAw4f/i1oOdQYt6imfIkbC7zUSqolX3pUB11lQAJn9sOmfk/OF94a/f44WGFWjMyg7iqUe1PoJgBIjRNGc+0FkohExIIj2nHJnf/kIqeJ3iVHI4PdKnyE9mwyo7FCNsJ9ei4L+YABWkgVzLPgqrRr1r2NNIUMn1rnLEIAMFsOtSKYVqLZI1QQBefxV5RvPWIuhUmmUvbxSFYUv5x8sHFTn5oDRL4zo19No6J7yFa/0XvabA7w2zvPhk9l0W344aSdTQ8oLMHa+OtChK0rbufhA8P/kM3BE0Xm0RLiwbItsqEXaBCBlNGUAhdVU6Ii+bt+xXaSXILghl95mBQz157m9kNGNaMBbTELVSFf5Gq6pBIhC/609KUsGa2j7U/rmJO+loVZwYuYgM8A83iA9AkAezkL1rF5YkXYoUZipnqbV5bYUCbGQWnzhUC9zVKai+Ug2DQsyOGs63cd+c80UBPM6U09dpXMqRTuiWvE/G/5JrHd7TcGGOB7ZG7aW9zSmK3v3ImEHhDy0T+H3DLkkzo7l7EITKwVFmCHgsE1GLWjfyOhsdszqwGtNyeEMLeKR+Te9Ylyq6tS0AGGbY0OTRUhfMIFmB4itdklOtL6WYV7hB59F1zCoiVsOK2ag2gSEGyGFwmi9VLCGKCEoZXrPiALwvBo=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(18002099003)(38070700021)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RnVSQVZrUTVoRVRxNG0zL054OWFqT0trSVFhT3ZISkhCcEFuTDZoNHBUdXFG?=
 =?utf-8?B?NFUwUE9Sek56TFErM0ZlNWZiNWdscHhpQXM5eXF3QlV6SkhhUHJxd0tjTWZi?=
 =?utf-8?B?cHVEeUc2M0NKNVU5SS9ab2Z6a3lhY2drbEFxUkxNL21jZE9FQ1k1VmJnc3c1?=
 =?utf-8?B?eVhvUHZuNjl6bERGK1N0Qk92K3k1MWkrUnhFTU1pVUJFbytZV3Faazdia2s2?=
 =?utf-8?B?OUNGbFNSa2dxdllwOXBWTFlOTUppeE5td0QxVWVMV1MyTlJCVUlJWmRSYzJT?=
 =?utf-8?B?OXJMU3I4Q1gxN21LVFl5cmoxTm16cE9naHJQU21aVGxkWVlvZDArYzM4djlm?=
 =?utf-8?B?aVNnMnRwTmZjUEpPbDZCc2krRGJoa01IN2l6RDNSNnEvb09rajRzWDg3SVVx?=
 =?utf-8?B?YmQ0NkxjVGRDT0NrQnlpakhOd1E0TmFuOVd2V2g3VDNkMVQyd1hNZ0tmMUEz?=
 =?utf-8?B?ZHhLM1dBeVd2QktrVHRoYlVhTkMzN1BOVENSY3RzRTQweW9uSHZkaXJzTkc2?=
 =?utf-8?B?azNOcWNWSVJiZDFKeUlTSEhhekZoeGl5VnRIOHRKbnRYOEdwQk02c3JOcVlL?=
 =?utf-8?B?ZXJJbjJNRnNXeU9iZ2lpMVY3Z0tvWmV2ajgzWmhibExHYVdDV21Ya3pkbU82?=
 =?utf-8?B?ZkNlcGJpMXJ6Y2V6S0hOS0xsQmNoSmRSY2pKZ2srMkR2QlVYMllUM2dwczd2?=
 =?utf-8?B?bThCQ1RhU1NEYXE1eVlOVjM0V1ZyUXVGNTgzeXBWZk50ZFdXb2FNL0R4TlBI?=
 =?utf-8?B?QVRVdklDVHB4aDhTMEtTaHNaeFVGQ0JHdGN6T0ZYWmlNZlRxM1VuTnJCczFv?=
 =?utf-8?B?Q0FmSVIzVnR6NzJVdTRQaENVVGc1b2hNT1djRHplNk8ycXFtcERVSTc0SVVJ?=
 =?utf-8?B?N0RrRHRTRGp3VTVBUk1ld1ZsSmtaSVlvWnNLd2FhTmZMQVcwdFVKaFFib3NF?=
 =?utf-8?B?SHdXL2JaM2F0MmdydWwzUHJhQlFXQlpLRS9OcForNXlyVGFWZlNLUmF3Z1Iz?=
 =?utf-8?B?dG1FekxFQVJkS3hMUEJsTGtnUFhLMVRvVEN0REY2dEVRd0I3L2htaTBtZ1Ez?=
 =?utf-8?B?N0JyUFJJVXY0SlhJcGppbmVMdWE5L0R3eXdnYys0Um44a2RpWFNHa0xBZFBl?=
 =?utf-8?B?UUtEKy81dzhWWldqRTJsUGxMSXkrT1cyU2M2ZWx5NEFqcXJQR1B1QlJ4bFp5?=
 =?utf-8?B?YzR2QmhodUdzamh0ZlhZamc1QXVtVHV1RmYxemswbXpJUmVlNVRSYVEzV0dY?=
 =?utf-8?B?T1ZFYVR1NVZrS0t0M3cwZS9JM2FxQ3NBa1hXTjNRREJocTkvRGs5MUEzanVI?=
 =?utf-8?B?eGhkZWtORDM5elMrbDU5U253R2xtRWJOc2pBeERvSlBJYkdnOS9PRXlHc001?=
 =?utf-8?B?U1M5TFR5ZTdTMWNya2VhM1N3QStQVUFyb1F6cTJVaTBBYXlqU0Rnbm5RUFdz?=
 =?utf-8?B?bk5VdGZTYTFNMEV1anQzUG01djlMNW5udytSbFpkckEvdFJZZlhIV043SkhO?=
 =?utf-8?B?VVkyWXJrMUduSjNnUGFPNWQvcVliZ3k1Qk0wU1RxRTFLbW92cmZMcGN2QnFZ?=
 =?utf-8?B?cEliY2pFb0FMWitCN2l4QkFzcVAwOGttc2NjZ1oxQXA3WTkvV1ExMzhZNUw4?=
 =?utf-8?B?QjVWV2Y0blF4dHpQWkRXNVpaUkFuMmhNejJtTHYyWDlQOHdqU1daR0pGWXcz?=
 =?utf-8?B?UFlOVXpVNEdXZndGK25tck5xd0FmdVo0ZVdOZnR5VGd6amRMZFFHMU4vQ2hk?=
 =?utf-8?B?WHlHcXFIVVFoZzNPSWkxYzlOa0YxbnJGVmVVTGtnbFRTcTlGVFdobVR6SUxB?=
 =?utf-8?B?T01qNFhXYjFoRzBvK0NUa3FEN2FldTFIY2lmMXZQRVdzRVVPekt3SE5yR1ND?=
 =?utf-8?B?bldmMDRiekdHNlFsUkZqeE1LN0sxdmVKenp3eVJDRWFUaVdOMVkrZWpNcFJS?=
 =?utf-8?B?Rmh6QVpIaVNyTHc5am1QVEhJMTQ4ZHhNUlR1MERQaGp3ek9xZnlJOUd0bUZa?=
 =?utf-8?B?UlFMcGk5alNYWFZPVWk4aTFHb3pmT0FiY3RJRWNmMUtLamdnNVRCQ0g4eDFt?=
 =?utf-8?B?cmtpWm14eVF1SDViOG5CSFJqendhUE1OOEluN0R5Zk1ndWhsKzZteE95TW8w?=
 =?utf-8?B?RDA3MXVPUWRPK090c1ZoY054a2poR00vbndRL3cxUFJGYmdaWjBab01hazc0?=
 =?utf-8?B?UzhUSnRNcG5YeXcxcytqUTBuenJ4b0Z2UnF0Nk1Ta1loVFAwREdRN3liTU9q?=
 =?utf-8?B?TVdtWWJLRGlteWNyM3gweUZVWWVSVmVsTmsrTUZNSmNta2ZvMFlFOUNPMUtW?=
 =?utf-8?B?aE5NMW95QlRDQ051WmFrV1FLM2pFRUx0VTVFTVIzellWTzljK0NSMlFWeHpw?=
 =?utf-8?Q?LMwitGoZGH+VcBgo=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: I2KrrNjI/lLGL8Rd7yCQKVy33/dKBB6xo6kNq9CCU/gyk5HOAbZ81P1fl+PxWIjbtSn2FPMqrK8HhyGo/M19h0s/72CGcJkNMyjixyajfbss7mQBtxTxsNyjLdPdjp/NT0WrX+pwadwNGHuYgdAKN2xxaVR0qzmkbs86+fmwkt/CIvFj79y4UGeR17xBKO8KesOgkGx7VZZ6xA1wWxJefxO00Iii/JnRnnxYD8SYcG8kX7Jda048GdLj1UCwwJiF7NDKTdmDYPGb7eqtXlVbJKJUQdr/nSgM8bJs2d1ux8+iVMEjQ8pl01s50S4bK7C9VMQIGQS4of2q79VlVmsKFQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a3d0bd3c-be19-4a20-9f14-08de9ea4e9f3
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Apr 2026 06:20:26.9949 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ynlx87RgqPTIQGdBlGpjjOmIhiB4NJWLOoW0gP0/FuJ6l7u7ytSVuzA0Vg7idqtaZKU6wDP4pJqUIBA9ft9NOl/T3A0MwTFOsaY2EjbS83E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6019
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776666032; x=1808202032;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=uQnpDAA9+DppkToNqEZgsBwHOTmD8yr/luCyRA3ifc0=;
 b=E9dPV3a8WhoarGK34IWq6XrgdBw9d25k5pBCHlU0pJDvOtzO1h5zyV9t
 QuYefWMi3oxEtjKM8FiAjgf6rY0KkjCAGD1XagZ4PVOnB8AT8FAVelAAf
 eB+TN5ACoqeNSUGyFBbTxfvbt9q7BJ0Iv78idu469DVm/ktxlhHcjY3ad
 0XDXRrcCHxM4GYIRMpWIgBcqd8MgxD+h/aksWjyL3EaZnMnNJpfQcESb4
 nGeXT44HAiYSOuHqnL+Y9R4+PhvHR4eaLC1AIWgboPHJxwGGWHli2F87J
 0Jiqbbi3OB6edup/a1r11VpiVq2n2HUMpKgxtczP66Plozbo8xssX920t
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=E9dPV3a8
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] idpf: do not perform flow ops when
 netdev is detached
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
X-Spamd-Result: default: False [1.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:boolli@google.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:davem@davemloft.net,m:kuba@kernel.org,m:edumazet@google.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:decot@google.com,m:anjali.singhai@intel.com,m:sridhar.samudrala@intel.com,m:brianvv@google.com,m:emil.s.tantilov@intel.com,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 477EF427245
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtd2lyZWQtbGFu
IDxpbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYNCj4gT2YgTGkg
TGkgdmlhIEludGVsLXdpcmVkLWxhbg0KPiBTZW50OiBTdW5kYXksIEFwcmlsIDE5LCAyMDI2IDk6
MjYgUE0NCj4gVG86IE5ndXllbiwgQW50aG9ueSBMIDxhbnRob255Lmwubmd1eWVuQGludGVsLmNv
bT47IEtpdHN6ZWwsDQo+IFByemVteXNsYXcgPHByemVteXNsYXcua2l0c3plbEBpbnRlbC5jb20+
OyBEYXZpZCBTLiBNaWxsZXINCj4gPGRhdmVtQGRhdmVtbG9mdC5uZXQ+OyBKYWt1YiBLaWNpbnNr
aSA8a3ViYUBrZXJuZWwub3JnPjsgRXJpYyBEdW1hemV0DQo+IDxlZHVtYXpldEBnb29nbGUuY29t
PjsgaW50ZWwtd2lyZWQtbGFuQGxpc3RzLm9zdW9zbC5vcmcNCj4gQ2M6IG5ldGRldkB2Z2VyLmtl
cm5lbC5vcmc7IGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmc7IERhdmlkDQo+IERlY290aWdu
eSA8ZGVjb3RAZ29vZ2xlLmNvbT47IFNpbmdoYWksIEFuamFsaQ0KPiA8YW5qYWxpLnNpbmdoYWlA
aW50ZWwuY29tPjsgU2FtdWRyYWxhLCBTcmlkaGFyDQo+IDxzcmlkaGFyLnNhbXVkcmFsYUBpbnRl
bC5jb20+OyBCcmlhbiBWYXpxdWV6IDxicmlhbnZ2QGdvb2dsZS5jb20+OyBMaQ0KPiBMaSA8Ym9v
bGxpQGdvb2dsZS5jb20+OyBUYW50aWxvdiwgRW1pbCBTIDxlbWlsLnMudGFudGlsb3ZAaW50ZWwu
Y29tPg0KPiBTdWJqZWN0OiBbSW50ZWwtd2lyZWQtbGFuXSBbUEFUQ0hdIGlkcGY6IGRvIG5vdCBw
ZXJmb3JtIGZsb3cgb3BzIHdoZW4NCj4gbmV0ZGV2IGlzIGRldGFjaGVkDQo+IA0KPiBFdmVuIHRo
b3VnaCBjb21taXQgMmUyODFlMTE1NWZjICgiaWRwZjogZGV0YWNoIGFuZCBjbG9zZSBuZXRkZXZz
IHdoaWxlDQo+IGhhbmRsaW5nIGEgcmVzZXQiKSBwcmV2ZW50cyBldGh0b29sIC1OLy1uIG9wZXJh
dGlvbnMgdG8gb3BlcmF0ZSBvbg0KPiBkZXRhY2hlZCBuZXRkZXZzLCB3ZSBmb3VuZCB0aGF0IG91
dC1vZi10cmVlIHdvcmtmbG93cyBsaWtlIE9wZW5PbmxvYWQNCj4gY2FuIGJ5cGFzcyBldGh0b29s
IGNvcmUgbG9ja3MgYW5kIGNhbGwgaWRwZl9zZXRfcnhuZmMgZGlyZWN0bHkgZHVyaW5nDQo+IGFu
IGlkcGYgSFcgcmVzZXQuIFdoZW4gdGhpcyBoYXBwZW5zLCB3ZSBjb3VsZCBnZXQga2VybmVsIGNy
YXNoZXMgbGlrZQ0KPiB0aGUgZm9sbG93aW5nOg0KPiANCj4gWyA0MDQ1Ljc4NzQzOV0gQlVHOiBr
ZXJuZWwgTlVMTCBwb2ludGVyIGRlcmVmZXJlbmNlLCBhZGRyZXNzOg0KPiAwMDAwMDAwMDAwMDAw
MDcwIFsgNDA0NS43OTQ0MjBdICNQRjogc3VwZXJ2aXNvciByZWFkIGFjY2VzcyBpbiBrZXJuZWwN
Cj4gbW9kZSBbIDQwNDUuNzk5NTgwXSAjUEY6IGVycm9yX2NvZGUoMHgwMDAwKSAtIG5vdC1wcmVz
ZW50IHBhZ2UgWw0KPiA0MDQ1LjgwNDczOV0gUEdEIDAgWyA0MDQ1LjgwNjc3Ml0gT29wczogT29w
czogMDAwMCBbIzFdIFNNUCBOT1BUSSAuLi4NCj4gWyA0MDQ1LjgzNjQyNV0gV29ya3F1ZXVlOiBv
bmxvYWQtd3F1ZXVlIG9vZl9kb19kZWZlcnJlZF93b3JrX2ZuDQo+IFtvbmxvYWRdIFsgNDA0NS44
NDI5MjZdIFJJUDogMDAxMDppZHBmX2RlbF9mbG93X3N0ZWVyKzB4MjQvMHgxNzANCj4gW2lkcGZd
IC4uLg0KPiBbIDQwNDUuOTQ2MzIzXSBDYWxsIFRyYWNlOg0KPiBbIDQwNDUuOTQ4Nzk2XSAgPFRB
U0s+DQo+IFsgNDA0NS45NTA5MTVdICA/IHNob3dfdHJhY2VfbG9nX2x2bCsweDFiMC8weDJmMCBb
IDQwNDUuOTU1MjkzXSAgPw0KPiBzaG93X3RyYWNlX2xvZ19sdmwrMHgxYjAvMHgyZjAgWyA0MDQ1
Ljk1OTY3Ml0gID8NCj4gaWRwZl9zZXRfcnhuZmMrMHg2Zi8weDgwIFtpZHBmXSBbIDQwNDUuOTY0
MTQyXSAgPw0KPiBfX2RpZV9ib2R5LmNvbGQrMHg4LzB4MTIgWyA0MDQ1Ljk2ODAwMF0gID8gcGFn
ZV9mYXVsdF9vb3BzKzB4MTQ4LzB4MTYwDQo+IFsgNDA0NS45NzIxMTddICA/IGV4Y19wYWdlX2Zh
dWx0KzB4NmYvMHgxNjAgWyA0MDQ1Ljk3NjA2MF0gID8NCj4gYXNtX2V4Y19wYWdlX2ZhdWx0KzB4
MjIvMHgzMCBbIDQwNDUuOTgwMjYyXSAgPw0KPiBpZHBmX2RlbF9mbG93X3N0ZWVyKzB4MjQvMHgx
NzAgW2lkcGZdIFsgNDA0NS45ODUyNDVdDQo+IGlkcGZfc2V0X3J4bmZjKzB4NmYvMHg4MCBbaWRw
Zl0gWyA0MDQ1Ljk4OTUzNV0NCj4gYWZfeGRwX2ZpbHRlcl9yZW1vdmUrMHg3Yy8weGIwIFtzZmNf
cmVzb3VyY2VdIFsgNDA0NS45OTUwNjldDQo+IG9vX2h3X2ZpbHRlcl9jbGVhcl9od3BvcnRzKzB4
NmYvMHhhMCBbb25sb2FkXSBbIDQwNDYuMDAwNTg5XQ0KPiBvb19od19maWx0ZXJfdXBkYXRlKzB4
NjUvMHgyMTAgW29ubG9hZF0gWyA0MDQ2LjAwNTU4N10NCj4gb29mX2h3X2ZpbHRlcl91cGRhdGUu
Y29uc3Rwcm9wLjArMHhlNy8weDE0MCBbb25sb2FkXSBbIDQwNDYuMDExNzE2XQ0KPiBvb2ZfbWFu
YWdlcl91cGRhdGVfYWxsX2ZpbHRlcnMrMHhhZC8weDI3MCBbb25sb2FkXSBbIDQwNDYuMDE3Njcx
XQ0KPiBfX29vZl9kb19kZWZlcnJlZF93b3JrKzB4MTVlLzB4MTkwIFtvbmxvYWRdIFsgNDA0Ni4w
MjMwMTRdDQo+IG9vZl9kb19kZWZlcnJlZF93b3JrKzB4MmMvMHg0MCBbb25sb2FkXSBbIDQwNDYu
MDI4MDE4XQ0KPiBvb2ZfZG9fZGVmZXJyZWRfd29ya19mbisweDEyLzB4MzAgW29ubG9hZF0gWyA0
MDQ2LjAzMzI3N10NCj4gcHJvY2Vzc19vbmVfd29yaysweDE3NC8weDMzMCBbIDQwNDYuMDM3MzA0
XSAgd29ya2VyX3RocmVhZCsweDI0Ni8weDM5MA0KPiBbIDQwNDYuMDQxMDc0XSAgPyBfX3BmeF93
b3JrZXJfdGhyZWFkKzB4MTAvMHgxMCBbIDQwNDYuMDQ1MzY0XQ0KPiBrdGhyZWFkKzB4ZjYvMHgy
NDAgWyA0MDQ2LjA0ODUzMF0gID8gX19wZnhfa3RocmVhZCsweDEwLzB4MTAgWw0KPiA0MDQ2LjA1
MjI5N10gIHJldF9mcm9tX2ZvcmsrMHgyZC8weDUwIFsgNDA0Ni4wNTU4OTZdICA/DQo+IF9fcGZ4
X2t0aHJlYWQrMHgxMC8weDEwIFsgNDA0Ni4wNTk2NjRdICByZXRfZnJvbV9mb3JrX2FzbSsweDFh
LzB4MzAgWw0KPiA0MDQ2LjA2MzYxM10gIDwvVEFTSz4NCj4gDQo+IFRvIHByZXZlbnQgdGhpcywg
d2UgbmVlZCB0byBhZGQgY2hlY2tzIGluIGlkcGZfc2V0X3J4bmZjIGFuZA0KPiBpZHBmX2dldF9y
eG5mYyB0byBlcnJvciBvdXQgaWYgdGhlIG5ldGRldiBpcyBhbHJlYWR5IGRldGFjaGVkLg0KPiAN
Cj4gVGVzdGVkOiBpbXBsZW1lbnRlZCB0aGUgZm9sbG93aW5nIHBhdGNoIHRvIHN5bnRoZXRpY2Fs
bHkgZm9yY2UgaWRwZg0KPiBpbnRvIGEgSFcgcmVzZXQ6DQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWRwZi9pZHBmX3R4cnguYw0KPiBiL2RyaXZlcnMvbmV0
L2V0aGVybmV0L2ludGVsL2lkcGYvaWRwZl90eHJ4LmMNCj4gaW5kZXggNGZjMGJiMTRjNWIxLi4y
NzQ3NmQ1N2JjZjAgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lk
cGYvaWRwZl90eHJ4LmMNCj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWRwZi9p
ZHBmX3R4cnguYw0KPiBAQCAtMTAsNiArMTAsOSBAQA0KPiAgI2RlZmluZSBpZHBmX3R4X2J1Zl9u
ZXh0KGJ1ZikJCSgqKHUzMiAqKSYoYnVmKS0+cHJpdikNCj4gIExJQkVUSF9TUUVfQ0hFQ0tfUFJJ
Vih1MzIpOw0KPiANCj4gK3N0YXRpYyBib29sIFNJTVVMQVRFX1RYX1RJTUVPVVQ7DQo+ICttb2R1
bGVfcGFyYW0oU0lNVUxBVEVfVFhfVElNRU9VVCwgYm9vbCwgMDY0NCk7DQo+ICsNCj4gIC8qKg0K
PiAgICogaWRwZl9jaGtfbGluZWFyaXplIC0gQ2hlY2sgaWYgc2tiIGV4Y2VlZHMgbWF4IGRlc2Ny
aXB0b3JzIHBlcg0KPiBwYWNrZXQNCj4gICAqIEBza2I6IHNlbmQgYnVmZmVyDQo+IEBAIC00Niw2
ICs0OSw4IEBAIHZvaWQgaWRwZl90eF90aW1lb3V0KHN0cnVjdCBuZXRfZGV2aWNlICpuZXRkZXYs
DQo+IHVuc2lnbmVkIGludCB0eHF1ZXVlKQ0KPiANCj4gIAlhZGFwdGVyLT50eF90aW1lb3V0X2Nv
dW50Kys7DQo+IA0KPiArCVNJTVVMQVRFX1RYX1RJTUVPVVQgPSBmYWxzZTsNCj4gKw0KPiAgCW5l
dGRldl9lcnIobmV0ZGV2LCAiRGV0ZWN0ZWQgVHggdGltZW91dDogQ291bnQgJWQsIFF1ZXVlICVk
XG4iLA0KPiAgCQkgICBhZGFwdGVyLT50eF90aW1lb3V0X2NvdW50LCB0eHF1ZXVlKTsNCj4gIAlp
ZiAoIWlkcGZfaXNfcmVzZXRfaW5fcHJvZyhhZGFwdGVyKSkgeyBAQCAtMjIyNSw2ICsyMjMwLDgg
QEANCj4gc3RhdGljIGJvb2wgaWRwZl90eF9jbGVhbl9jb21wbHEoc3RydWN0IGlkcGZfY29tcGxf
cXVldWUgKmNvbXBscSwgaW50DQo+IGJ1ZGdldCwNCj4gIAkJCWdvdG8gZmV0Y2hfbmV4dF9kZXNj
Ow0KPiAgCQl9DQo+ICAJCXR4X3EgPSBjb21wbHEtPnR4cV9ncnAtPnR4cXNbcmVsX3R4X3FpZF07
DQo+ICsJCWlmICh1bmxpa2VseShTSU1VTEFURV9UWF9USU1FT1VUICYmICh0eF9xLT5pZHggJSAy
ID09DQo+IDEpKSkNCj4gKwkJCWdvdG8gZmV0Y2hfbmV4dF9kZXNjOw0KPiANCj4gIAkJLyogRGV0
ZXJtaW5lIGNvbXBsZXRpb24gdHlwZSAqLw0KPiAgCQljdHlwZSA9IGxlMTZfZ2V0X2JpdHModHhf
ZGVzYy0+Y29tbW9uLnFpZF9jb21wdHlwZV9nZW4sDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25l
dC9ldGhlcm5ldC9pbnRlbC9pZHBmL2lkcGZfdmlydGNobmwuYw0KPiBiL2RyaXZlcnMvbmV0L2V0
aGVybmV0L2ludGVsL2lkcGYvaWRwZl92aXJ0Y2hubC5jDQo+IGluZGV4IGJlNjZmOWIyZTEwMS4u
YmE1ZGEyYTg2YzE1IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9p
ZHBmL2lkcGZfdmlydGNobmwuYw0KPiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9p
ZHBmL2lkcGZfdmlydGNobmwuYw0KPiBAQCAtOCw2ICs4LDkgQEANCj4gICNpbmNsdWRlICJpZHBm
X3ZpcnRjaG5sLmgiDQo+ICAjaW5jbHVkZSAiaWRwZl9wdHAuaCINCj4gDQo+ICtzdGF0aWMgYm9v
bCBWSVJUQ0hOTF9GQUlMRUQ7DQo+ICttb2R1bGVfcGFyYW0oVklSVENITkxfRkFJTEVELCBib29s
LCAwNjQ0KTsNCj4gKw0KPiAgLyoqDQo+ICAgKiBzdHJ1Y3QgaWRwZl92Y194bl9tYW5hZ2VyIC0g
TWFuYWdlciBmb3IgdHJhY2tpbmcgdHJhbnNhY3Rpb25zDQo+ICAgKiBAcmluZzogYmFja2luZyBh
bmQgbG9va3VwIGZvciB0cmFuc2FjdGlvbnMgQEAgLTM0OTYsNiArMzQ5OSwxMSBAQA0KPiBpbnQg
aWRwZl92Y19jb3JlX2luaXQoc3RydWN0IGlkcGZfYWRhcHRlciAqYWRhcHRlcikNCj4gIAkJc3dp
dGNoIChhZGFwdGVyLT5zdGF0ZSkgew0KPiAgCQljYXNlIF9fSURQRl9WRVJfQ0hFQ0s6DQo+ICAJ
CQllcnIgPSBpZHBmX3NlbmRfdmVyX21zZyhhZGFwdGVyKTsNCj4gKw0KPiArCQkJaWYgKHVubGlr
ZWx5KFZJUlRDSE5MX0ZBSUxFRCkpIHsNCj4gKwkJCQllcnIgPSAtRUlPOw0KPiArCQkJfQ0KPiAr
DQo+ICAJCQlzd2l0Y2ggKGVycikgew0KPiAgCQkJY2FzZSAwOg0KPiAgCQkJCS8qIHN1Y2Nlc3Ms
IG1vdmUgc3RhdGUgbWFjaGluZSBmb3J3YXJkICovDQo+IA0KPiBBbmQgdGVzdGVkIGJ5IHdyaXRp
bmcgMSB0byAvc3lzL21vZHVsZS9pZHBmL3BhcmFtZXRlcnMvVklSVENITkxfRkFJTEVEDQo+IGFu
ZCAvc3lzL21vZHVsZS9pZHBmL3BhcmFtZXRlcnMvU0lNVUxBVEVfVFhfVElNRU9VVCwgYW5kIHJ1
bm5pbmcNCj4gaWRwZl9nZXRfcnhuZmMoKSByaWdodCBhZnRlciB0aGUgSFcgcmVzZXQuDQo+IA0K
PiBXaXRob3V0IHRoZSBwYXRjaDogZW5jb3VudGVyZWQgTlVMTCBwb2ludGVyIGFuZCBrZXJuZWwg
Y3Jhc2guDQo+IA0KPiBXaXRoIHRoZSBwYXRjaDogbm8gY3Jhc2hlcy4NCj4gDQo+IEZpeGVzOiAy
ZTI4MWUxMTU1ZmMgKCJpZHBmOiBkZXRhY2ggYW5kIGNsb3NlIG5ldGRldnMgd2hpbGUgaGFuZGxp
bmcgYQ0KPiByZXNldCIpDQo+IFNpZ25lZC1vZmYtYnk6IExpIExpIDxib29sbGlAZ29vZ2xlLmNv
bT4NCj4gLS0tDQo+ICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZHBmL2lkcGZfZXRodG9v
bC5jIHwgNiArKysrKysNCj4gIDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKykNCj4gDQo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZHBmL2lkcGZfZXRodG9v
bC5jDQo+IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWRwZi9pZHBmX2V0aHRvb2wuYw0K
PiBpbmRleCBiYjk5ZDllN2M2NWQuLjgzNjhhN2U2YTc1NCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVy
cy9uZXQvZXRoZXJuZXQvaW50ZWwvaWRwZi9pZHBmX2V0aHRvb2wuYw0KPiArKysgYi9kcml2ZXJz
L25ldC9ldGhlcm5ldC9pbnRlbC9pZHBmL2lkcGZfZXRodG9vbC5jDQo+IEBAIC00Myw2ICs0Myw5
IEBAIHN0YXRpYyBpbnQgaWRwZl9nZXRfcnhuZmMoc3RydWN0IG5ldF9kZXZpY2UgKm5ldGRldiwN
Cj4gc3RydWN0IGV0aHRvb2xfcnhuZmMgKmNtZCwNCj4gIAl1bnNpZ25lZCBpbnQgY250ID0gMDsN
Cj4gIAlpbnQgZXJyID0gMDsNCj4gDQo+ICsJaWYgKCFuZXRkZXYgfHwgIW5ldGlmX2RldmljZV9w
cmVzZW50KG5ldGRldikpDQo+ICsJCXJldHVybiAtRU5PREVWOw0KPiArDQo+ICAJaWRwZl92cG9y
dF9jdHJsX2xvY2sobmV0ZGV2KTsNCj4gIAl2cG9ydCA9IGlkcGZfbmV0ZGV2X3RvX3Zwb3J0KG5l
dGRldik7DQo+ICAJdnBvcnRfY29uZmlnID0gbnAtPmFkYXB0ZXItPnZwb3J0X2NvbmZpZ1tucC0+
dnBvcnRfaWR4XTsNCj4gQEAgLTM0OSw2ICszNTIsOSBAQCBzdGF0aWMgaW50IGlkcGZfc2V0X3J4
bmZjKHN0cnVjdCBuZXRfZGV2aWNlDQo+ICpuZXRkZXYsIHN0cnVjdCBldGh0b29sX3J4bmZjICpj
bWQpICB7DQo+ICAJaW50IHJldCA9IC1FT1BOT1RTVVBQOw0KPiANCj4gKwlpZiAoIW5ldGRldiB8
fCAhbmV0aWZfZGV2aWNlX3ByZXNlbnQobmV0ZGV2KSkNCj4gKwkJcmV0dXJuIC1FTk9ERVY7DQo+
ICsNCj4gIAlpZHBmX3Zwb3J0X2N0cmxfbG9jayhuZXRkZXYpOw0KPiAgCXN3aXRjaCAoY21kLT5j
bWQpIHsNCj4gIAljYXNlIEVUSFRPT0xfU1JYQ0xTUkxJTlM6DQo+IC0tDQo+IDIuNTQuMC5yYzEu
NTEzLmdhZDhhYmU3YTVhLWdvb2cNCg0KUGxlYXNlIGFkZCBDYzogc3RhYmxlQHZnZXIua2VybmVs
Lm9yZw0KDQpSZXZpZXdlZC1ieTogQWxla3NhbmRyIExva3Rpb25vdiA8YWxla3NhbmRyLmxva3Rp
b25vdkBpbnRlbC5jb20+DQo=
