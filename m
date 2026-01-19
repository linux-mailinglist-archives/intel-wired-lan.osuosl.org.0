Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id C6F49D3A3EE
	for <lists+intel-wired-lan@lfdr.de>; Mon, 19 Jan 2026 11:00:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7F2A640CF5;
	Mon, 19 Jan 2026 10:00:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id in1LnpYt5KiO; Mon, 19 Jan 2026 10:00:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7C1AC40CEC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768816835;
	bh=qNo/lCcsQaw9PRqoyrTlEfCX4Q1K7vsMDDFATorqqnk=;
	h=To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From:Reply-To:From;
	b=pT5aEZvAKVWCy57TGMqa6sQKGsBwm7bZ7rZepGeGp7g7p/leEHchWrWzyJzjQc424
	 CZyvMJkscaJdOb7OYKT08jgsOCuUtcdApHl9GjUeue2Scz+hUlCfWIgKuWAYY+ynZr
	 fyRIhMxWUUWI8OUdpBtORJMUDivgUI89eAB2ub6MCxuRLRFztnyzbEvcZYd80Fw9Oh
	 jRx099IY0JmvLj/L4/WpHZCyAyWirKNuPO9Jo7WHYnA+bou6THCH7Nr9W+QqXAl+kS
	 7EnEL7/1m1DOObjMrEb2GM7xrnVdg92vHZQK4VH4HvHOF0qCsPH3UewDt6v6mLKwgf
	 MdSBJdGlv440Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7C1AC40CEC;
	Mon, 19 Jan 2026 10:00:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 951772CE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Jan 2026 10:00:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 82837406D4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Jan 2026 10:00:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QbX7u7RT4OpG for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 Jan 2026 10:00:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=52.101.65.63;
 helo=du2pr03cu002.outbound.protection.outlook.com;
 envelope-from=vivek.behera@siemens.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org A0B93406D3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A0B93406D3
Received: from DU2PR03CU002.outbound.protection.outlook.com
 (mail-northeuropeazon11011063.outbound.protection.outlook.com [52.101.65.63])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A0B93406D3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Jan 2026 10:00:31 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=aCCBMvrb651vX1l4/7MAgu6j6etf6+z0ohk9BaK35q1c/DcBqaFP1FfKomUO2R3Ti8pAGgJT8wIM37RMP1w12lgaWBNSEmQIzQPLxQE6L+BlE6ZWOSAUIY8oCtkQ/pKh8n6D5+dqdX0fuUXVRu5DwuKKSXf6zBa1W68KeMaHOR4zHW0Zy/0FSeHIJRtIAyMyogMJ1LWTKQxSaJgGl90oZMTOcLRb77FWaojVPSqtaOdutFvgj2swM7Js5/bHemxt9+nc5cz0oqJm8qJ8m1dGIdLAIliNZlxz9Mk5vQT2kbwrMsfKME7XIReq+Iu6VnNGkw/5fYmTUMI5pyGU47F5ZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qNo/lCcsQaw9PRqoyrTlEfCX4Q1K7vsMDDFATorqqnk=;
 b=JytMWbe9tXvS9KsS+Tyrq+duYbhpEnE092N8Qourl4qicXR7dUx8N74ZVpSY1/SC9PBTwSe4LmuyUi64kd8tbN/GJvcaetB52yPciStWz/AfwUCBQHJAQvQsHWgBERY981N92o5a8f3Dr3iCkKXGL+LY1M431RAMr9VS8UOkeXdWeBqCAOVH37WH5I9mxvV4sm7BuhvH0FczjvJL8KIf4cfjlM8glmzIKHJg0RSfpBNAEzLyNj37AHa7WN7osHbnouM3MfHOX+O1MuquCmO1UyOVtjG6Eke2x3pAcc2NbzTIwwJORX7qFuX+6gjySPybsZMuaBbaCqqF1zM5kt5MCg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=siemens.com; dmarc=pass action=none header.from=siemens.com;
 dkim=pass header.d=siemens.com; arc=none
Received: from AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:48d::20)
 by GV1PR10MB8605.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:150:1d5::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9520.6; Mon, 19 Jan
 2026 10:00:28 +0000
Received: from AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::eaf8:36f9:7ebb:e72b]) by AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::eaf8:36f9:7ebb:e72b%5]) with mapi id 15.20.9520.011; Mon, 19 Jan 2026
 10:00:27 +0000
