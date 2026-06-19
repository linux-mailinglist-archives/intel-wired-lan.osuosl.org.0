Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 2ndxGEXuNGpzkQYAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 19 Jun 2026 09:22:45 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0202A6A4504
	for <lists+intel-wired-lan@lfdr.de>; Fri, 19 Jun 2026 09:22:44 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=yCje8uZt;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.138 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=pass (policy=none) header.from=osuosl.org;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6536A854D4;
	Fri, 19 Jun 2026 07:22:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Zh7iD-FYV_2b; Fri, 19 Jun 2026 07:22:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E3760854D6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1781853761;
	bh=hGP0tDiGS5xgR5U2WStJsxq8sCKPCOaSVdTQC1ahJls=;
	h=To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From:Reply-To:From;
	b=yCje8uZtFEywdkrCIw3jp+svdvd21Oazsn6d4eO3z4G4FrRuanBWTT0cU9iSory8L
	 c/2YI6hqcwfx8o3BgQtI9n25bPwcNdnrHFfEu57Eb4Z6CUKuggLryG7JE4dxaD9LEn
	 DQZWoxc7JYst0A2FwkaGQOUeK/27kkTb6vrMotUYZqOLP25b29VHJP579iAzGriUNt
	 m304EKSHKGCPw/DvNtR/ER6wnkndZ/qzYKaQuM7H54c9/ssHBYEYFImxeKfFm9yfHS
	 JTE8IM1jNxAm8jf8JRV+qLr/8f6DymiThZwWBvlUZco0RXw5V1ruWkDBL0SDLQwu1u
	 ALLiTfh+bQW0Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id E3760854D6;
	Fri, 19 Jun 2026 07:22:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id BEA1A2D7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Jun 2026 07:22:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B03E0854D4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Jun 2026 07:22:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bVUD0qQ1AuGr for <intel-wired-lan@lists.osuosl.org>;
 Fri, 19 Jun 2026 07:22:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=52.101.72.141;
 helo=am0pr02cu008.outbound.protection.outlook.com;
 envelope-from=tkusters@aweta.nl; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 2D353854D3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2D353854D3
Received: from AM0PR02CU008.outbound.protection.outlook.com
 (mail-westeuropeazon11023141.outbound.protection.outlook.com [52.101.72.141])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2D353854D3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Jun 2026 07:22:37 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MMXR4W5FqQRp14vZzycFwhoZaKEgxvc0+FsIFrECC813FWNB2x+fRgba0OJnbSqwl5RFQTlqV/XkH8lysyIrCG+PVedCAaCJxB16jenGIzOWhOLYjzdOZNIGGQo6O2Kp0eTT0dnB2oejl/GfZFa99dvwhK9q4EmpRjR4Sb8+QHoW51hx+Gc8xeixGO8DPWgbZ01DMOeko9h7apzABcNBHB3dguFqTNVMH+LYD9R9yFcHJi8Z+OztlaBSZJ5bdVBxzvJbu5PNIhuRrKStwf3ILrLeguDcgmJXdAOga5PF2F865YAmg08eztxEiTURt7GPLqErghRyyZ4rLehmWAdq1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hGP0tDiGS5xgR5U2WStJsxq8sCKPCOaSVdTQC1ahJls=;
 b=LILxKMN7qHBiGV/ufysEhOHxrHaXlJMgdnfiX+csLp/0xKO5Sa0ff9IS5yiFcnYH9Imo3fh3dTqnYwQyGLIS3MNSkXFoO6GHb1dUxl9aLKZpAJaZEmk9AKjdyK09CTF3GmmpV22s+sVP7I7nT4JA6Vb2k2WjHWbf8Ru4MOLpxXvXZdqkrfcTEbkejpiPhIicUVlF+j5DAgXPeAR1ax4UA5JUNwS/Hbez/3/kTPX1TeVHz55+D1y+O6lGqSm5nN+iyiUN6eAvB7c8HXM/6VvoBxhCIhVRVwu8OjkdBDEZ+bs8SkZFXivK3wt82hEBHAq0io3bKcq47AVwIL/vpLsr+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=aweta.nl; dmarc=pass action=none header.from=aweta.nl;
 dkim=pass header.d=aweta.nl; arc=none
