Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BE0AD16ED6
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Jan 2026 07:58:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CB95884847;
	Tue, 13 Jan 2026 06:58:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hJMY5WbJcYVp; Tue, 13 Jan 2026 06:58:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BE54684844
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768287492;
	bh=OFw1KAQTGyW5RJUznhw0LgYBOCKUzpQR7ZDmS4MzShw=;
	h=To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From:Reply-To:From;
	b=iE2W6VRo1h5kguObQ24Eegw7ed7EJY+BRAV1+imLyH/z4iy7BTYfH1sFWF/LmZzhA
	 FoJrCi4/Ww5NUvfe9Zup3aWrBsBm/+B+go/3XbH23pTDaR2rf66WjWSmtXdzBWFm/I
	 7smq3MfLjXJPZ9QrNF97hF2pHs8dn2d1uKTCkItcqJeaB9oSPty3bWpcot1D8BKA/O
	 JIVds5JpcEG9jyvw9q+4YClsC77S5r0wVotHmZK7Y24sxwtQ7rf8atIa/01jlj5kHJ
	 +ogIHsSWyJdVVqnqqTs8i/XTzd9KOAjh0ZcB3xPDzZUHL3ARDRS8rx3jFzpNPY+ocE
	 nJjPYT02ivelw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id BE54684844;
	Tue, 13 Jan 2026 06:58:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id CD38018D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jan 2026 06:58:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id ABDCA84841
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jan 2026 06:58:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LxU-F4F7I_lI for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Jan 2026 06:58:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=52.101.69.47;
 helo=am0pr83cu005.outbound.protection.outlook.com;
 envelope-from=vivek.behera@siemens.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 1213984840
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1213984840
Received: from AM0PR83CU005.outbound.protection.outlook.com
 (mail-westeuropeazon11010047.outbound.protection.outlook.com [52.101.69.47])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1213984840
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jan 2026 06:58:08 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JN46DU1wsIgbaIxG28S6tZ6LL66OQkjSQFDbkTVlX5b2WngxmpwtpyxM2ZSI2GT8mgWewt/u+0C79DtY96q362qsaUJlqACXNQ2n1WkqOYbCEX6lecA6/10o+YSLaiYZVsOfoCjltI+zAFrfqlD0cuz9eeKgOk7n3WljKspZvl2ZZ3rMe/wv+zmTCkHDmMo1of9kL3OasKK+1RW0CPV/VViuwmpKkIjwO8E/pa/41SMhMdWHRzj/0qflSw0b/OgmYb76mjznNzan+Ps1eY+p6wX/xFLZQ1ouGVL8okbPZf8BV06f5KCEpQnSYKh4QXxV5pykFPGWZrnjBjpYDR30uQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OFw1KAQTGyW5RJUznhw0LgYBOCKUzpQR7ZDmS4MzShw=;
 b=hdDgQ28+nVT8+Ld83oL91BYsIKtId63pcDhfD/bRNxkqoN6no15WRdRx7caT/yBbrVxzQHJEBGPcww6X3i4HVliD4mabXoh/dY0WGwQWyG1t38yFxF7Ad2g7pCC3+yfCZjFGWtTvYVuXPtyn9Z/J+oKHJoThkPn67ajOaH4zOejH1HGJrvAvlmbLVDhFpqCpm8iZ3GnB+9W0bzRubPlEhAIsT/7T188tV7UbU/GtEQwaxP3pgWc+stiyZ1dTH5PekznBZZchmVTi6E5mE3Bv4nUNQFQyUV9yfFnjVuDnrKQ58Ej1P1r5oreu8w7Hu9zI5QQUIHOgTuR2TkWB0LpsNQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=siemens.com; dmarc=pass action=none header.from=siemens.com;
 dkim=pass header.d=siemens.com; arc=none
Received: from DU0PR10MB5387.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:10:329::14)
 by DB3PR10MB6762.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:10:43b::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9499.7; Tue, 13 Jan
 2026 06:58:05 +0000
