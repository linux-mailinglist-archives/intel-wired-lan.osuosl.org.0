Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B0AFD3A583
	for <lists+intel-wired-lan@lfdr.de>; Mon, 19 Jan 2026 11:45:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A42D58095E;
	Mon, 19 Jan 2026 10:45:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id w4oqEN0kMcKJ; Mon, 19 Jan 2026 10:45:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 111558096A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768819506;
	bh=npBjsIhuRT4LTv2HLBF93Ez4jIQs6jUZaKyKDhWy/go=;
	h=To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From:Reply-To:From;
	b=OkVuGiCw7clqHCIG0dnad1QT8Vf+kgfKlZVaSlM0Im4cZr3eRQZ4mRUzRfgBnNGM3
	 stb+9Xb8LYdSiyj/CkEMeo5EFfJDEHmy0JCjeGQ/hfHTSR2PxRhTUyGg7132PApRtk
	 lGaMrCb4BAk1XYXZPm8WdcX9wG1MLa7u99sYJZScKZkiZQNfDLiL7+RSDSmvxsk8TA
	 X8FZMYBmysQ7+oDaygJVPbMIL3i/i4XGteZKGLw1Xf+nHl2QDIic+ge95siF/+1IfZ
	 Kctz33OaCS9Ut9H2pbtuiliTdVyHOKtH+bYTNsaukRZSdP8P2NE9cBvgdYVhlleAFj
	 JQt2WvTsm7iXQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 111558096A;
	Mon, 19 Jan 2026 10:45:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 2CBCE2CE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Jan 2026 10:45:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 10C4D40742
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Jan 2026 10:45:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YEaCanfZkMXf for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 Jan 2026 10:45:04 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=52.101.66.49;
 helo=duzpr83cu001.outbound.protection.outlook.com;
 envelope-from=vivek.behera@siemens.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 7A73D40087
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7A73D40087
Received: from DUZPR83CU001.outbound.protection.outlook.com
 (mail-northeuropeazon11012049.outbound.protection.outlook.com [52.101.66.49])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7A73D40087
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Jan 2026 10:45:02 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UKRZM8MDCxYc2esq4X8WKC5L+iDccEx2iy6PN1xJ1LoZtXzScL2RzwVSn/Nge8o0vsyjhmk5WwgDd3t9L5D4BTbdViStSN9iKgfN/rckob1kkk++X6VJp8OxP3qRvD5++/hpLb8j8qX7oUBd30Cj+HP9/SYh0Bc6SVAdevqzCeITA/Y+CF7u7hSqm/6WZGtWS7CDVdo8NMVi9881PsOCBV+RRC+Ot6niecPM4ywQ1xhn32Sg3Ivs5U+eTHqTI25EX4sYyh+JgK5X1L6B30Mp1FEsR3OInDg6DmcuY1LfD+V8vxJWieHuvCvvgjFlou5IMNqok42edPMIqbFZS5gOxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=npBjsIhuRT4LTv2HLBF93Ez4jIQs6jUZaKyKDhWy/go=;
 b=NUSvyEXjfp+rdZFtL9YSCnauzqyH4IixFUWlLv+o4UiEnPFx1SQvkH3V38TcAI0PiAXSyk/K5qusg9zz3swvZEENxq8H6fKnu6n8TD2m9HL5QNU37BlMLR9cgCPUuVh6NSH8lse7WojCMciqi1VIiO3LDd2GE22+DLBtDAVYTZTEsrp/5ftvzQD5FH0JvfbrnyWI3vyXT6Rp/lMUKERKLLYhClnzBpUegIsGwSHkTcM9OSJXlFUZzJghmxahdP91ytOM29imySx0K1NhkEDVP+OnQFkJJDNONky0CzThWMlubDSrHmPsScBfgs81OsQ6/Q+cib0QKNb0DV3eDzJZAw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=siemens.com; dmarc=pass action=none header.from=siemens.com;
 dkim=pass header.d=siemens.com; arc=none
Received: from AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:48d::20)
 by AM0PR10MB9671.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:740::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9520.11; Mon, 19 Jan
 2026 10:45:00 +0000
Received: from AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::eaf8:36f9:7ebb:e72b]) by AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::eaf8:36f9:7ebb:e72b%5]) with mapi id 15.20.9520.011; Mon, 19 Jan 2026
 10:45:00 +0000
