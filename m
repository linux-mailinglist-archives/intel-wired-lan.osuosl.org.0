Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E91AC8B274C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Apr 2024 19:12:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 64728830E3;
	Thu, 25 Apr 2024 17:12:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id urtJINmV09Dn; Thu, 25 Apr 2024 17:12:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 92838830E6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1714065160;
	bh=ZtCVnnCGf3gkjGVf3KC4wcspqdaLPCG3zFRkcSwyV/c=;
	h=References:From:To:Date:In-reply-to:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=0fPS8Kv9CwSRVwHwhLD69VLz7mihQCwmJwWYPk1vHkDZtjshGg/Q6IPV2r2Wu/OBz
	 /4HoDQ3xJn0O7HqazGddTubfh9ygX2T8RDbkfcLhXUt/t+ganc8oDtqCvhf5i2gBWc
	 079/kys7EGy5xHMR2RphB9wd/GpnLHpAY6uwR4dkBZWpwbMA3t0ymvhMCoUaGa7zwr
	 dT7W2zIv8bg7faLyCeZSY1kpKYNfCekzjpxH9c164Iwjwb/vzSk5+w6Q38I3IdT1EM
	 24iy9kk4LkP7FZQ6nR8W638CC2Q0tFbidfp8hMEvG/gkf1myF04cFelpQtFx++/LHt
	 0LugbwoLeQj4g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 92838830E6;
	Thu, 25 Apr 2024 17:12:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 914901BF39A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Apr 2024 17:12:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7B0D4830DE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Apr 2024 17:12:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iZkXxF1yAwJ5 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Apr 2024 17:12:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=40.107.96.69;
 helo=nam02-sn1-obe.outbound.protection.outlook.com;
 envelope-from=rrameshbabu@nvidia.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org D6B3382FF9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D6B3382FF9
Received: from NAM02-SN1-obe.outbound.protection.outlook.com
 (mail-sn1nam02on2069.outbound.protection.outlook.com [40.107.96.69])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D6B3382FF9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Apr 2024 17:12:36 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Vteqz5pu+oWky8ooNswmixV6OygIU480srqx+uYFVrtZH7Jk0CJ5PLMFr0+zQZ64o//Estz9nwpM1AerOBrlk2JNoMfjpqBlBrj/SB7cQFsOnDaTljuB4RXkKwRig3ujgzW/zySf81/JyfSCPr1QphHLO76HMBB/V9694CfOt987FMYdI04Lvrmomg2FOML0PycNLl3kAbAIVPO/ZXz0bw7u5axyB06IBkXQHUWBsJM2fmD/tOM8KrWXq3iTXLIiLgRP2m7Kz1VIRHyt56Do4Bf0mif/jtgTpae8nUXAsjMUkRKoIIlEewPpnVjoKyTtM57ifPQn4pc8m+TeQEBNMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZtCVnnCGf3gkjGVf3KC4wcspqdaLPCG3zFRkcSwyV/c=;
 b=UUqyCo2qxmIQMkNQNzGTq8H0bFq2I4lQ7Fi0aQsvRTgMDXbFOM5YC76cURLnmUZIC9eRrEDYoex42/Wi58v2vnxajsklsHRs5w3qcYuY7V10gOCF3IykHP70e+UUc95gziDNJyqPk/uu7wtAk/q3G5a+wUTU3czGq1IQ2mYnAsT4lwvgvByAk2QXpuAyRHIbGtXnIIOgSP1PduGFj6aYdnQU/erVAjvWPCB4N0r3VaExuE8ZE55iAY0JxGehKHkFtaSNH7jBhdZyg9mGwUcFWTqRx84L5D/6qKNv89fbeWOB+kT9v+69rbPTfDHnbf97unTXmiE/BPA/zEalVEBDxA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