Received: from DU0PR10MB5387.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::de46:63f0:fed4:cdef]) by DU0PR10MB5387.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::de46:63f0:fed4:cdef%6]) with mapi id 15.20.9499.005; Tue, 13 Jan 2026
 06:58:04 +0000
To: Paul Menzel <pmenzel@molgen.mpg.de>
CC: "aleksandr.loktionov@intel.com" <aleksandr.loktionov@intel.com>,
 "jacob.e.keller@intel.com" <jacob.e.keller@intel.com>,
 "anthony.l.nguyen@intel.com" <anthony.l.nguyen@intel.com>,
 "przemyslaw.kitszel@intel.com" <przemyslaw.kitszel@intel.com>,
 "maciej.fijalkowski@intel.com" <maciej.fijalkowski@intel.com>,
 "sriram.yagnaraman@ericsson.com" <sriram.yagnaraman@ericsson.com>,
 "kurt@linutronix.de" <kurt@linutronix.de>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v5] igb: Fix trigger of
 incorrect irq in igb_xsk_wakeup
Thread-Index: AQHcg8PrekTNf/vlH0OQtQBQJq0k07VOkyuAgAEYj7A=
Date: Tue, 13 Jan 2026 06:58:04 +0000
Message-ID: <DU0PR10MB53870A3A57FC22988389E8C68F8EA@DU0PR10MB5387.EURPRD10.PROD.OUTLOOK.COM>
References: <20260112130349.1737901-1-vivek.behera@siemens.com>
 <156b1eb6-fde4-454b-9603-fbed1814204f@molgen.mpg.de>