To: "Song, Yoong Siang" <yoong.siang.song@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, 
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [PATCH iwl-net v10] igc: Fix trigger of incorrect irq in
 igc_xsk_wakeup function
Thread-Index: AQHch8MbkhdjGmZ3skOtfHi4PfYjPLVZK0sAgAAJPQA=
Date: Mon, 19 Jan 2026 10:00:27 +0000
Message-ID: <AS1PR10MB53920DC31FACC7D4F573EBB18F88A@AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM>
References: <20260117150753.2088857-1-vivek.behera@siemens.com>
 <IA3PR11MB92544299E333CAE48DCD3B42D888A@IA3PR11MB9254.namprd11.prod.outlook.com>
In-Reply-To: <IA3PR11MB92544299E333CAE48DCD3B42D888A@IA3PR11MB9254.namprd11.prod.outlook.com>
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
x-ms-traffictypediagnostic: AS1PR10MB5392:EE_|GV1PR10MB8605:EE_
x-ms-office365-filtering-correlation-id: 5d05110e-1bac-4099-a8bf-08de57419266
x-ms-exchange-atpmessageproperties: SA
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|38070700021|921020; 
x-microsoft-antispam-message-info: =?us-ascii?Q?AIKWycm2wit0MvaRHjdXFPUEGv7QgFtR4Q9OzIXYnvHvQYME/WuWMC93xMXD?=
 =?us-ascii?Q?wiEr6ITwlgrt6XtzfVhbo7FefO1H+P+1YnBu9t3vZWrGh2SS1bBN4QgAVK/E?=
 =?us-ascii?Q?mW5lCNqgz1bFJLB7UalwGaTHaG9/6RxcRXAi1tS2qoRI5UQ6jFzT22NEd1/q?=
 =?us-ascii?Q?w6Jlf5CCEFJWlQB9XnXHegCnBt/VvTSVkiHfGJGoHJLACYXe/20aOrOy1ZXz?=
 =?us-ascii?Q?7AbzDpFJ+D+3iaLE96B6EKtQ/l+WGJi6R3nb+MV86Un7JqxJtW4QbDeqK0zL?=
 =?us-ascii?Q?8Izh8/dMfGeP0E1wSmamAdMPOyEMHgevxzplLQr/7hpesmpiRvpyhGi0vmyf?=
 =?us-ascii?Q?AsYT0/i4qg1Dir9GvSmz3QlL8ZqLDsKku3h7E05DXasnKt/s7OtyNo+fnvFs?=
 =?us-ascii?Q?83NOCyYKUgvm8yIp0KB0OflXHXEB+Uf4rLZzUtPDGL6vBQxHnJn8Zi7erqRh?=
 =?us-ascii?Q?UUc6SRYXjsOya7Z5K2p54rDl0/cXBnspq3QWDARV4m9+yEOiWiFV/Ag35xI8?=
 =?us-ascii?Q?TW7O2ZuIBZVfSJjJVgkbPNR6isZOr4wGVmhviBr6uXXzR8K/wEoQsHKwTwog?=
 =?us-ascii?Q?uOqJfoLfMMupvtiKAyxmz5xs3a0zPrffTzzgkCXufmncIAD+O7rCDhtN1Bpd?=
 =?us-ascii?Q?IXWxbTybuRxfmWMdnaINd0uBiArIqyhqcUYf27597gPVUJBBtoJ6CDxTlRes?=
 =?us-ascii?Q?AHIDS7WO+U87m5zjsOTDpth6WGWnNzcYUE3xBznW3IjA7JrZX04VOjefLtXW?=
 =?us-ascii?Q?+ihuvBHfnEcYUwNeVnaFWOp/OlKl2PXxI4Xc+Ts1l5QOvkJhcsPTdh8mMFuI?=
 =?us-ascii?Q?8WrQ8NWYeaQyXpcsgWYXifOxMsZTeN/Nv3SV5SE1XqQJVTJnKuYorZ5u6iSn?=
 =?us-ascii?Q?4p48OIs04S0H/RwzbhaZ66pVNWo1v/grH5mhGUSEZuOTC2ZVmdrOWf+B+Gay?=
 =?us-ascii?Q?E8qc+F9dvKldauBYxDV1gsqJwHDYeug9rZKB77qVqN3hc7W52jpmow78dzka?=
 =?us-ascii?Q?m68On3ep91LrxxNbe8PHi20wcAHcQM9yOEYkMElsEmqGyZjZ/axaCKsMBP7J?=
 =?us-ascii?Q?6LQJMdzQTd3ps8C+zjAliHlK08Q06i2J8rYMov2/jYSv4qZrYSqUh3mnoVjY?=
 =?us-ascii?Q?FiFVnbS2+G6NCMIbUkrBi25Wj+rmv0FpCsSsfkx3/eUiEuXcKrPeHJqheUQg?=
 =?us-ascii?Q?Al3NwA4Y+uORgZWL06L8sPQGPzc6Ax0t2qCovRxNFXe3KZj23ujgEJLCbK48?=
 =?us-ascii?Q?fPcVuXRW/U4io1wEpQcHwoENNLQ1vSQRa+s7CQNZisv/h0SIjdxoeL7xIb+S?=
 =?us-ascii?Q?IY3AwScFc/B1U9dsTrKCmbEroMVCViFUU7pTfw4s2gme3o0ENdr0nDpCcV7U?=
 =?us-ascii?Q?T+ETU7LK25LqdmReemyyPihsgmUj+GosnQkbsqMDLaAr13qWHAABJWZvQ/9H?=
 =?us-ascii?Q?pdfIywN6gfb/C+eXItihnTixjsR6P3XDYdISx3HnzZQe43bhUaUNpABuowy9?=
 =?us-ascii?Q?yI9IT0NW08xE52wE32eq461UC2aNsy5Ik14q63Qc/ZKa8YNGZNFp7GEE8ALh?=
 =?us-ascii?Q?OGWU641Dcpv5FSA8aEnfOdbqEXVssRzLPE4xrdFPbD7FXM38ZL+lpmrcoAxk?=
 =?us-ascii?Q?eNXt5/IsEFqwUi8hMarzYm+S7fPsoMSV9IkkvnFxvM5k?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021)(921020); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?O8ur5lF7iFp6uNSDxXlKU/Zw8c5QRt7Ny7hU8eiRPyfun2oNHfMN6VlqNkJX?=
 =?us-ascii?Q?LIbLl26fVEQ5eeWI3ezWQCrY7IDSkEZihZLMwfXU7eSc4+1uAoS0MgGHOzke?=
 =?us-ascii?Q?RVKNWZDlRZPUDYzUTzpdxBEo1teswuqriEf3n2NwMg5xajJenhEvmevR6rls?=
 =?us-ascii?Q?PrN/HbUUbZp5aYEJr4lUt3sXZXyXyx0q70PZy4tWQUu7Lip08lGn9WiDpePR?=
 =?us-ascii?Q?OcE8fUOKrMvSHjARJoGq7hl1sExI7nqoVhLAa4WCNNqaksoFnP344MPo4/a7?=
 =?us-ascii?Q?9ka/oa6i0JWc+NxCFmvrLL1mbn7E+zfg6NfcdTvqQynKRV7U5rb2lLBi9pHG?=
 =?us-ascii?Q?eiLwWSJ/wnMox7HX5xjDuy4jWbRGj0/5f3bC7cvaQDaoK6uxm4yiWK4qN6mD?=
 =?us-ascii?Q?V4CkhMIHlEjcU66QthtxMiUhLIf+Kou9poUhUvJE/4Osi0Ks3ysfUKrZxkVb?=
 =?us-ascii?Q?qPWulvcfNATzWWlxwZxeGnNF0M8fm47Qs5syhtrPdvI+GdrvEpJH/L/YSVFJ?=
 =?us-ascii?Q?hBMKuwT4I0Vje+ndT1dRzYtuZdRo0y/DFl55PZYwkgnCVL5h06Oq+0h/o57Z?=
 =?us-ascii?Q?iNq1eAq1gugGZD1h33cGYYfiCiLiUlhKn5NlJaNz1rfwspmSGXXaL3HBLuhQ?=
 =?us-ascii?Q?P3Ujf4WYUINjXexhnzNkUQp9drVI31YMkwFeec5SY66BFWkU0wuqHCyPSB9X?=
 =?us-ascii?Q?WIiryxQhOnae0YR9aqIYloP6gPmlWSWdnGP1ME/yqun0B2iVSxs1wjlW0M3c?=
 =?us-ascii?Q?maWrZVLPiHcUcoQimunUB4qryMsz5c7OoIq5cHfSJagjvwPAv/JnV2FmxNXm?=
 =?us-ascii?Q?7bLQicxNNe9AutNvbx95ZROPmzAMNgPvhPnlf0Gtzw+cpJvu1fsXUmcVREOX?=
 =?us-ascii?Q?vGs0/6z/x9z+kX3uNrsVdaHm+NgGMg7JYSmmTQV493BkhsDtvNDu+V5Fxmrq?=
 =?us-ascii?Q?ScsycVGlK620KaQTuTvCL+RS3TWyX+BKYmuzwwznr1opljDRYOfjG0dplGQs?=
 =?us-ascii?Q?LeD+TO2RJKcmtyQWNaJGS4sP5zVdM4jzx5FEwu1ehJlcEd6WHEHN8WfXPmRJ?=
 =?us-ascii?Q?o7WWXMMAb84IQsaY4iQ2Irv6gcmZoZkqjYe8MTlqCNw20dy7DlFPHY0oi3NI?=
 =?us-ascii?Q?E1HauRwJnV9ynqDCXxNy8cDIXcH/ydsEbXeR+PdmxQ3xbWGP3GMAsVQowuPV?=
 =?us-ascii?Q?t2ik6FWsbcaEgBRYTfpBoz/9PWPmYoMRI2piyQ1bwvnuFNM23E0fcBbSd0Qh?=
 =?us-ascii?Q?00bEPx8CXbdI5fUE9uSlalbqjlM73r7o2RCdqCHFJsfnqujFZq+K84hP2/7K?=
 =?us-ascii?Q?u8N9Ssl9x/nHgshHxJvZ4nAONI5wbPAyIH3yldy2aNPS3hUkNAisgpBgLSQl?=
 =?us-ascii?Q?75geRfq7HvVj78Oz6e66lo4IDlkHgrS870njnxSbySboAQZ2pU+1QCtQ+gpa?=
 =?us-ascii?Q?PYXXhgxnmS2npshCz9KpGTNIXdI7rI39MjoBpSUuZH6d13fqAAcJkAaDzu5Q?=
 =?us-ascii?Q?QAVI/MKCUAhcZolHrU68uQVpTI7sAmRi9tjimDl7MGfKDe+mgge8yylHuAlz?=
 =?us-ascii?Q?/Vj/iCpJWKcXl6wNStfd0ZD0LsYHjldQ5GTZZWRBF7W8BJrVfNt8IG2auEiI?=
 =?us-ascii?Q?7ryOl0doG4JwRoEaUzsRBMO5xUJUxhDKU/pAPggskp/L3pXZuJnSR2PSLU/w?=
 =?us-ascii?Q?ZKTmV4R4u0I7UTGcNaBFW37RP0X9XNZSbLLDCfQ5VxR3ORK8J/E+yksVQD+N?=
 =?us-ascii?Q?xM3X+JtvOw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: siemens.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 5d05110e-1bac-4099-a8bf-08de57419266
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Jan 2026 10:00:27.3362 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 38ae3bcd-9579-4fd4-adda-b42e1495d55a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TmVRGLQ+ZYXInLqg87RwZsMPxb15Ku7U22lF3RFpj3hGeUAMWg5nKLzwZi4PJ9bmO5stg9niE9ayH2/HOuA8qN3kZXPE1jHE/FwDPNVxrFo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV1PR10MB8605
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=siemens.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qNo/lCcsQaw9PRqoyrTlEfCX4Q1K7vsMDDFATorqqnk=;
 b=n0L+wIgIcsV/gq3Wrp4idUNtNs8qe9ZvauLCrltuU6tCsXSAYMaCYSL5hevRpmYQCXI1kq502/isNIFcS/45LB7haVHUaIxjwN3bnr9JNsU68TWR3tU9cQhPq83kgGvBj7MS5lBo301VgxN2ZCEgCrdFc8jP54cDi9DYtWFkmA/p/90A9fYu6kXycmyw9VQa0ncPQL0bODbOhsuBe4HMz7tRz0vzM5xynzIgi6cnPCGkU3Js8xErZT8rHBrW90DIgpkoVoY1Z0dNoYoDmnXTGONZYzPpBFoG5/wZG2ECRG4s4xdMvGh/bJYZwP2QBJ3JeBTtxCMNOc5Ps1mE8M0G0w==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=siemens.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=siemens.com header.i=@siemens.com header.a=rsa-sha256
 header.s=selector2 header.b=n0L+wIgI
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
> Sent: Monday, January 19, 2026 9:27 AM
> To: Behera, Vivek (DI FA DSP ICC PRC1) <vivek.behera@siemens.com>;
> Loktionov, Aleksandr <aleksandr.loktionov@intel.com>; Keller, Jacob E
> <jacob.e.keller@intel.com>; Nguyen, Anthony L <anthony.l.nguyen@intel.com=
>;
> Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>
> Cc: intel-wired-lan@lists.osuosl.org; Behera, Vivek (DI FA DSP ICC PRC1)
> <vivek.behera@siemens.com>
> Subject: RE: [PATCH iwl-net v10] igc: Fix trigger of incorrect irq in igc=
_xsk_wakeup
> function
>=20
> On Saturday, January 17, 2026 11:08 PM, Vivek Behera
> <vivek.behera@siemens.com> wrote:
> >This patch addresses the issue where the igc_xsk_wakeup function was
> >triggering an incorrect IRQ for tx-0 when the i226 is configured with
> >only 2 combined queues or in an environment with 2 active CPU cores.
> >This prevented XDP Zero-copy send functionality in such split IRQ
> >configurations.
> >
> >The fix implements the correct logic for extracting q_vectors saved
> >during rx and tx ring allocation and utilizes flags provided by the
> >ndo_xsk_wakeup API to trigger the appropriate IRQ.
> >
> >Fixes: fc9df2a0b520 ("igc: Enable RX via AF_XDP zero-copy")
> >Fixes: 15fd021bc427 ("igc: Add Tx hardware timestamp request for AF_XDP
> >zero- copy packet")
> >Signed-off-by: Vivek Behera <vivek.behera@siemens.com>
> >Reviewed-by: Jacob Keller <jacob.keller@intel.com>
> >Reviewed-by: Aleksandr loktinov <aleksandr.loktionov@intel.com>
> >Reviewed-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
> >---
> >v1:
> >https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Flore=
.
> >kernel.org%2Fintel-wired-
> &data=3D05%7C02%7Cvivek.behera%40siemens.com%7C2
> >239d23f411243a2d52708de57349978%7C38ae3bcd95794fd4addab42e1495d55a
> %7C1%
> >7C0%7C639044080598030851%7CUnknown%7CTWFpbGZsb3d8eyJFbXB0eU1hc
> GkiOnRydW
> >UsIlYiOiIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIkFOIjoiTWFpbCIsIldUIjoyfQ%3D%3D
> %
> >7C0%7C%7C%7C&sdata=3DJscIn6NyDXYdnyW088A7JNjnIID9Z9%2FG26chAQPSz
> yw%3D&res
> >erved=3D0
> >lan/AS1PR10MB5392B7268416DB8A1624FDB88FA7A@AS1PR10MB5392.EURP
> RD10.
> >PROD.OUTLOOK.COM/
> >v2:
> >https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Flore=
.
> >kernel.org%2Fintel-wired-
> &data=3D05%7C02%7Cvivek.behera%40siemens.com%7C2
> >239d23f411243a2d52708de57349978%7C38ae3bcd95794fd4addab42e1495d55a
> %7C1%
> >7C0%7C639044080598075409%7CUnknown%7CTWFpbGZsb3d8eyJFbXB0eU1hc
> GkiOnRydW
> >UsIlYiOiIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIkFOIjoiTWFpbCIsIldUIjoyfQ%3D%3D
> %
> >7C0%7C%7C%7C&sdata=3DWRVJYvn0bUDTN7J8cVPKo2eYtitK7hazEYVGmqqkvs
> Y%3D&reser
> >ved=3D0
> >lan/AS1PR10MB539280B1427DA0ABE9D65E628FA5A@AS1PR10MB5392.EURP
> RD10.
> >PROD.OUTLOOK.COM/
> >v3:
> >https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Flore=
.
> >kernel.org%2Fintel-wired-
> &data=3D05%7C02%7Cvivek.behera%40siemens.com%7C2
> >239d23f411243a2d52708de57349978%7C38ae3bcd95794fd4addab42e1495d55a
> %7C1%
> >7C0%7C639044080598111943%7CUnknown%7CTWFpbGZsb3d8eyJFbXB0eU1hc
> GkiOnRydW
> >UsIlYiOiIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIkFOIjoiTWFpbCIsIldUIjoyfQ%3D%3D
> %
> >7C0%7C%7C%7C&sdata=3Dme2sanhvQf%2Fbx%2FVtb%2BrV9vR9o8dUStFJv8M
> NM6mPySs%3D
> >&reserved=3D0
> >lan/IA3PR11MB8986E4ACB7F264CF2DD1D750E5A0A@IA3PR11MB8986.namprd
> 11.
> >prod.outlook.com/
> >v4:
> >https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Flore=
.
> >kernel.org%2Fintel-wired-
> &data=3D05%7C02%7Cvivek.behera%40siemens.com%7C2
> >239d23f411243a2d52708de57349978%7C38ae3bcd95794fd4addab42e1495d55a
> %7C1%
> >7C0%7C639044080598137405%7CUnknown%7CTWFpbGZsb3d8eyJFbXB0eU1hc
> GkiOnRydW
> >UsIlYiOiIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIkFOIjoiTWFpbCIsIldUIjoyfQ%3D%3D
> %
> >7C0%7C%7C%7C&sdata=3D2rYqVNZNhDwa5o1FSvmSXC267VJE66xyD60LSZhroT
> I%3D&reser
> >ved=3D0
> >lan/AS1PR10MB53926CB955FBD4F9F4A018818FA0A@AS1PR10MB5392.EURP
> RD10.
> >PROD.OUTLOOK.COM/
> >v5:
> >https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Flore=
.
> >kernel.org%2Fintel-wired-
> &data=3D05%7C02%7Cvivek.behera%40siemens.com%7C2
> >239d23f411243a2d52708de57349978%7C38ae3bcd95794fd4addab42e1495d55a
> %7C1%
> >7C0%7C639044080598162513%7CUnknown%7CTWFpbGZsb3d8eyJFbXB0eU1hc
> GkiOnRydW
> >UsIlYiOiIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIkFOIjoiTWFpbCIsIldUIjoyfQ%3D%3D
> %
> >7C0%7C%7C%7C&sdata=3Dm1ayGPBKlpYN%2FHqsUAHhCZGP2x0X4tiTLDfar9Aj
> CR0%3D&res
> >erved=3D0
> >lan/AS1PR10MB5392FCA415A38B9DD7BB5F218FA0A@AS1PR10MB5392.EURP
> RD10.
> >PROD.OUTLOOK.COM/
> >v6:
> >https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Flore=
.
> >kernel.org%2Fintel-wired-lan%2F20251211173916.23951-1-&data=3D05%7C02%7C=
v
> >ivek.behera%40siemens.com%7C2239d23f411243a2d52708de57349978%7C38ae
> 3bcd
> >95794fd4addab42e1495d55a%7C1%7C0%7C639044080598182062%7CUnknown
> %7CTWFpb
> >GZsb3d8eyJFbXB0eU1hcGkiOnRydWUsIlYiOiIwLjAuMDAwMCIsIlAiOiJXaW4zMiIs
> IkFO
> >IjoiTWFpbCIsIldUIjoyfQ%3D%3D%7C0%7C%7C%7C&sdata=3DqrIm%2F%2Bt8awy
> aQqhOEBP
> >vp%2BF4fJY3xJl0lIhJ%2BOJgylM%3D&reserved=3D0
> >vivek.behera@siemens.com/
> >v7:
> >https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Flore=
.
> >kernel.org%2Fintel-wired-lan%2F20251212163208.137164-1-&data=3D05%7C02%7=
C
> >vivek.behera%40siemens.com%7C2239d23f411243a2d52708de57349978%7C38a
> e3bc
> >d95794fd4addab42e1495d55a%7C1%7C0%7C639044080598199719%7CUnknown
> %7CTWFp
> >bGZsb3d8eyJFbXB0eU1hcGkiOnRydWUsIlYiOiIwLjAuMDAwMCIsIlAiOiJXaW4zMiI
> sIkF
> >OIjoiTWFpbCIsIldUIjoyfQ%3D%3D%7C0%7C%7C%7C&sdata=3Dy3qBVJQOuXJmU
> Y0rvj8TFA
> >ncp7i%2FrD8kdRwXqnOdHLE%3D&reserved=3D0
> >vivek.behera@siemens.com/
> >v8:
> >https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Flore=
.
> >kernel.org%2Fintel-wired-lan%2F20251215122052.412327-1-&data=3D05%7C02%7=
C
> >vivek.behera%40siemens.com%7C2239d23f411243a2d52708de57349978%7C38a
> e3bc
> >d95794fd4addab42e1495d55a%7C1%7C0%7C639044080598216422%7CUnknown
> %7CTWFp
> >bGZsb3d8eyJFbXB0eU1hcGkiOnRydWUsIlYiOiIwLjAuMDAwMCIsIlAiOiJXaW4zMiI
> sIkF
> >OIjoiTWFpbCIsIldUIjoyfQ%3D%3D%7C0%7C%7C%7C&sdata=3D2iKYyIwmju7DxuL
> k9QeqzF
> >ibtSqDSAcbxBrKcR9O%2BH0%3D&reserved=3D0
> >vivek.behera@siemens.com/
> >v9:
> >https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Flore=
.
> >kernel.org%2Fintel-wired-lan%2F20251220110009.137245-1-&data=3D05%7C02%7=
C
> >vivek.behera%40siemens.com%7C2239d23f411243a2d52708de57349978%7C38a
> e3bc
> >d95794fd4addab42e1495d55a%7C1%7C0%7C639044080598233633%7CUnknown
> %7CTWFp
> >bGZsb3d8eyJFbXB0eU1hcGkiOnRydWUsIlYiOiIwLjAuMDAwMCIsIlAiOiJXaW4zMiI
> sIkF
> >OIjoiTWFpbCIsIldUIjoyfQ%3D%3D%7C0%7C%7C%7C&sdata=3DHgAtdG1Pi6iKho6
> YTHJVcc
> >buz81CmWsnBCGnAmI%2F%2B0E%3D&reserved=3D0
> >vivek.behera@siemens.com/
> >
> >changelog:
> >v1
> >- Inital description of the Bug and steps to reproduce with RTC
> >Testbench
> >- Test results after applying the patch
> >v1 -> v2
> >- Handling of RX and TX Wakeup in igc_xsk_wakeup for a split IRQ
> >configuration
> >- Removal of igc_trigger_rxtxq_interrupt (now redundant)
> >- Added flag to igc_xsk_wakeup function call in igc_ptp_free_tx_buffer
> >v2 -> v3
> >- Added 'Fixes:' tags for the relevant commits.
> >- Added reviewer
> >v3 -> v4
> >- Added reviewer
> >v4 -> v5
> >- Updated comment style from multi-star to standard linux convention
> >v5 -> v6
> >- Resolve formatting issues highlighted by reviewers
> >- Try to include version histroy as defined in netdev guidelines
> >- Included review suggestions from Przemyslaw
> >- Added reviewers
> >v6 -> v7
> >- Included review suggestions from Przemyslaw missed in v6
> >v7 -> v8
> >- Modified sequence to complete all error checks for rx and tx
> >  before updating napi states and triggering irq
> >v8 -> v9
> >- Included review feedback and suggestions from Tony and Siang
> >v9 -> v10
> >- Introduced a simplified logic for sequential check for RX and TX
> >---
> > drivers/net/ethernet/intel/igc/igc_main.c | 32 ++++++++++++++++-------
> >drivers/net/ethernet/intel/igc/igc_ptp.c  |  3 ++-
> > 2 files changed, 24 insertions(+), 11 deletions(-)
> >
> >diff --git a/drivers/net/ethernet/intel/igc/igc_main.c
> >b/drivers/net/ethernet/intel/igc/igc_main.c
> >index 7aafa60ba0c8..16a61d432296 100644
> >--- a/drivers/net/ethernet/intel/igc/igc_main.c
> >+++ b/drivers/net/ethernet/intel/igc/igc_main.c
> >@@ -6908,28 +6908,29 @@ static int igc_xdp_xmit(struct net_device *dev,
> >int num_frames,
> > 	return nxmit;
> > }
> >
> >-static void igc_trigger_rxtxq_interrupt(struct igc_adapter *adapter,
> >-					struct igc_q_vector *q_vector)
> >+static u32 igc_sw_irq_prep(struct igc_q_vector *q_vector)
> > {
> >-	struct igc_hw *hw =3D &adapter->hw;
> > 	u32 eics =3D 0;
> >
> >-	eics |=3D q_vector->eims_value;
> >-	wr32(IGC_EICS, eics);
> >+	if (!napi_if_scheduled_mark_missed(&q_vector->napi))
> >+		eics =3D q_vector->eims_value;
> >+
> >+	return eics;
> > }
> >
> > int igc_xsk_wakeup(struct net_device *dev, u32 queue_id, u32 flags)  {
> > 	struct igc_adapter *adapter =3D netdev_priv(dev);
> >-	struct igc_q_vector *q_vector;
> >+	struct igc_hw *hw =3D &adapter->hw;
> > 	struct igc_ring *ring;
> >+	u32 eics =3D 0;
> >
> > 	if (test_bit(__IGC_DOWN, &adapter->state))
> > 		return -ENETDOWN;
> >
> > 	if (!igc_xdp_is_enabled(adapter))
> > 		return -ENXIO;
> >-
> >+	/* Check if queue_id is valid. Tx and Rx queue numbers are always
> >+same
> >*/
> > 	if (queue_id >=3D adapter->num_rx_queues)
> > 		return -EINVAL;
> >
> >@@ -6938,9 +6939,20 @@ int igc_xsk_wakeup(struct net_device *dev, u32
> >queue_id, u32 flags)
> > 	if (!ring->xsk_pool)
> > 		return -ENXIO;
> >
> >-	q_vector =3D adapter->q_vector[queue_id];
> >-	if (!napi_if_scheduled_mark_missed(&q_vector->napi))
> >-		igc_trigger_rxtxq_interrupt(adapter, q_vector);
> >+	if (flags & XDP_WAKEUP_RX)
> >+		eics |=3D igc_sw_irq_prep(ring->q_vector);
> >+
> >+	if (flags & XDP_WAKEUP_TX) {
> >+		/* for IGC_FLAG_QUEUE_PAIRS, this will be NOP as NAPI has
> >+		 * been already marked with NAPIF_STATE_MISSED
> >+		 */
>=20
> The code looked good to me, but I am not understand this comment.
> Can you help to explain why the NAPI will be marked as NAPIF_STATE_MISSED=
?
If the napi was running it will be marked as missed and if napi is not sche=
duled=20
the function would return false preparing the eics value for soft irq trigg=
er
> per my understanding, for IGC_FLAG_QUEUE_PAIRS, rx_ ring->q_vector will b=
e
> equal to tx_ ring->q_vector, thus, no harm for eics to "OR" the same valu=
e twice.
> Am I right?
Yes. Exactly for the IGC_FLAG_QUEUE_PAIRS the q_vector its napi are
The same for rx and tx so calling napi_if_scheduled_mark_missed
the second time would not have change anything.=20
If IGC_FLAG_QUEUE_PAIRS is not active the q_vector
extracted from the tx_ring would be different and so would be it's napi whi=
ch will be then
used as the argument in napi_if_scheduled_mark_missed
>=20
> >+		ring =3D adapter->tx_ring[queue_id];
> >+		eics |=3D igc_sw_irq_prep(ring->q_vector);
> >+	}
> >+
> >+	if (eics)
> >+		/* Cause software interrupt */
> >+		wr32(IGC_EICS, eics);
> >
> > 	return 0;
> > }
> >diff --git a/drivers/net/ethernet/intel/igc/igc_ptp.c
> >b/drivers/net/ethernet/intel/igc/igc_ptp.c
> >index b7b46d863bee..df2e500a4d7e 100644
> >--- a/drivers/net/ethernet/intel/igc/igc_ptp.c
> >+++ b/drivers/net/ethernet/intel/igc/igc_ptp.c
> >@@ -550,7 +550,8 @@ static void igc_ptp_free_tx_buffer(struct
> >igc_adapter *adapter,
> > 		tstamp->buffer_type =3D 0;
> >
> > 		/* Trigger txrx interrupt for transmit completion */
> >-		igc_xsk_wakeup(adapter->netdev, tstamp->xsk_queue_index, 0);
> >+		igc_xsk_wakeup(adapter->netdev, tstamp->xsk_queue_index,
> >+			       XDP_WAKEUP_TX);
> >
> > 		return;
> > 	}
> >--
> >2.34.1