Received: from BYAPR12MB2743.namprd12.prod.outlook.com (2603:10b6:a03:61::28)
 by MN0PR12MB6004.namprd12.prod.outlook.com (2603:10b6:208:380::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7472.44; Thu, 25 Apr
 2024 17:12:32 +0000
Received: from BYAPR12MB2743.namprd12.prod.outlook.com
 ([fe80::3ec0:1215:f4ed:9535]) by BYAPR12MB2743.namprd12.prod.outlook.com
 ([fe80::3ec0:1215:f4ed:9535%4]) with mapi id 15.20.7472.044; Thu, 25 Apr 2024
 17:12:31 +0000
References: <20240418052500.50678-1-mateusz.polchlopek@intel.com>
 <20240418052500.50678-9-mateusz.polchlopek@intel.com>
 <87jzkue99b.fsf@nvidia.com>
 <9d8e656f-1b04-4fc5-a5b4-c04df7d34fdc@intel.com>
 <CO1PR11MB5089E8856F06AC88C2B76F6AD6102@CO1PR11MB5089.namprd11.prod.outlook.com>
 <a3802100-21b0-4a8d-9b4a-d557996e7c2d@intel.com>
 <CO1PR11MB5089937991BD0CAD0FA21859D6172@CO1PR11MB5089.namprd11.prod.outlook.com>
User-agent: mu4e 1.10.8; emacs 28.2
From: Rahul Rameshbabu <rrameshbabu@nvidia.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>
Date: Thu, 25 Apr 2024 10:10:56 -0700
In-reply-to: <CO1PR11MB5089937991BD0CAD0FA21859D6172@CO1PR11MB5089.namprd11.prod.outlook.com>
Message-ID: <87wmol1i4j.fsf@nvidia.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-ClientProxiedBy: SJ0PR13CA0080.namprd13.prod.outlook.com
 (2603:10b6:a03:2c4::25) To BYAPR12MB2743.namprd12.prod.outlook.com
 (2603:10b6:a03:61::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR12MB2743:EE_|MN0PR12MB6004:EE_
X-MS-Office365-Filtering-Correlation-Id: 333c5130-f4d7-498f-17af-08dc654ae48d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?YnBwNm9HUHFYSXBydjlwSmhud0tXREhtQ2o5MWFsTHdtVjZqSFQ1TWVPR0pp?=
 =?utf-8?B?c2NtMFNJK0ZaRnlrak1oRGhJbU5nakgyMS9tWjMwQ3FmOVV4SkdiRVZRRGQz?=
 =?utf-8?B?ZVhzdFFNSlZkNFFsTUVOMnpKcEkySlV3ek1ZRFlQQjhFeU5YUk9tRnJxMm1l?=
 =?utf-8?B?VmQ1L1RIeURSTjVheUxOWG1oSERxR1pHN3ZiZ0d4QVdTK1AwVlNneHNYRG9C?=
 =?utf-8?B?dlpyMXdGR0Y0bVpYT0dqcmd2clhlQytoWU5HTGxSVVhhMGhMZXM2ZGdwYXM1?=
 =?utf-8?B?Z1NHc3NoUHBXVkRLU2NoSzk4Mk9ybGFvd1ZiS1hIa3lHYzBuV0tZYlRyQ0Ur?=
 =?utf-8?B?R01DREhyeWtNUm96ZDBGWEcySHVGdDZoNFhrRjdZVUtLMlVjZDZ4Qm82akFE?=
 =?utf-8?B?YkZENnl1dEFYK2U0MlNxc2plQVEzRVBiMzQwYitUNHdVZ2FUUTVOdHE5MFpi?=
 =?utf-8?B?M2c2L0FPZEtvZERsUittRk14M25wRUJlNTY4TlNMQnZmUFV5MXlUc0pjRDhy?=
 =?utf-8?B?TFBPc1RPYkZKaWk3UXpDZlgzVDJVRTB3a3BJNGpNTGJDREhxQng2dzNVYU15?=
 =?utf-8?B?NVJCTWMyZW42T2NOblBIVDJvMm4reDVWMERUbHZ6TlFUNWhaZWhXK25XUTky?=
 =?utf-8?B?Z1VIQkFEcVZxOWpKK3hsakd4ekhNeTdNT0VBU1A2NUx0K0w5cXcrZGlHVXZI?=
 =?utf-8?B?dGFDUklKTkdzdW5FdkhHb1RuMHBVdWYxTTNyRVhPajN6RXJVQy81S05PSjZD?=
 =?utf-8?B?VEVUYk9vUElLUTVoa09rS2ZEemNGOTNUWEllbC8rYXdhbzV0Q0g2dkJ6NnVl?=
 =?utf-8?B?UnAvemRrUnhwRjRGbFhEeUwyVFBzMmRER2NKUW1FYmZxNXNBWUZXaEl2ditr?=
 =?utf-8?B?S2tGSEhyQ1ArcE9UbDZ5cVg4NE4wVGpROW80UFIyelREaURMNThTZzRVRldF?=
 =?utf-8?B?QVI5ZWdIaFRmODNpa2lBZkM4ZnRMM25kK2VZc2U5MVR4ZmY3d3N6Nys3T3c1?=
 =?utf-8?B?ZHVxZjRzam9JTjVwc3R5YVdRYVBvcE9vVUNXT0RQb1RpeWlTT3hheDgyekFo?=
 =?utf-8?B?TVJSMHg4bkV0NzBEZDRNQ0RiazlNT0VST2dpS1Q0a3g0S2dZaEttazNqcGpm?=
 =?utf-8?B?TTR4bVZqNjFqdDJ4cUw4ZllRZ0Q2NDRJSWRSaGR0Y3dkY2VtY0dGdDNOaDMw?=
 =?utf-8?B?TW5ZV1JseFg2a3ZzVmFKdU9mTHU0ck0zYVlucnhwRWVMS3d5YkN1d1p4dkFm?=
 =?utf-8?B?Rkd4dTNXamZGTnB3Rm9oM3gzN2QxdndGakF3M3d6NXJVUGhQZk5YcjFLRHpr?=
 =?utf-8?B?VEk1MVh1d3czWEQvNUVaRkZrbmpNakZUclJaWXg4SUpDTEsrd1VheEVhSGJa?=
 =?utf-8?B?Ly90UjA4RHNHb2xQTkpRYTl5M09sSjRMTU4xSHNZUlJsV1NuZUJiM0FnMGI3?=
 =?utf-8?B?dU9sWXVudkVUQjVhRFlqeDljcU1PL3lKdTRmVGlkbThhSFRZTS85cjRjazVI?=
 =?utf-8?B?QjBMbW5jL1lyUHRMMTJrM3FRVGNwYUtUTXJOdHlhV2pheDlNTzd3UVBOcWlI?=
 =?utf-8?B?UlZCQzdVQnhzUHl2SExzYkV2ZWVIbFNiWHlZcFU4VjRUTitkTTJSR01udHJk?=
 =?utf-8?B?UUdMM0JvUVBOYVM1bXF2V0o4czNteGcrTDJmWEpvM2VCaXVFczZhSlNMN1RW?=
 =?utf-8?B?ZmFLbGJEVEdQM2lWYnVlMUtwa1I1VkZhdThVNnl5VHFBRWN3Slo3M1VnPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR12MB2743.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dWtaYWdTUS9QZDJmQUM1WXNyZVpwaHZ1TklIWTBwalJFbDlkSmt0VE5TUkUx?=
 =?utf-8?B?QmpaWXI1V3QwbHJnK2NicEgvL0I3NmpDMkcvdTljWi84djVvM29sY0h4aGZ2?=
 =?utf-8?B?dlFmQWM5RVBCT29EQzNMeEdjclI2cEw5OVliMmN6YWNWS2hyS25LRVBROE0v?=
 =?utf-8?B?dm12QUR2N2x3bVYrSFJiRUtZUnREV0NFY3pvYm1jMEJ4SE9vNE5iWlQrb0xl?=
 =?utf-8?B?eXJXQldLN2JVOWhnSHFPQXUvY3hxNnk1ZHR0L3p4OTI4QmhLOFdFZloxSlpE?=
 =?utf-8?B?UUhRd2svZjFERXhzK3BoZkt3bWk0YWFYekZ5TGg5d1pRdXUrUWR2SzVaUjZZ?=
 =?utf-8?B?VkpKQmlXVzl0MzV5OEhKMUlPTEd1UDlkc3hsV0E0V2FpRnBLQkdKR0FUNTRq?=
 =?utf-8?B?Q1MrYkROWG56UkYyRmZPNWp5SEhDbkNxL1hKK2k1Q0tjNjVYdTlOZ2ZZNlFO?=
 =?utf-8?B?TFFuNERTNDlRZStYU2p2OUlvZTgwNDB6dkd1ajBUdmxqSUJpYk16eENKTzZG?=
 =?utf-8?B?TUd5YmloNU52QnpWUUxmWDlCb3lMS0JlUm1yajFDSHl6ekczbGd4U3ZFZzFG?=
 =?utf-8?B?MWl2S0hyQ2dYby92TndremJtQ010QndHTERFbVpONkgrN3ZER3ROY0FCenB6?=
 =?utf-8?B?ZTVoNjFOWDBCQ0JEc21UZ1dlNGoyTXRyaGdDWG5OVXlHUVVsQzZ5L0I3YUt1?=
 =?utf-8?B?N0tRdHlDMXJoRlpuY0l3ZnZyaEVEU2oxdGplTlQrRWcvYlJ1WUdmRHBmVGZq?=
 =?utf-8?B?SENFakZUa1prWkV2NFV5ZW5VNmg2T0h4MTA5d0xvQmE3bUFQNi9yZHlnYnBQ?=
 =?utf-8?B?cTdJTXkwRUdTMU11dDVjamgxcEdSS2ZaV1NHUzFRUjdwU1VuSzM5bjNyZnEr?=
 =?utf-8?B?ZU5lNDFwR3dzZWU4UUhkVUdhVjlPOXo2ZFdMeldPMnkxTE0wQW1LU0lJNWJI?=
 =?utf-8?B?azBSd2lFTE0xL3pMUDZuYXJqNkg0QVM1WTNyNHhvQVRqU3NRc2pYOFFONDFp?=
 =?utf-8?B?Rk51ODlZOFhQNU4vZzdYeTVtK1k0SGUvTWVQcktSTlorQnBXNkl5dExOYkxu?=
 =?utf-8?B?Nm5lZk9acmd5cjdwRVJ0SzQyVnFxRHVjOWpuYzk3eTB5YlViUjh1WlhUZXNk?=
 =?utf-8?B?Z1YxYmpWRktYek9PY3ZJV0NqS2JBUHliL3pWOTdRYjNrZTZlNFlBQVc5R0hp?=
 =?utf-8?B?dFluOHFNaS9PbGxGTFJ5dTJtNXhyWmo5aDBoUEJDK1licUZnY1AvWFhRZ2V0?=
 =?utf-8?B?bk9EaEwvTXZPR1ZYWjExQWVIbGs4aE11NTk1VjY0WW1UODlKRTJhbHpRVEVw?=
 =?utf-8?B?UzNWVGFBRHdVRyszcWhSTFNRaVV6TFprZVpMUjJIM2NhQkxRNUl4M0xLdFVV?=
 =?utf-8?B?U3dJd3FucG1sWmhEbmRKUnNJTkZDUTJpVUE1WDdVUWJIYW55WlhaNjVvamlE?=
 =?utf-8?B?ZUpsTk4yakU1b0ZzOWNsbzRtYjlxd20waXNINmc5TU4rRUZ3TVd2cjdUWk1h?=
 =?utf-8?B?b0ljZGhsRlo5ZjdORjVUS3FSQWhkZy9DS0xDUzFzNXJaNEhOaXp4VlpkYXhO?=
 =?utf-8?B?MFhmaExGN2R2Q1QyRWxWeUFMTnZDdjVJS1pVZEg2ODJWSUV0cldhZkJxLy9B?=
 =?utf-8?B?c2xBbmNJZlg5TkNMNEJXcFYzVHp1WGhBbWZwSk1MREVLeGlGMFZFOTFHcTA5?=
 =?utf-8?B?WnZOSm5aSy9XcHhvOUJyU0FlTG5tRCthVndiampvZUczeFBRUXI1ZG42ay9N?=
 =?utf-8?B?VzIzUVRoWndkVnppb0JqSHErY3hVbzRxaytuSVlQUFRKSUFFT21rbnc5UHRq?=
 =?utf-8?B?VytFTVBPa0tYQktDanNMZnFHdW0rZGpCc0RsRmJnendteWx5V2ErSTViUXMz?=
 =?utf-8?B?aW9ndHdoSEJnMW9NTnh4b25YV3pnVmJZUmhZOEJXTFZ2ai96RDN1aW8zOGhK?=
 =?utf-8?B?V2p4Ui9VSldqYm9Ia0FxeHJVUHBmUW56MjEycFV1Mmcwd3lDVmQ3aTRLdVpV?=
 =?utf-8?B?NEFERThqaURjcDZnSkYyUFpheSthRENVRmJHZDVHdHc3VWwxWVpSMlZrYmVX?=
 =?utf-8?B?RGhhM3pnVnhQemxvRHRtRDlRVGh3NHhvM0RzTWlCMTRjRVFCY1hjZ3pHWmNx?=
 =?utf-8?B?V0lpZjhEUVhzOFMwQ3loQ2NMQ1ZjYytMenNBUlFqMDRlTlMwMXJaaERMV0VX?=
 =?utf-8?B?S0E9PQ==?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 333c5130-f4d7-498f-17af-08dc654ae48d
X-MS-Exchange-CrossTenant-AuthSource: BYAPR12MB2743.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Apr 2024 17:12:31.8543 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: svcG5gEc5Wzr63ti33TsHCytpBSqb93ImND/ZHmZ4UM5Grl9A3uI6R7RqPz+08neC6OXTvcCB/OC6IA2m32tRg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR12MB6004
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Nvidia.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZtCVnnCGf3gkjGVf3KC4wcspqdaLPCG3zFRkcSwyV/c=;
 b=GP+yXLN0kEWT1NvG4aDFEU4NkzdsmUDaWkPiq1RPjYAcTIrQvHhZGmFOafKfyBD1/TdkA0893Jf8ZhdhmnNL7Iakum/sL2hDNn6fVlSDezE6rQ6qgeadCLDKYfuHlVFAcMKQS/DbX2YwihfQj6mh7Xl3AeGX+bhl1fmvle9Tzv+vCNuUUoBQPkwZUERRz6Eabn82UoseU6lXV0zeCJooPYVw/cC/agPsCec6eE5Jbagle+whoApK2fMZBgtI1yywEY10ueot1pSusKAdv5w00iR6fM8wjJZdF96uCHNIyMRGCo3Zx00JvXmPfC1gIZxsh3d3iAHcmZhmKXiAhbwP9A==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=nvidia.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=GP+yXLN0
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 08/12] iavf: periodically
 cache PHC time
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
Cc: "Drewek, Wojciech" <wojciech.drewek@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>, "Polchlopek, 
 Mateusz" <mateusz.polchlopek@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "horms@kernel.org" <horms@kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, 25 Apr, 2024 16:28:22 +0000 "Keller, Jacob E" <jacob.e.keller@intel=
.com> wrote:
>> -----Original Message-----
>> From: Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>
>> Sent: Thursday, April 25, 2024 3:52 AM
>> To: Keller, Jacob E <jacob.e.keller@intel.com>; Polchlopek, Mateusz
>> <mateusz.polchlopek@intel.com>; Rahul Rameshbabu
>> <rrameshbabu@nvidia.com>
>> Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; horms@kern=
el.org;
>> Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Drewek, Wojciech
>> <wojciech.drewek@intel.com>
>> Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 08/12] iavf: periodica=
lly cache
>> PHC time
>>=20
>> On 4/25/24 00:03, Keller, Jacob E wrote:
>> >
>> >
>> >> -----Original Message-----
>> >> From: Polchlopek, Mateusz <mateusz.polchlopek@intel.com>
>> >> Sent: Monday, April 22, 2024 2:23 AM
>> >> To: Rahul Rameshbabu <rrameshbabu@nvidia.com>
>> >> Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org;
>> horms@kernel.org;
>> >> Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Keller, Jacob E
>> >> <jacob.e.keller@intel.com>; Drewek, Wojciech <wojciech.drewek@intel.c=
om>
>> >> Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 08/12] iavf: period=
ically cache
>> >> PHC time
>> >>
>> >>
>> >>
>> >> On 4/18/2024 9:51 PM, Rahul Rameshbabu wrote:
>> >>> On Thu, 18 Apr, 2024 01:24:56 -0400 Mateusz Polchlopek
>> >> <mateusz.polchlopek@intel.com> wrote:
>> >>>> From: Jacob Keller <jacob.e.keller@intel.com>
>> >>>>
>> >>>> The Rx timestamps reported by hardware may only have 32 bits of sto=
rage
>> >>>> for nanosecond time. These timestamps cannot be directly reported t=
o the
>> >>>> Linux stack, as it expects 64bits of time.
>> >>>>
>> >>>> To handle this, the timestamps must be extended using an algorithm =
that
>> >>>> calculates the corrected 64bit timestamp by comparison between the =
PHC
>> >>>> time and the timestamp. This algorithm requires the PHC time to be
>> >>>> captured within ~2 seconds of when the timestamp was captured.
>> >>>>
>> >>>> Instead of trying to read the PHC time in the Rx hotpath, the algor=
ithm
>> >>>> relies on a cached value that is periodically updated.
>> >>>>
>> >>>> Keep this cached time up to date by using the PTP .do_aux_work kthr=
ead
>> >>>> function.
>> >>>
>> >>> Seems reasonable.
>> >>>
>> >>>>
>> >>>> The iavf_ptp_do_aux_work will reschedule itself about twice a secon=
d,
>> >>>> and will check whether or not the cached PTP time needs to be updat=
ed.
>> >>>> If so, it issues a VIRTCHNL_OP_1588_PTP_GET_TIME to request the tim=
e
>> >>>> from the PF. The jitter and latency involved with this command aren=
't
>> >>>> important, because the cached time just needs to be kept up to date
>> >>>> within about ~2 seconds.
>> >>>>
>> >>>> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
>> >>>> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
>> >>>> Co-developed-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
>> >>>> Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
>> >>>> ---
>> >>>>    drivers/net/ethernet/intel/iavf/iavf_ptp.c | 52
>> ++++++++++++++++++++++
>> >>>>    drivers/net/ethernet/intel/iavf/iavf_ptp.h |  1 +
>> >>>>    2 files changed, 53 insertions(+)
>> >>>>
>> >>>> diff --git a/drivers/net/ethernet/intel/iavf/iavf_ptp.c
>> >> b/drivers/net/ethernet/intel/iavf/iavf_ptp.c
>> >>> <snip>
>> >>>> +/**
>> >>>> + * iavf_ptp_do_aux_work - Perform periodic work required for PTP s=
upport
>> >>>> + * @ptp: PTP clock info structure
>> >>>> + *
>> >>>> + * Handler to take care of periodic work required for PTP operatio=
n. This
>> >>>> + * includes the following tasks:
>> >>>> + *
>> >>>> + *   1) updating cached_phc_time
>> >>>> + *
>> >>>> + *      cached_phc_time is used by the Tx and Rx timestamp flows i=
n order to
>> >>>> + *      perform timestamp extension, by carefully comparing the ti=
mestamp
>> >>>> + *      32bit nanosecond timestamps and determining the corrected =
64bit
>> >>>> + *      timestamp value to report to userspace. This algorithm onl=
y works if
>> >>>> + *      the cached_phc_time is within ~1 second of the Tx or Rx ti=
mestamp
>> >>>> + *      event. This task periodically reads the PHC time and store=
s it, to
>> >>>> + *      ensure that timestamp extension operates correctly.
>> >>>> + *
>> >>>> + * Returns: time in jiffies until the periodic task should be re-s=
cheduled.
>> >>>> + */
>> >>>> +long iavf_ptp_do_aux_work(struct ptp_clock_info *ptp)
>> >>>> +{
>> >>>> +	struct iavf_adapter *adapter =3D clock_to_adapter(ptp);
>> >>>> +
>> >>>> +	iavf_ptp_cache_phc_time(adapter);
>> >>>> +
>> >>>> +	/* Check work about twice a second */
>> >>>> +	return msecs_to_jiffies(500);
>> >>>
>> >>> HZ / 2 might be more intuitive?
>> >>>
>> >
>> > I've always found it more intuitive to think in terms of msecs myself,=
 but HZ / 2 is
>> ok if other folks agree.
>>=20
>> HZ/2 or HZ/3 as a timer period could be understood without thinking, but
>> the same stands for 400ms. Problems starts when one thinks about it ;)
>>=20
>> For me HZ, which could be both literally and colloquially understood as
>> "per second" should not mean 1000ms (just evaluate to).
>> 2Hz is a frequency with half second period, but 2*HZ evaluates to 2000ms
>> which is 4 times more :/
>>=20
>
> That=E2=80=99s part of why I switched ice over from using HZ generally to=
 using
> jiffies_to_msec in a lot of cases. It really depends on what you personal=
ly find
> intuitive. Those used to seeing and reading HZ may find it easier.
>

Makes sense to stick with the same if ice is using jiffies_to_msec in
general. I, recently, was re-reading the Linux Device Drivers book,
which has a section that elaborates on HZ a bit.

--
Thanks,

Rahul Rameshbabu