In-Reply-To: <156b1eb6-fde4-454b-9603-fbed1814204f@molgen.mpg.de>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ActionId=bad4012a-f802-41ce-a7a0-f766b9f6728c;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ContentBits=0;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Enabled=true;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Method=Standard;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Name=restricted;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SetDate=2026-01-13T06:55:40Z;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SiteId=38ae3bcd-9579-4fd4-adda-b42e1495d55a;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Tag=10, 3, 0, 1;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DU0PR10MB5387:EE_|DB3PR10MB6762:EE_
x-ms-office365-filtering-correlation-id: d1831eac-0650-4a6a-39df-08de527119b4
x-ms-exchange-atpmessageproperties: SA
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700021;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?jLzJhvWm2HH21Wrs5/iIFRGpCUUNSBfZORkoIRBF2Q6eJrRv9scWZNjc52?=
 =?iso-8859-1?Q?a4dvxQxYNhgjgXBT8vvgphZU79Pk0Jbr7HEaxUB1PzbDgOb+7PyvHaQ7nM?=
 =?iso-8859-1?Q?nayFpCRoF4Rg/qM71WmI30mD4ZFKcu+l7Tdsd64M1qRF579b2jWDWZKm06?=
 =?iso-8859-1?Q?Xi3xizWzI7Yi0BvkUzvOgZZmi3Rjjg+LGHOStRJY8jis25wtl92t9IOADw?=
 =?iso-8859-1?Q?VGvN8QPepdaVGMWrWRZunGuE8o6y/knMs8SO8u9lmSyYU6sKxXvLQT8DtK?=
 =?iso-8859-1?Q?u8h7qESWr/oDUSLefIRQVpn/0U0mzoaucu+M3ma/fIhSC2ggj2iXf0Nob9?=
 =?iso-8859-1?Q?aZ1Bt5CoNX8LNRKBLsEItdjzVgQb9G8Uc3cL51LgXS57ZPZoIKPtUcOIpT?=
 =?iso-8859-1?Q?rNhiawaUuvjiRmWLsOPPePKm99t6m5L/r0vYwU2DS2OyvqW0mbvtjhKx64?=
 =?iso-8859-1?Q?Qh43lmi4aXFIAAH3NCHuX6tn9psRWaWBguf3Ninukf9YP7goFYxXUXZYP3?=
 =?iso-8859-1?Q?lJ2p3uIRFrUFIAANT9oNkc8JmIRU7DL6AJlNq73ZesZELwXrrBncjkdTKz?=
 =?iso-8859-1?Q?qkQOAjbz3QhZVsZsDSxKDTnts20gGy2dnIdTzAJXsjPAOEG3iq4WNixZ4G?=
 =?iso-8859-1?Q?c+EbPNMEsxc07JFJ1gM3wYd+KkK7aFizCdbo546Ifhtz5/vwWaO++nIpcV?=
 =?iso-8859-1?Q?eQQ/dAW5YyuPTuajAnPO79pQasaJ1dUauKQrm+r6XF7Fyh6Qt4+6gfTCwJ?=
 =?iso-8859-1?Q?4M5yJXChthCZ4Q1yU0UjwH6E9wabtOzQD/Xs8c69SssLGix/BtJQEu9K91?=
 =?iso-8859-1?Q?WICcLPb4r0QjIUmf8w8N9PLwnlMoxrXkkQSWijyb7SMQJt94h6PRgaJlWO?=
 =?iso-8859-1?Q?/zjvDrZoZSb6GlDevepWyENn1RrLYIsQkW3j9GoHS8zpSCZjCH/qcxjP25?=
 =?iso-8859-1?Q?jby2zeoP7C+SL7hslmUeHt+IMG1i6GeFlOy7UJqFfPyqgi8Nfk/k7YDomi?=
 =?iso-8859-1?Q?BIx8fLFlOtsVI42354LpO9ev/Y5nrjBE1OIZrzqS2oa/Sqxo/yu0iLm05H?=
 =?iso-8859-1?Q?ll420GSKSW3k1KQUnbUeJqxkFDtn9xH4d5SHOfRSe0zUqqa08wlBSdLZzy?=
 =?iso-8859-1?Q?tBjkbLlshV1+Fx1RpIiZEVD8mL+A1P+0OyLTsXpwNiY3GsdJ2VL8P4UcMg?=
 =?iso-8859-1?Q?MisFVj5Wn6Hva8+Vs3IRWLfo4R5zIqnrSo6vHaBTJapJIqbMNWOhenN94F?=
 =?iso-8859-1?Q?sTn5qpsA7Jl0Kkw/hVGwmQcd0O4D0zoY3UKpHPu6yPXSu1t+EzhvqnD15v?=
 =?iso-8859-1?Q?+l1BvqWPRl5VjjpKiWMp5ciB620RW76zMUUpi5x0sHjhQozOEPgnY9cpMA?=
 =?iso-8859-1?Q?6EQLkhNtOmWNqk5murNIYN/lHoKPYS9la2yFgr/0DSJNUQPxSL81I/fAXd?=
 =?iso-8859-1?Q?1tyUkOpyHfNQChj6YDXwQAEpug1EHE10H/6nVmNHJYhO2hmY3fT6lN2Bvj?=
 =?iso-8859-1?Q?xw+sQJ9Qj+mAVN59U85HzgCwDbxomC7amTtJb51PM9jhoGfSgEYcREP5Um?=
 =?iso-8859-1?Q?R0BgFMMJI7Ks5FfvCF8rAcZZCADt?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DU0PR10MB5387.EURPRD10.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?/rJA0WzQOr0t4EJubbu8gD92W+ngLAC5KHMs54TU/HIBsCmd6VmRWR5JnH?=
 =?iso-8859-1?Q?umj4wG1WjQ8IUaQDkH9ft3xWPnBZntvR//Oz7/jCQ6CCtrSzRMg/OFLUXs?=
 =?iso-8859-1?Q?6zFhJueo+alfDgowhjJCjiFGbGkM/MFn1oCkmlBoLPaEzHua/gp3vcy2QB?=
 =?iso-8859-1?Q?6feoSYEc0Xn4BJYd+W30Kc2x1WjbZix6SYoSqE5Ut71FmgD4iipcxPH00+?=
 =?iso-8859-1?Q?Ab8r1KwuqY9FQPk+KCR9y3+LpVZD+ipPfLF2ijvgbidwcfBpY4lL1tJhns?=
 =?iso-8859-1?Q?FG55VsQnOpmdrqzCRdULVuoPSja+QYmjptPOz+9H9/Y9ZySCjb+jZ2G90X?=
 =?iso-8859-1?Q?6AIAIVj8VEelB6qRBahuqGuZM2qmaMlM/8lSkrLbjRuEYxk/axE8G2od7a?=
 =?iso-8859-1?Q?XrrZImG7KOAn6rrlTf9BU2qIFWkg1Hm+fyZHp28jvYWzBeojlpj8tUVTWt?=
 =?iso-8859-1?Q?iM8+xOhuEUnc04N0iWOA2j7arQxH77b9e83mPJ29vdtfCHJlRnuk4fKOT+?=
 =?iso-8859-1?Q?ix1/2GXMlHWOBZYwEBjqYl6onvGFhPj+v27Wp4Fxwf1FyYN2LOeh7T6v3S?=
 =?iso-8859-1?Q?Xudg6Q8AdNDpuPaeBHYuWlot1oCyNhmg3sq81u+JH4kcPgex9gX+1ZKfQh?=
 =?iso-8859-1?Q?0nRtr7VLtWkJXv/Dc6mwteZYTp5NO0lfRW8laNjrQsLsxO2GlgiH6CMvVx?=
 =?iso-8859-1?Q?fUqmBK4bmBOlXeEUgT3b8Nu06c74+fpyPC4qh9UWn6r1Mh3G6pRvPJOx3L?=
 =?iso-8859-1?Q?mcZVdt7DWpA6AFWdsGdnI32OMEFlxER89ogXtMcdMn0Ii60qUmInp6a9zJ?=
 =?iso-8859-1?Q?TaNPUIMuGZtBiXLmRJRq3/49tS75CcCtxGNGLlXvE2Z2KkY/Tu8akTcmuY?=
 =?iso-8859-1?Q?wnBsjBBVYFTLj2yUp5U1jDjdyWuXJp1vpu95vRWCJehVbaa2tx408z7Kio?=
 =?iso-8859-1?Q?UxZE9w9tLwEKlQWqZt3RDknThWI6yTrNb+gpwKBWSMyXRU6T/Z5qrAdiy6?=
 =?iso-8859-1?Q?3T6tR+jnIRl4vFWJq+PJQmSZazLj/Qa2nrODnD4sxY8YFDiwPwgQnW25cO?=
 =?iso-8859-1?Q?1VOjqPqVc3Zko6aLhlq3ea/l1DLzfEzNvz8QtkOsSlnBbbFsrPQWeFaAyK?=
 =?iso-8859-1?Q?SF8X8fpdnMHyESkSQK3joK1ti6/hsivknOR1CuJ+apq4S2WQr9fWiKNREM?=
 =?iso-8859-1?Q?sHEBrBs9E/ZVXK656/zXKTFl2XhKvIVUWunHB7IsstlqUQOBjnOrzwvr4Z?=
 =?iso-8859-1?Q?5k66Fxge7vnvxY/fs7LSNA0OPwbD+lqsBT3dLXN8c2JKGWoGm0KknPSgq1?=
 =?iso-8859-1?Q?PHhXKJObeIAB1W30wAAOTmY3v+TBLldXNAjD5LUAVJbkx5YE7b3iRxP5jP?=
 =?iso-8859-1?Q?GxwlG8rxPHLrPyH4xDXW/ZnrH5qsq8Kb6NLrzWbq88gPhX1Q+D/nAv+VCD?=
 =?iso-8859-1?Q?RExjpm7iA/qiOnFDOmqDqPsJYYVNM8dD7ThOLDQkfA8YdJj3QQWj5b1pTe?=
 =?iso-8859-1?Q?LKXMov3hFyjc0IY/OyuLNz0pmkEK2IGaaXlGJvnUkvzS0wMAie5SgXHagj?=
 =?iso-8859-1?Q?VLKNFcd05VOkTmETg889VJcVHo0qZ2XrpNy7xllQR9B8iknCzWfFxrJqpC?=
 =?iso-8859-1?Q?YU4YzHocVVio7a4oQd346HZzRiINecwc0fb9stss3dasimG3OVxjugtI8o?=
 =?iso-8859-1?Q?lElk+10c6XvkRVzsjEsnplJ+Vvle0Y1WAC9jyqGV1vhHcSGWuABXtm2BrA?=
 =?iso-8859-1?Q?Uyg3flMEKc4W61+MqYl7kjj29VyKmGWQ/ESkBujyfFbh0Shk8QR6FPggXR?=
 =?iso-8859-1?Q?SN7UwlRkOA=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: siemens.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DU0PR10MB5387.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: d1831eac-0650-4a6a-39df-08de527119b4
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jan 2026 06:58:04.7063 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 38ae3bcd-9579-4fd4-adda-b42e1495d55a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UpaQBjoqgD1IfnVBbIOx6n/G7h+NBBsqnSV54Fu7SN6fTyql/jgVw9N1rjSyVp9xX0gSyuAzLlPMHTvR778x1EYzPNcgs5h4swyVFV94xMQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR10MB6762
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=siemens.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OFw1KAQTGyW5RJUznhw0LgYBOCKUzpQR7ZDmS4MzShw=;
 b=KEV6kXj9mloy7vm6Gs4E2sBNiwzZpdYsRnlLjktmVVNfYw12NBtBGByedGCAlR8WM7h5uYqo1ZVnpRV4/9sgjWkpHkruPtfn52mi3MkiZBV3803z+7wFjSdW1cT/9QyXs4Bb/8/+C8pLGv2ZrwYw36C0MrCIjW+G9QclijqWxROGDKkpS+CmrQj7htVNbhvd7+s9WU/JrjcEXWnsl75Nhv5P07skKccS+dHFHiM4aj5+0M9U4qpNeK3Ifg6q8/lSIUyzzve3KLfe4a0v8thhr5CMpxdgNyj7GyEN6DmRGrcLEJ8D5iGQbDUwBV5wSHHwYlxiYe7LGOwYbQ7FGLaQhg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=siemens.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=siemens.com header.i=@siemens.com header.a=rsa-sha256
 header.s=selector2 header.b=KEV6kXj9
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=siemens.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v5] igb: Fix trigger of
 incorrect irq in igb_xsk_wakeup
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