Received: from PAWPR05MB10691.eurprd05.prod.outlook.com (2603:10a6:102:35a::6)
 by PR3PR05MB6892.eurprd05.prod.outlook.com (2603:10a6:102:2f::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.139.11; Fri, 19 Jun
 2026 07:22:33 +0000
Received: from PAWPR05MB10691.eurprd05.prod.outlook.com
 ([fe80::3b9c:573e:3c13:3754]) by PAWPR05MB10691.eurprd05.prod.outlook.com
 ([fe80::3b9c:573e:3c13:3754%6]) with mapi id 15.21.0139.009; Fri, 19 Jun 2026
 07:22:33 +0000
To: Tony Nguyen <anthony.l.nguyen@intel.com>, Kurt Kanzenbach
 <kurt@linutronix.de>, "netdev@vger.kernel.org" <netdev@vger.kernel.org>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "przemyslaw.kitszel@intel.com" <przemyslaw.kitszel@intel.com>,
 "andrew+netdev@lunn.ch" <andrew+netdev@lunn.ch>, "davem@davemloft.net"
 <davem@davemloft.net>, "edumazet@google.com" <edumazet@google.com>,
 "kuba@kernel.org" <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>, 
 "richardcochran@gmail.com" <richardcochran@gmail.com>, "hawk@kernel.org"
 <hawk@kernel.org>, "stable@vger.kernel.org" <stable@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Thread-Topic: [PATCH net] igb: only strip Rx timestamp header on the first
 buffer of a frame
Thread-Index: Adz6QcrRn2ovfM6lTRK8EOoivUdfWACWOigAAKuim4AAHLI38A==
Date: Fri, 19 Jun 2026 07:22:33 +0000
Message-ID: <PAWPR05MB10691A87E84AAF07B9E7F4A2EB9E22@PAWPR05MB10691.eurprd05.prod.outlook.com>
References: <PAWPR05MB1069106D52F4E17F1EDB99C67B9182@PAWPR05MB10691.eurprd05.prod.outlook.com>
 <8733yojljf.fsf@jax.kurt.home>
 <55ab9b13-ee51-4ac6-af7b-b3feb159eb51@intel.com>
In-Reply-To: <55ab9b13-ee51-4ac6-af7b-b3feb159eb51@intel.com>
Accept-Language: en-US, nl-NL
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PAWPR05MB10691:EE_|PR3PR05MB6892:EE_
x-ms-office365-filtering-correlation-id: bb4a0f3f-df52-4cf8-2f2d-08decdd387dc
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|7416014|23010399003|1800799024|38070700021|22082099003|18002099003|4143699003|56012099006|5023799004;
x-microsoft-antispam-message-info: bP7+JvFlqPMQ/k5LGJ7CMvZ0PC59HyAjWceURO3fahO0bO2mK0geK2JIBUqJfYd2/cOs1KA+ozxz3uCIkDUlBc+uAV9qXwl19ghBg8YeTtnJ5/uE6hurK9Md3pbGj+ubSUoGj53NmJ5dPSnYwqGPpL8H523u2ckbhk5br+rANb1rj1eMNhPG6Ba25CVAKgHgtHygh33F23tR3hGMJn7vZSQwzg9ICngAxkvebN5PVQW4jnQ0jlVhF/L9eH6z4VMXDu/pFvBbqtW6u8Gb2I0lwvOmoW7mtn41fycj1SzEKD/SlCpwXRm9GXnvorfJoY7kFVhiGe16uprHYzlqMOeIPeijMLweYcDFRwDGQ/Ert3rIdlyRF5yErUSh6rw2WRVefG2DVUQbenVj1zU+Jwy5KHMiN9PnhCrC8MFhOKd0yVOINZX/iMIb4sVZfm8pF5jtuq1OUsAMSpUhAG2N+fcl+aPLpNQIh5xHWL4pNoTDzR4P5CqzWh2oFNOwRypFWmxMBGrJjSXcS9C9lbrRhkdx2txEdMlat0M/eeq8905hwa0F6y919gqCu7Gw7Q9uEqaTUiaK/U/N2ltSiP2C7ywE43qzoNu8hpny9vymROQ2nZIiU8GwWtsBucxlpvMFkCht0YLcoesIRkM93fIppcdzQ7kiwVitKBHcpKO9FsrSAoVlL55m7k866MZ+lu6QPhtFX/T3Cn6+4EfQvnfApaXjnCtLSrlSfOl/VvXcdfOeuiA=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PAWPR05MB10691.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(7416014)(23010399003)(1800799024)(38070700021)(22082099003)(18002099003)(4143699003)(56012099006)(5023799004);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WnhvVFp6NUJSRXBNK25zT3lrTDlBa0VIQ0dXZmMrOWt1UGs5WkxWOUtuZWRz?=
 =?utf-8?B?bi9zM3RkSFJMZ1JOa0RjZWJKaWc2ckVTWmp6VzA1Z0sxNGlZcnRmTlRGOFBu?=
 =?utf-8?B?M2xEMmoxSXk2cGNGZGFCT1dnSVEzbnZyRTk3V0g2TW1icW5LRkdEZFNyeWVo?=
 =?utf-8?B?K3ZxMjh2b0JYN1JGdytRb1MrenRsOXBtYkx0dG1sY0ZKdkU4c1U4RFdWUTRs?=
 =?utf-8?B?UW9BenlzYzhYZjdiS2pYQ2FKN29Xd0dtdmUyN2crcWJGN3ZKdjJ2aEh6T0E5?=
 =?utf-8?B?YUVlejhkVHlBclp0OXZrayt2OStCWnFzN01RUW5wbmo3Rk1OcEFmblJXZVRj?=
 =?utf-8?B?cnJsbkN1Z0x1Zk9ic1dmeFFDKzlnY2liejRLVU1LcEcvK29GVVVVelg0WHM4?=
 =?utf-8?B?QmM0Wkd4ZmZOYTZyck05TUg0Z0lvOGpkbGx5dHZiQ3MvUW9KOFovOTJ5R2hj?=
 =?utf-8?B?N1k3NmlUVUovQWt1Nmhwc1VqdXpPeFVGdzdCemoxcS83dDhmMitaV29YQ2lC?=
 =?utf-8?B?SFZ5QmxSYlYwaWZGNEF0Y3hoazRMQW1UN0xQQk93aUlHbGdOZExDR1lXUEVO?=
 =?utf-8?B?TzRiK21oem93SmVDb25KaE41WEwwa3hNUXgrdC9zQSs3SlFZYmlkVVIweTJU?=
 =?utf-8?B?Y2ZGNlZka3lZeFJTOFdNbTAyRUFFa296aXV3NVAwWHJzZG9qcm1BU1R5R0Va?=
 =?utf-8?B?d3dmdGZ5QTNSaVAzak5qREUzcExKeERXNjZsL1A0L1EwZlJmSU5GVlc0Zysx?=
 =?utf-8?B?WnlESExUYUtKVGFrV3ZYejJiemw2VWs2SVdXWnNYbGErL2o0dkdwNGtlOWFl?=
 =?utf-8?B?bFUrY2daeG1EQ0xkTHhvdUJYOVBQaDFYQWQ5VmRacU5DR3lOcU1CMnQvMk9r?=
 =?utf-8?B?MytXUWo1bndzUzVGM2hNRnN4YkoxU2ZaOU45OWptL01RcDNTUFdzNU9Yakxx?=
 =?utf-8?B?UWZQa0Jwb1A0TW1wQ3d2Q0JHRldVMi9yYzNxNHNkRHdYSU5zbUV4SlVnR2t5?=
 =?utf-8?B?Y3dROHk0dUdqYWFyaGdqWElnOFMxR1AzZ2Q1TUlFQmhkd3FoM3NlbUZuNWJ6?=
 =?utf-8?B?VnBzVzYzSlFLUVg5MnVkWk91a2xrUFFmUzJIelNKVXp0RlU3UHlZUWwzZnM3?=
 =?utf-8?B?MmUzVVg2ZngwNTFhMGdUaDZNbEhjNlBZQXRsZXYrS01HeTNOekxRbExIdXZr?=
 =?utf-8?B?TlZIMmQrZHRaeVFKODFTUXcrTjJ0WkpxMGxheWJENHl6ZzEyRWdrc21DMlRL?=
 =?utf-8?B?UFR4bVlVZmZnc3ptcUR5Tmw5ZE1PMEg3bi9yanpNQ0ZOdk1lbytLVTRrbitB?=
 =?utf-8?B?MWZsRVVpODlrUkYwODRMM1BIdUhhY0JDa001MTMzSDhqN0Z2aWdzTGs0b0NP?=
 =?utf-8?B?QkNQWFkySktFQmx1SDdBSUs1eWdhYjA2aFFFTGZuUVpiV2NPR1g1MFdOckVC?=
 =?utf-8?B?WDBmYk5ORzFkYTlMMC9Ha0w5NEJLaldzbkc4eFFocVQzODNteUhET1F6bXVM?=
 =?utf-8?B?a085WkZSRlViODBnb1BhMDVEcElvamdlVmtTc0RiUE8wQVcyVy9TMmJGU052?=
 =?utf-8?B?RDB1a0NzN1EvdnZ0ZzVNa3h5K1I3anVQRHNTWFpYa0FoMUJGTmRwQU5ocWNl?=
 =?utf-8?B?WnhoRTR6VElvamhub0hLZDVSRE8wV3c1bjdoaGdrWGtpV3BxR3ZnOE00anJi?=
 =?utf-8?B?dFA0TmdzU1o1VXgrYWx6WFUxejQ5TG5yZTdueWNEb3lNL1NEdEU3bTlhSFlo?=
 =?utf-8?B?VWVkRjBqNTJoR0Q0aFcvVDhhTTZQbGpsL0lBSlN3bXlBaUFpazlNQUEyK0pG?=
 =?utf-8?B?c0ljaFdTbzc5UmdHV1Z0bEwvb2M2ZjVCVHVUZkU2UHFxYzZrbDMyVDNCMUZ6?=
 =?utf-8?B?Y1pzMkZaNVVNUWlRTmhkbE9kUTZsRHF1OTZUMnRna05zRDNFY0EzclJiRGFw?=
 =?utf-8?B?WFhSdGNoNXZmUnAxYXpmUXVrSExxTHNZV2I2aDAwUE1CalRGNHZ1U1BMYXBV?=
 =?utf-8?B?ZktNT091eUNiL1V1dDFOM3JyZWFGSFhvSWtzMW9Jb2QyU1BWdHNiekU5aXMx?=
 =?utf-8?B?Z1dRLzZXNVQyVDNPeW9RZnRPZml1bmg4OTFKYTlXQkVVM2pRYjdYUjlPT1VH?=
 =?utf-8?B?enk4cmdnK1o5N2M1Y3B1cHpDR1czb2ZKeFZIcU4rcStLekxDMmlEbVBMZTlB?=
 =?utf-8?B?ajBKVVdubjduOUNEaGJTMC9GZUtTV1k5dmY2bzhHcjVrMnhSYWVFczJ2UEpC?=
 =?utf-8?B?M3h6QVNEMWtEazFUeFBMcktMV0loR1VhcW54eVVQVThWeEpsVGRNL1NJMDU0?=
 =?utf-8?Q?bKmJ6UzIl5vLLvORvr?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: aweta.nl
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PAWPR05MB10691.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bb4a0f3f-df52-4cf8-2f2d-08decdd387dc
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Jun 2026 07:22:33.3842 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 6546512a-ba20-41bf-9d8d-c076dcbf6fd9
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5WS/aSnm6jymW5nVyj1GyR7ErmqC5VjHcUUiH3MYDrCjQWtaQggKBRpBJRhT/KMnUWcxEeZ0xzj3AeNhrYoKog==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PR3PR05MB6892
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=aweta.nl; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hGP0tDiGS5xgR5U2WStJsxq8sCKPCOaSVdTQC1ahJls=;
 b=FYMxcXS0+OwRCI2E4tYwDOmpV86DLONMQXNMBjhTbDNwQmnxPa6aIh5li9F7TcvGvZkSfMkLICS8V7R8wqIoA2zUbxajojSidY1e3eVCY3HbJCfa22qxNK3kxcSy5iEwrWmE8cQWkRIEVgIdRj9o3bkl8j4j3UlA/rn4G87kIMMc3YTLp1GFGWsp8X49bOsx53SFCziB451T6sCYEs/rlm24dP8O/P6YjFjHylRXcdxRSi9g99GyESjW/nyMkX7gMs17XlxGc0tUlMuiN3dnekrmAN8ZlakjuiXl1Bh5ZVXdL+GmNg/UgQ0gXclloMMBhtvMZfU+2dpAnul5DcNZ+A==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=aweta.nl
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=aweta.nl header.i=@aweta.nl header.a=rsa-sha256
 header.s=selector1 header.b=FYMxcXS0
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=aweta.nl;
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
From: Tjerk Kusters via Intel-wired-lan <intel-wired-lan@osuosl.org>
Reply-To: Tjerk Kusters <tkusters@aweta.nl>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [2.29 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[osuosl.org,none];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:kurt@linutronix.de,m:netdev@vger.kernel.org,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:richardcochran@gmail.com,m:hawk@kernel.org,m:stable@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[aweta.nl:replyto,osuosl.org:dkim,osuosl.org:from_smtp,osuosl.org:from_mime];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	HAS_REPLYTO(0.00)[tkusters@aweta.nl];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_CC(0.00)[lists.osuosl.org,intel.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,gmail.com,vger.kernel.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0202A6A4504

SGVsbG8NCg0KPiA+IGI0IGhhcyBhIHdlYiBzdWJtaXNzaW9uIGVuZHBvaW50LiBNYXliZSB5b3Ug
Y2FuIHVzZSB0aGF0IG9uZToNCj4gSXQgd291bGQgYmUgZ3JlYXQgaWYgeW91IGNvdWxkIGdldCB0
aGlzIHNldHVwIGFzIGl0IG1ha2VzIHBhdGNoIGhhbmRsaW5nIGVhc2llci4NCj4gDQo+IFNpZ24g
b2ZmIHNob3VsZCBiZSB5b3VyIGZ1bGwgbmFtZS4NCj4gDQo+IFRoYW5rcywNCj4gVG9ueQ0KDQpJ
IHNlbmQgYW4gdXBkYXRlZCB2ZXJzaW9uIHZpYSB0aGUgYjQgZW5kcG9pbnQNCg0KUmVnYXJkcw0K
VGplcmsNCg0K