To: "Song, Yoong Siang" <yoong.siang.song@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, 
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [PATCH iwl-net v10] igc: Fix trigger of incorrect irq in
 igc_xsk_wakeup function
Thread-Index: AQHch8MbkhdjGmZ3skOtfHi4PfYjPLVZK0sAgAAJPQCAABhwAIAABBKw
Date: Mon, 19 Jan 2026 10:45:00 +0000
Message-ID: <AS1PR10MB53920485AFEB908C52383D0E8F88A@AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM>
References: <20260117150753.2088857-1-vivek.behera@siemens.com>
 <IA3PR11MB92544299E333CAE48DCD3B42D888A@IA3PR11MB9254.namprd11.prod.outlook.com>
 <AS1PR10MB53920DC31FACC7D4F573EBB18F88A@AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM>
 <IA3PR11MB9254FBD0ED0D93BA69919BE3D888A@IA3PR11MB9254.namprd11.prod.outlook.com>
In-Reply-To: <IA3PR11MB9254FBD0ED0D93BA69919BE3D888A@IA3PR11MB9254.namprd11.prod.outlook.com>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ActionId=94a0a0e9-4654-4782-8bdf-5eb0afa3de1a;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ContentBits=0;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Enabled=true;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Method=Standard;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Name=restricted;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SetDate=2026-01-19T09:00:16Z;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SiteId=38ae3bcd-9579-4fd4-adda-b42e1495d55a;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Tag=10, 3, 0, 1;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AS1PR10MB5392:EE_|AM0PR10MB9671:EE_
x-ms-office365-filtering-correlation-id: 8e67da7d-79e6-4238-2b01-08de5747cb91
x-ms-exchange-atpmessageproperties: SA
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|38070700021|921020; 
x-microsoft-antispam-message-info: =?us-ascii?Q?xQutAXd6DdydPD69G7VVoq0qqq11G4yBBB9X1hFHJ9VnGiiF5TJk+hf42pqJ?=
 =?us-ascii?Q?8mP1qEGSAgF7/ypGKkZfeIi5ErZzFUyB01VyUW1jbuBpHgO+PSbcaIYDRTXB?=
 =?us-ascii?Q?IDPAy9fK4XGLMP2Nsa7+ReCtZBiY6+0ri3h/eYS3RYt8fK/57kqqbWMwk8/z?=
 =?us-ascii?Q?5bRmSPZW1o5p3BXddSmUCSET2U7kjNRPUrkZyai2mAqAJ/NGtoLB7NVhEs9e?=
 =?us-ascii?Q?84NCsXppDshqsvq400uAhC+ZFyXpCsNp6F1mp2hxWa5bOCjIt52cWfaF9MlK?=
 =?us-ascii?Q?NYVMkmBrUwooHv+pMpOgu3JbBBY4ojiWxwGyM3uz5hsYCFXG9vgL4UAqqFnL?=
 =?us-ascii?Q?9EchTmRmAPbQ67Cuu26xtVbW/uoomF/txycHm9JL8xMys3EWgbaw8YXhUd4X?=
 =?us-ascii?Q?LWm5ZFjTwZ7VOXBthZ2LP6tUosrfGaLIq7SwYnlLidSOMQID///tKGCyajgT?=
 =?us-ascii?Q?achkz23xjdpXCR/73tVHnxxGFVXZwayonZU4peZBfooOYGsUpP8jPpdTuM0P?=
 =?us-ascii?Q?jn2RQUfwsiPOUls6RwQA4pWLDX7td27zkKsBEzS+rLFjpBgeaQXlgTxqnmc4?=
 =?us-ascii?Q?JcI5hnBKntE0LMXg1bO3gbtH5snSjtyh5aDCcFuD+izTxMJI6IGBlQECpKd3?=
 =?us-ascii?Q?Wd2T4gJ7saptHERYt6jKCLnYFw31lDewWEt3MxBR+PN3S9SYcJXzlPrcxjQk?=
 =?us-ascii?Q?Kdd5QEh28kKsZM3l943VptOQ3KVp3NQj9Vgn3mROdliBTe9Cq/CVHaSLaNQ2?=
 =?us-ascii?Q?kC49W8dtJrCP0+OJh5Y26+EUfkZ54Ra3bHP6F+yX0xHkGFY6xjipGXMwoIR/?=
 =?us-ascii?Q?S9d49HVgD2rg6c5tBSiWuLamQ3GKSmZ2GYLG1v5tV3ah8kCYTHse2igXQHuY?=
 =?us-ascii?Q?7TByGiy7gmakanh5Os5Xj69e2oOY6KukSBIuwFlqTpwIgu1hSZf+d86iqDuT?=
 =?us-ascii?Q?3i393ZXvGkA7m53SY5ziEawnEcpk1pAfvFylU6TBcOiX9pTNZWO7coSGGAtF?=
 =?us-ascii?Q?ifBqHfZixAy8CBaSz0ewFsNNaKG0U2uyR7CVyD8aWNdjRrDaaJ9S/uHRVgRn?=
 =?us-ascii?Q?BzLqWRRpVf+XlWBJ7u8J9bgXD45Nt9sPQqnPa+mLO65ITd+iMR5lUwTkSn0h?=
 =?us-ascii?Q?fJeWby5IN8Q2inRBi7pRya53AYcbJqOAp+AYCvkSG61uvbCvkmzfRHeN6Ngl?=
 =?us-ascii?Q?cVayncLxCajm5p3iSSCyYNGGSCV+W2gD8ksxjKxZtc12Z/uOMxEENmnZFrge?=
 =?us-ascii?Q?eXgC4wYSSbfRDAfXW+FvbHyaqRNbCxrpL+M+nCx3gEwSzAUdU86mkbsY20w/?=
 =?us-ascii?Q?s3joGEp3MkpNNSuknvxHXBbsGInhNKUIpCBnNqSNdmONngkfEQusnlt9kXgS?=
 =?us-ascii?Q?F/w45Od2btjJUXZZLs83Yr5aYJg7jHwgkCXvpHGkOFjWlceT5q5EFtGt5or9?=
 =?us-ascii?Q?FRkrc7TQ6exmm1m/GmQY+EbtTwhDyHVTWUvbak4DP2VUWXhhD4BccZb23T1a?=
 =?us-ascii?Q?irSJUM1FKcntgxkUqkg32RG0mN5Cr8QVXojSHhsv512/xZkb0/ya1FWvFNNJ?=
 =?us-ascii?Q?LTILrCaIh5ggD//07qMf+tZ8wGtEy18y9VbDKPXHG4nj0yQb7b6JXgnFb1r7?=
 =?us-ascii?Q?gO3mp8G+AHGx9Vmroul9LQl1QxWefgWJ7d0xzLGseAML?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021)(921020); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?sYd/OhQc+e100dEEx/iiGzUEsn4V7NLPZbBf+JYQYebNVhjHmqvon8HCcQYG?=
 =?us-ascii?Q?v8lQN0VaPNWKdsspXf9QrfKVtLFyrGZdzCTcHJGvx+Ds2M22Gynd0zl/qwQr?=
 =?us-ascii?Q?aZbJUak+wjSXz1Xu52KULECnftYB5wgi3oUT3rAda5NLFULg23HIPpc4M8az?=
 =?us-ascii?Q?JLO6itmOitVkN1iz29t4Ucblo4dkPHpUiFJRUcaWFYFT3JKqyt3WnPkLW6Zf?=
 =?us-ascii?Q?cVTPYMJpSLlXfn/wUufipyHvopH/tfT+y6oSuYaEx5GK903bY0n2LSO78/OM?=
 =?us-ascii?Q?0GY6nZCtsOKBtsLNa8ymSXxfybKHcTkHiDqtuwjbKMuK93GGY1vVaIGZfL4P?=
 =?us-ascii?Q?sgonwE5mm7FDBhbk1xawUed3OlFlNFb2fhMReNaqIDLx/lLwXswxjWtGTClN?=
 =?us-ascii?Q?VGXyybYNrUbObMH+PWMdfY6rfWdQwqGyu6EQWk4gTCP+3nKmxQrfLstBkiyL?=
 =?us-ascii?Q?Y+qXhp26xJrB9xuPqA+FFazRFNUKpmHfXMn5fBc5F5/o1n+FU3WIDi8gfFwu?=
 =?us-ascii?Q?puWRY5RrjvP5cYRRyqTpyC0SJNHlWSgmnK2Ue60J5wnxprHpXxEZKsef3RNt?=
 =?us-ascii?Q?KmUDfy418Uwo8WXJfF7Fe9h05SI5Z9qhxKg9fMMBubisc/2vOnp1V2wkvDDH?=
 =?us-ascii?Q?IcPW19J2sOchmG6CXHz8OF7dCSnwi4+BvPoW7Cg9H8r032vcu+yn4nnWrWtT?=
 =?us-ascii?Q?aNo9UBFW7sjJ7WsQk+SfYPx0Dvg6drWKuMYZHVSp1AP1VgcuM9hEg7V5JxZf?=
 =?us-ascii?Q?HMTojqvxQQf3y5UKyyNpljqM0w8lHMSnn+yRUen36LRzvgUacJq2K75Jq1Rc?=
 =?us-ascii?Q?mFRgGTaFeXY2Sj/rFv21/bhYmVQIa7ZNvMJxcB1Ij9Uvk+NjTxEK2YQV0XdW?=
 =?us-ascii?Q?U4QuY1ddaDP+mMdL8wvuodaO97XzFULLYXXZDXRj+TneRz4gQ0PUNImtdQm1?=
 =?us-ascii?Q?uxiRnXlxIGYFvcfvTLAk/Yunoyn8naFXMnoKYQY4pKnhv0DcifDjF8l+7i/s?=
 =?us-ascii?Q?GXwsJvv74Uaqrg0Aq0Q1xOFMph6Lo4j5zXOo8UFfz1e7Xc8fX1g8BjFRqlJK?=
 =?us-ascii?Q?GoxtpLxhzNkSQxDLu80C6k88qDjqtrqBSIbnWdgsN3+kSsotKUvxBbH2P2EC?=
 =?us-ascii?Q?hgWca5AkGCWku0SW4Te2tAtIbdOlPRQltqQUMRYA4aBYWOGJdgACNDFW8SKD?=
 =?us-ascii?Q?E098oF4ZgPlY1IzEke8h6YXv3rWWtYXDbNvgpX4XyyWwF+hhOFX+3v73Yt5s?=
 =?us-ascii?Q?1FwZpCE3QYPtVLvnPe24MGiCiub4wxDouWN/2txENwFiPtkgrZrLuslN7SSs?=
 =?us-ascii?Q?esm4EivXxyUQ4Yw7woAV8Xs8gmNCpzDxfrrnCys0LZ5KmILbI7I+SErr+Rnr?=
 =?us-ascii?Q?Oc1QDJWXR0BiU1OpTBHTm0cStvQglzkPFhsKEs6j4oE/FFC23uRhGLr4Cu3i?=
 =?us-ascii?Q?bsX8fSPRAcjYGaStdMYapwAr8dQINUmyZw3EipZ902fEmyhHyLQsSAmTgVe4?=
 =?us-ascii?Q?GT7mxtuKiQEwRrLfjbcvopJVnBM9NcRiudwbtHTPzOC9hUVYE/YjuogBUObv?=
 =?us-ascii?Q?dAQwJDxlFMEXXvOfpmWGj1IO83sx7l4kZvYbwhkQySfDrQk6p9BM5BntV7gI?=
 =?us-ascii?Q?wURezHW5Wc1DBn5FVcHj70BA3YTUszxUgciFeJHq4WUHX6/ocN3/BROCjsRC?=
 =?us-ascii?Q?hmE134/qTntwuN89c9yeYb/iK9udB1jSpspiJMzu50zXDNuTVO7WZ2brW2sI?=
 =?us-ascii?Q?qQa4NuYqzA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: siemens.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 8e67da7d-79e6-4238-2b01-08de5747cb91
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Jan 2026 10:45:00.2742 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 38ae3bcd-9579-4fd4-adda-b42e1495d55a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UeedbweWX1zZUvnI9IyIdlGrCcrwk4uYJZycRv8/jzw4Xw04U1eWnEUXMGkX1VTj8Amj46S5FojSAGWH0exYZmbYCl0dvwdA7VgYU9M58RE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR10MB9671
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=siemens.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=npBjsIhuRT4LTv2HLBF93Ez4jIQs6jUZaKyKDhWy/go=;
 b=JmH0X21WM8+3aADaMusFQNWDfXvctmzgbzCnofvuo4rGw9XqxPUHBS6+fXydBflKdRkTf/2AdqXW/tHYNxdC2eYTa3IxDQyAMx+CEWSlVV5MeeJRK72hoa0ULrxoUVecz2aomYlG+yra+ApiLjwd0iQSOiEg4lP8PC+KE6OAOIbVzN8aX/MvbBk9F6/HkjalRGCMK7deVIk0lfVwzlsVRUf0fVEy1ropOZLmEtr+Eu8I312mMlBE9JRq3NPnKNvREVi4Q1YYkw0llzlLi2drEuiDqcbZs2RWiQ3S4a8THuUmYhDAI51XT5RoiiSkCPwZ5XZBe3KzBt8gpq+h/rMxOA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=siemens.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=siemens.com header.i=@siemens.com header.a=rsa-sha256
 header.s=selector2 header.b=JmH0X21W
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=siemens.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v10] igc: Fix trigger of
 incorrect irq in igc_xsk_wakeup function
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
From: "Behera, VIVEK via Intel-wired-lan" <intel-wired-lan@osuosl.org>
Reply-To: "Behera, VIVEK" <vivek.behera@siemens.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Song, Yoong Siang <yoong.siang.song@intel.com>
> Sent: Monday, January 19, 2026 11:28 AM
> To: Behera, Vivek (DI FA DSP ICC PRC1) <vivek.behera@siemens.com>;
> Loktionov, Aleksandr <aleksandr.loktionov@intel.com>; Keller, Jacob E
> <jacob.e.keller@intel.com>; Nguyen, Anthony L <anthony.l.nguyen@intel.com=
>;
> Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>
> Cc: intel-wired-lan@lists.osuosl.org
> Subject: RE: [PATCH iwl-net v10] igc: Fix trigger of incorrect irq in igc=
_xsk_wakeup
> function
>=20
> On Monday, January 19, 2026 6:00 PM, Behera, VIVEK
> <vivek.behera@siemens.com> wrote:
>=20
> [...]
>=20
> >> >@@ -6938,9 +6939,20 @@ int igc_xsk_wakeup(struct net_device *dev,
> >> >u32 queue_id, u32 flags)
> >> > 	if (!ring->xsk_pool)
> >> > 		return -ENXIO;
> >> >
> >> >-	q_vector =3D adapter->q_vector[queue_id];
> >> >-	if (!napi_if_scheduled_mark_missed(&q_vector->napi))
> >> >-		igc_trigger_rxtxq_interrupt(adapter, q_vector);
> >> >+	if (flags & XDP_WAKEUP_RX)
> >> >+		eics |=3D igc_sw_irq_prep(ring->q_vector);
> >> >+
> >> >+	if (flags & XDP_WAKEUP_TX) {
> >> >+		/* for IGC_FLAG_QUEUE_PAIRS, this will be NOP as NAPI has
> >> >+		 * been already marked with NAPIF_STATE_MISSED
> >> >+		 */
> >>
> >> The code looked good to me, but I am not understand this comment.
> >> Can you help to explain why the NAPI will be marked as
> NAPIF_STATE_MISSED?
> >If the napi was running it will be marked as missed and if napi is not
> >scheduled the function would return false preparing the eics value for
> >soft irq trigger
>=20
> Thanks for the explanation,
> the current comment "NAPI has been already marked with NAPIF_STATE_MISSED=
"
> is misleading because it implies this always happens for
> IGC_FLAG_QUEUE_PAIRS. However, this only occurs when NAPI is currently
> running. Could you revise the comment to be more accurate? Something like=
:
>=20
> /* For IGC_FLAG_QUEUE_PAIRS, if NAPI is already
>  * running from the RX path, it will have been
>  * marked as missed, making this TX call a NOP.
>  */
>=20
Okay. I will update the comment
> >> per my understanding, for IGC_FLAG_QUEUE_PAIRS, rx_ ring->q_vector
> >> will be equal to tx_ ring->q_vector, thus, no harm for eics to "OR" th=
e same
> value twice.
> >> Am I right?
> >Yes. Exactly for the IGC_FLAG_QUEUE_PAIRS the q_vector its napi are The
> >same for rx and tx so calling napi_if_scheduled_mark_missed the second
> >time would not have change anything.
> >If IGC_FLAG_QUEUE_PAIRS is not active the q_vector extracted from the
> >tx_ring would be different and so would be it's napi which will be then
> >used as the argument in napi_if_scheduled_mark_missed