Hi Paul,

Thanks for your feedback. I will include your suggestions in the next versi=
on of the patch=20

> -----Urspr=FCngliche Nachricht-----
> Von: Paul Menzel <pmenzel@molgen.mpg.de>
> Gesendet: Montag, 12. Januar 2026 15:12
> An: Behera, Vivek (DI FA DSP ICC PRC1) <vivek.behera@siemens.com>
> Cc: aleksandr.loktionov@intel.com; jacob.e.keller@intel.com;
> anthony.l.nguyen@intel.com; przemyslaw.kitszel@intel.com;
> maciej.fijalkowski@intel.com; sriram.yagnaraman@ericsson.com;
> kurt@linutronix.de; intel-wired-lan@lists.osuosl.org
> Betreff: Re: [Intel-wired-lan] [PATCH iwl-net v5] igb: Fix trigger of inc=
orrect irq in
> igb_xsk_wakeup
>=20
> Dear Vivek,
>=20
>=20
> Thank you for your patch. Some minor comments below.
>=20
> Am 12.01.26 um 14:03 schrieb Vivek Behera via Intel-wired-lan:
> > The current implementation in the igb_xsk_wakeup expects the Rx and Tx
> > queues
>=20
> Please re-flow for 75 characters per line.
>=20
> > to share the same irq. This would lead to triggering of incorrect irq
> > in split irq configuration.
> > This patch addresses this issue which could impact environments with 2
> > active cpu cores or when the number of queues is reduced to 2 or less
>=20
> Why break the line in the middle of the sentence?
>=20
> > cat /proc/interrupts | grep eno2
> >   167:          0          0          0          0 IR-PCI-MSIX-0000:08:=
00.0
> >   0-edge      eno2
> >   168:          0          0          0          0 IR-PCI-MSIX-0000:08:=
00.0
> >   1-edge      eno2-rx-0
> >   169:          0          0          0          0 IR-PCI-MSIX-0000:08:=
00.0
> >   2-edge      eno2-rx-1
> >   170:          0          0          0          0 IR-PCI-MSIX-0000:08:=
00.0
> >   3-edge      eno2-tx-0
> >   171:          0          0          0          0 IR-PCI-MSIX-0000:08:=
00.0
> >   4-edge      eno2-tx-1
> >
> > Furthermore it uses the flags input argument to trigger either rx, tx
> > or both rx and tx irqs as specified in the ndo_xsk_wakeup api
> > documentation
>=20
> Please add a dot/period at the end of sentences.
>=20
> > Fixes: 80f6ccf9f116 ("igb: Introduce XSK data structures and helpers")
> > Signed-off-by: Vivek Behera <vivek.behera@siemens.com>
> > Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> > ---
> > v1:
> > https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Flor=
e
> > .kernel.org%2Fintel-wired-lan%2F20251212131454.124116-1-vivek.behera%4
> >
> 0siemens.com%2F&data=3D05%7C02%7Cvivek.behera%40siemens.com%7C96def2f
> e2d
> >
> 6c49e4144208de51e49371%7C38ae3bcd95794fd4addab42e1495d55a%7C1%7C0%7
> C63
> >
> 9038239346073271%7CUnknown%7CTWFpbGZsb3d8eyJFbXB0eU1hcGkiOnRydW
> UsIlYiO
> >
> iIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIkFOIjoiTWFpbCIsIldUIjoyfQ%3D%3D%7C0%7
> C
> >
> %7C%7C&sdata=3DWjSv74wZk60k3930VLYz2L2C8jAWfWVLWHyqBuoIiCQ%3D&rese
> rved=3D0
> > v2:
> > https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Flor=
e
> > .kernel.org%2Fintel-wired-lan%2F20251215115416.410619-1-vivek.behera%4
> >
> 0siemens.com%2F&data=3D05%7C02%7Cvivek.behera%40siemens.com%7C96def2f
> e2d
> >
> 6c49e4144208de51e49371%7C38ae3bcd95794fd4addab42e1495d55a%7C1%7C0%7
> C63
> >
> 9038239346119542%7CUnknown%7CTWFpbGZsb3d8eyJFbXB0eU1hcGkiOnRydW
> UsIlYiO
> >
> iIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIkFOIjoiTWFpbCIsIldUIjoyfQ%3D%3D%7C0%7
> C
> >
> %7C%7C&sdata=3Dd6BslMcsbOzhMJ7mPhiO2%2B1voZ1pUEDtlt5IEcEDiXQ%3D&re
> served
> > =3D0
> > v3:
> > https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Flor=
e
> > .kernel.org%2Fintel-wired-lan%2F20251220114936.140473-1-vivek.behera%4
> >
> 0siemens.com%2F&data=3D05%7C02%7Cvivek.behera%40siemens.com%7C96def2f
> e2d
> >
> 6c49e4144208de51e49371%7C38ae3bcd95794fd4addab42e1495d55a%7C1%7C0%7
> C63
> >
> 9038239346160501%7CUnknown%7CTWFpbGZsb3d8eyJFbXB0eU1hcGkiOnRydW
> UsIlYiO
> >
> iIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIkFOIjoiTWFpbCIsIldUIjoyfQ%3D%3D%7C0%7
> C
> >
> %7C%7C&sdata=3DvTKHOwGEYTxFTxKLD1HSmD6r88cQI8SB9KBexi128HA%3D&re
> served=3D0
> > v4:
> > https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Flor=
e
> > .kernel.org%2Fintel-wired-lan%2F20251222115747.230521-1-vivek.behera%4
> >
> 0siemens.com%2F&data=3D05%7C02%7Cvivek.behera%40siemens.com%7C96def2f
> e2d
> >
> 6c49e4144208de51e49371%7C38ae3bcd95794fd4addab42e1495d55a%7C1%7C0%7
> C63
> >
> 9038239346202115%7CUnknown%7CTWFpbGZsb3d8eyJFbXB0eU1hcGkiOnRydW
> UsIlYiO
> >
> iIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIkFOIjoiTWFpbCIsIldUIjoyfQ%3D%3D%7C0%7
> C
> >
> %7C%7C&sdata=3DFqWB94I9hDxPnQy3OLmkzv7WZrG80fpOyW2saoMDDOM%3D&r
> eserved=3D0
> >
> > changelog:
> > v1
> > - Inital description of the Bug and fixes made in the patch
>=20
> Initial
>=20
> >
> > v1 -> v2
> > - Handling of RX and TX Wakeup in igc_xsk_wakeup for a split IRQ
> > configuration
> > - Review suggestions by Aleksander: Modified sequence to complete all
> >    error checks for rx and tx before updating napi states and
> > triggering irqs
> > - Corrected trigger of TX and RX interrupts over E1000_ICS (non msix
> > use case)
> > - Added define for Tx interrupt trigger bit mask for E1000_ICS
> >
> > v2 -> v3
> > - Included applicable feedback and suggestions from igc patch
> > - Fixed logic in updating eics value when  both TX and RX need wakeup
> >
> > v3 -> v4
> > - Added comments to explain trigerring of both TX and RX with active
> > queue pairs
> > - Fixed check of xsk pools in if statement
> >
> > v4 -> v5
> > - Introduced a simplified logic for sequential check for RX and TX
> > ---
> >   .../net/ethernet/intel/igb/e1000_defines.h    |  1 +
> >   drivers/net/ethernet/intel/igb/igb_xsk.c      | 75 +++++++++++++++---=
-
> >   2 files changed, 61 insertions(+), 15 deletions(-)
> >
> > diff --git a/drivers/net/ethernet/intel/igb/e1000_defines.h
> > b/drivers/net/ethernet/intel/igb/e1000_defines.h
> > index fa028928482f..9357564a2d58 100644
> > --- a/drivers/net/ethernet/intel/igb/e1000_defines.h
> > +++ b/drivers/net/ethernet/intel/igb/e1000_defines.h
> > @@ -443,6 +443,7 @@
> >   #define E1000_ICS_LSC       E1000_ICR_LSC       /* Link Status Change=
 */
> >   #define E1000_ICS_RXDMT0    E1000_ICR_RXDMT0    /* rx desc min. thres=
hold
> */
> >   #define E1000_ICS_DRSTA     E1000_ICR_DRSTA     /* Device Reset Asert=
ed */
> > +#define E1000_ICS_TXDW      E1000_ICR_TXDW	/* Transmit desc written
> back */
> >
> >   /* Extended Interrupt Cause Set */
> >   /* E1000_EITR_CNT_IGNR is only for 82576 and newer */ diff --git
> > a/drivers/net/ethernet/intel/igb/igb_xsk.c
> > b/drivers/net/ethernet/intel/igb/igb_xsk.c
> > index 30ce5fbb5b77..6e51b5b6f131 100644
> > --- a/drivers/net/ethernet/intel/igb/igb_xsk.c
> > +++ b/drivers/net/ethernet/intel/igb/igb_xsk.c
> > @@ -529,6 +529,13 @@ int igb_xsk_wakeup(struct net_device *dev, u32 qid=
, u32
> flags)
> >   	struct igb_adapter *adapter =3D netdev_priv(dev);
> >   	struct e1000_hw *hw =3D &adapter->hw;
> >   	struct igb_ring *ring;
> > +	struct igb_q_vector *q_vector;
> > +	struct napi_struct *rx_napi;
> > +	struct napi_struct *tx_napi;
> > +	bool trigger_irq_tx =3D false;
> > +	bool trigger_irq_rx =3D false;
> > +	u32 eics_tx =3D 0;
> > +	u32 eics_rx =3D 0;
> >   	u32 eics =3D 0;
> >
> >   	if (test_bit(__IGB_DOWN, &adapter->state)) @@ -536,27 +543,65 @@
> > int igb_xsk_wakeup(struct net_device *dev, u32 qid, u32 flags)
> >
> >   	if (!igb_xdp_is_enabled(adapter))
> >   		return -EINVAL;
> > -
>=20
> Why remove the blank line.
>=20
> > -	if (qid >=3D adapter->num_tx_queues)
> > +	/* Check if queue_id is valid. Tx and Rx queue numbers are always sam=
e */
> > +	if (qid >=3D adapter->num_rx_queues)
> >   		return -EINVAL;
> > -
> > -	ring =3D adapter->tx_ring[qid];
> > -
> > -	if (test_bit(IGB_RING_FLAG_TX_DISABLED, &ring->flags))
> > -		return -ENETDOWN;
> > -
> > -	if (!READ_ONCE(ring->xsk_pool))
> > +	/* Check if flags are valid */
> > +	if (!(flags & XDP_WAKEUP_RX) && !(flags & XDP_WAKEUP_TX))
> >   		return -EINVAL;
>=20
> The comment seems redundant.
>=20
> > -
> > -	if (!napi_if_scheduled_mark_missed(&ring->q_vector->napi)) {
> > -		/* Cause software interrupt */
> > +	if (flags & XDP_WAKEUP_RX) {
> > +		/* IRQ trigger preparation for Rx */
> > +		ring =3D adapter->rx_ring[qid];
> > +		if (!READ_ONCE(ring->xsk_pool))
> > +			return -ENXIO;
> > +		q_vector =3D ring->q_vector;
> > +		rx_napi =3D &q_vector->napi;
> > +		/* Extend the BIT mask for eics */
> > +		eics_rx =3D ring->q_vector->eims_value;
> > +		trigger_irq_rx =3D true;
> > +	}
> > +	if (flags & XDP_WAKEUP_TX) {
> > +		if (adapter->flags & IGB_FLAG_QUEUE_PAIRS) {
> > +		/* In queue-pair mode, rx_ring and tx_ring share the same q_vector,
> > +		 * so a single IRQ trigger will wake both RX and TX processing
> > +		 */
> > +		} else {
> > +			/* IRQ trigger preparation for Tx */
> > +			ring =3D adapter->tx_ring[qid];
> > +			if (test_bit(IGB_RING_FLAG_TX_DISABLED, &ring->flags))
> > +				return -ENETDOWN;
> > +
> > +			if (!READ_ONCE(ring->xsk_pool))
> > +				return -ENXIO;
> > +			q_vector =3D ring->q_vector;
> > +			tx_napi =3D &q_vector->napi;
> > +			/* Extend the BIT mask for eics */
> > +			eics_tx =3D ring->q_vector->eims_value;
> > +			trigger_irq_tx =3D true;
> > +		}
> > +	}
> > +	/* All error checks are finished. Check and update napi states for rx=
 and tx */
> > +	if (trigger_irq_rx) {
> > +		if (!napi_if_scheduled_mark_missed(rx_napi))
> > +			eics |=3D eics_rx;
> > +	}
> > +	if (trigger_irq_tx) {
> > +		if (!napi_if_scheduled_mark_missed(tx_napi))
> > +			eics |=3D eics_tx;
> > +	}
> > +	/* Now we trigger the required irqs for Rx and Tx */
> > +	if ((trigger_irq_rx) || (trigger_irq_tx)) {
> >   		if (adapter->flags & IGB_FLAG_HAS_MSIX) {
> > -			eics |=3D ring->q_vector->eims_value;
> >   			wr32(E1000_EICS, eics);
> >   		} else {
> > -			wr32(E1000_ICS, E1000_ICS_RXDMT0);
> > +			if ((trigger_irq_rx) && (trigger_irq_tx))
> > +				wr32(E1000_ICS,
> > +				     E1000_ICS_RXDMT0 | E1000_ICS_TXDW);
> > +			else if (trigger_irq_rx)
> > +				wr32(E1000_ICS, E1000_ICS_RXDMT0);
> > +			else
> > +				wr32(E1000_ICS, E1000_ICS_TXDW);
> >   		}
> >   	}
> > -
>=20
> The removal of the blank line is unrelated. It looks like you divert from=
 the coding
> style of this file. I'd suggest to avoid that.
>=20
> >   	return 0;
> >   }
>=20
>=20
> Kind regards,
>=20
> Paul
