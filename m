Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0707FD0F1C0
	for <lists+intel-wired-lan@lfdr.de>; Sun, 11 Jan 2026 15:27:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8D7608133D;
	Sun, 11 Jan 2026 14:27:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KO2vxPzK2Cx6; Sun, 11 Jan 2026 14:27:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 74F8F81332
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768141667;
	bh=DaFCWfBSxkSAbKKL5zoOlg0gpUDL7tF2eghlvUBkAFo=;
	h=To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From:Reply-To:From;
	b=MqsEsi7rxRfz6MU+qrkz7cOQbb56MKmz8KKjDuqQmZzXw8ISbWb4CDQm1YEKXT0qz
	 g9Jd76coXY4xJ+fdf4agCkJzwIDIff6I9ANb/Q/MLD5tP+ZUp32H7SYzC2J7JiiDrF
	 Kgs/96NGeiM9Yz81NC7EYxkkqRdOzBFshZZQj/ynOyCaxVHLoxbjn91buA3NwZmeDI
	 aSpDcgws0Li5aUJm1BDAzi+4LUKrzSSbqVCRt4t6/SBtq10NOmo6M7gNrkcqqR8Ags
	 7lu1Ctr7mXfUTFDiOpLliJSnPEtMatrgj5rTZZtCCxqpNTcyiHrXPkGDIm5ZsQcDaf
	 9bZLXPsSRmiRg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 74F8F81332;
	Sun, 11 Jan 2026 14:27:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 78D6518D
 for <intel-wired-lan@lists.osuosl.org>; Sun, 11 Jan 2026 14:27:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 57CCD40644
 for <intel-wired-lan@lists.osuosl.org>; Sun, 11 Jan 2026 14:27:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id R-wKMK1wyxqv for <intel-wired-lan@lists.osuosl.org>;
 Sun, 11 Jan 2026 14:27:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=52.101.72.34;
 helo=am0pr02cu008.outbound.protection.outlook.com;
 envelope-from=vivek.behera@siemens.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org A9B5240641
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A9B5240641
Received: from AM0PR02CU008.outbound.protection.outlook.com
 (mail-westeuropeazon11013034.outbound.protection.outlook.com [52.101.72.34])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A9B5240641
 for <intel-wired-lan@lists.osuosl.org>; Sun, 11 Jan 2026 14:27:43 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qhtE29HaQt2RFLtHOWX+qUFTNekxUgZlBCPHv7ErBNlStWdbACgqwAxuZBs+VfyDOIArOSaPRcjdne+8JRslaRwV5NXyciwb2MJRurwTRBoKlRWtiNiHdlm5BOqu71bzQurBTNSrlpIks1NcqsB9rGdZ6Sxy/ufSQmGYOmBgL7eKoZqQsg4YFROeFav6SDbN2476W537NPn6evtuKHJLTdYNVtM5Hnp0xM+tepI4AaR52zmOLM9YC5RmK2c3dCCSkUKOgO/Hwef6U5ElYV/fcBNgNOF35ZA2wlWlEfrA5Pl806v0XdLwDYarlR4KKIljAseOCF2yleIOuX8JzQAN+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DaFCWfBSxkSAbKKL5zoOlg0gpUDL7tF2eghlvUBkAFo=;
 b=ongp9LipSAgpA863sMtooegvUBlDzQxoupCMh/Xj0LTJ5P1+/2sABeHQNl0+jgXuMXIDwThn9EQlNHdOOOH1Bo0mWcKSxERJHXwhnm1qzoFYX0ix9HqOdU3gH1cPQRHbQcFE0RfjFps/mRIo3hC6ZMLBrUwiF+Rk04L/UD+dkku5QN1ahDlX1bUkFfnP35llu+4k5tqjoJCZ7Nei5Hw4wPMtw+F+37iNg/w/S/M9XpVnG303Hmjx+y/B0SKpkN8kb8XuI1rKWGlVv6K16AKoLt5B2mTRlxhBjLTfaVGaUCXRdwZFSnigvgNfUcjAHdQ0EiREjsMXHyQMOvSxJmTh0g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=siemens.com; dmarc=pass action=none header.from=siemens.com;
 dkim=pass header.d=siemens.com; arc=none
Received: from AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:48d::20)
 by PAXPR10MB5382.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:102:286::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9499.7; Sun, 11 Jan
 2026 14:27:39 +0000
Received: from AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::456e:d0d0:15:f4e]) by AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::456e:d0d0:15:f4e%6]) with mapi id 15.20.9499.005; Sun, 11 Jan 2026
 14:27:39 +0000
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
CC: "aleksandr.loktionov@intel.com" <aleksandr.loktionov@intel.com>,
 "jacob.e.keller@intel.com" <jacob.e.keller@intel.com>,
 "anthony.l.nguyen@intel.com" <anthony.l.nguyen@intel.com>,
 "przemyslaw.kitszel@intel.com" <przemyslaw.kitszel@intel.com>,
 "sriram.yagnaraman@ericsson.com" <sriram.yagnaraman@ericsson.com>,
 "kurt@linutronix.de" <kurt@linutronix.de>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [PATCH iwl-net v4] igb: Fix trigger of incorrect irq in
 igb_xsk_wakeup
Thread-Index: AQHcczo22pQVG6rzD0OMnITyIIJ6ArVJE4MAgAQOrQA=
Date: Sun, 11 Jan 2026 14:27:39 +0000
Message-ID: <AS1PR10MB539246265C589AF1AEBAD8C18F80A@AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM>
References: <20251222115747.230521-1-vivek.behera@siemens.com>
 <aWBIgOaRG50IuJsU@boxer>
In-Reply-To: <aWBIgOaRG50IuJsU@boxer>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ActionId=4124778a-d0d6-402c-9f87-d4c07d90344e;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ContentBits=0;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Enabled=true;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Method=Standard;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Name=restricted;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SetDate=2026-01-11T14:12:30Z;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SiteId=38ae3bcd-9579-4fd4-adda-b42e1495d55a;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Tag=10, 3, 0, 1;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AS1PR10MB5392:EE_|PAXPR10MB5382:EE_
x-ms-office365-filtering-correlation-id: 0992a075-5b2a-405b-6de6-08de511d92da
x-ms-exchange-atpmessageproperties: SA
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?zvJHvm4xmnurkLxiNB31ZXGhGHYlK/YVQqq+jhngCLKMA8dhpwyGGFLMkMhN?=
 =?us-ascii?Q?kGxOEL29f60H5dP1lQ0mRmFU9SO1xH6vdtJdsY1ncJ3xKS+9WNybC+al7+RT?=
 =?us-ascii?Q?fDus87D/QMdMXsqvzGZgtQV0Ih7LjmSFvcaZxzdY09Io4JJ7GxYChuUMUf4Z?=
 =?us-ascii?Q?2zCGkwb05B45bE4g1acQa3VqvD9quoZ5G02wwtrMqjCGofhnwcsxy8IU1cNT?=
 =?us-ascii?Q?YqyeiZAGISlNNZANz9sZsc1LZ423ce01lPhc0Ak6SAF8rHwnUblLRSb5FexY?=
 =?us-ascii?Q?sqCNC/D0GSUuADGIWMLYNCVGPViYU4viGz3FT0nqgOYhEMMRkJduD6WEzFHG?=
 =?us-ascii?Q?fXI8t/G/k3P14u+lQY8YiRkb+iFyN1tZHig6zEKeL4FS2upk/Lj7pwAQRCM7?=
 =?us-ascii?Q?CmXNfb34DvJOQT3cyDr6hab4aFBUU+N5zx9NMOFbEsgmqd3fu0HJ6RuBXpND?=
 =?us-ascii?Q?plWaM73qSQrjvxEt725fqnokRVFB/08QFg2AV8LR9jPqLcSvoascO7twq7Zx?=
 =?us-ascii?Q?KUfpyj+ZPdtpB6MZLU0uy29+jQSuA3GojajD60E/4j5HKTHROzv1PVEYqjHm?=
 =?us-ascii?Q?WNVjIWXgPydjMDqp7aGcWnFnXI/zRuHgNpVmqjha+whREaYIAjud2YY1a17v?=
 =?us-ascii?Q?TMknrOtjeZIuBlKmdeTQMk04u4hazZ1Y+BKAE8EJIVfFyT9uBmFZJ+7LUpxs?=
 =?us-ascii?Q?ElCIwFKTkrKxblJpS7KotAIqx2MG5V25evjERKMs9yd0KZjTmFfLq87CoAOr?=
 =?us-ascii?Q?kNDSuYefM52o45InAEzs99/TBNjGX185GUEauyIuKc3CGQ/t/4rKCKYMXetu?=
 =?us-ascii?Q?cvCw2kiOyn5jpeXgCjxeJNK45uBl1nKrLQE/Fx9iYetzhDyLUnGp8O/O2kFY?=
 =?us-ascii?Q?E/zJdHNXhZWpkUf7IMRYie57HZrRXlMu2RbBgA0LBLomKTjZ45vXBWSyVMAp?=
 =?us-ascii?Q?YSP53hD9VQsYmS5O9yTk/GEuJvZRKSFxrYRwm6NNp4PmvpPih5U6DRT2pX6R?=
 =?us-ascii?Q?tI5xBx7M+T+m7608b3wTQUx/FJ1UXqc75XjKwLMztxrTcHc7csxvnvaIYZvQ?=
 =?us-ascii?Q?Z3pQ0YbywjXP3liZMYkjPh+VmB5rezwNFHGjpZheKWs9tcB27FUS3Z7oxnCm?=
 =?us-ascii?Q?iV7PmdlApdR62TUVH+tayOxQjZJogI0FKMpKmbQZjQxaJrEa3XguEmd/axJl?=
 =?us-ascii?Q?luH1s9GRZTNN0I18VuhS7UirxlkAUJMEtkeIxBi7ct28axHOoAIeAE8xJvzI?=
 =?us-ascii?Q?bEdEf89kFFWDJzEM5Za1IYisoI37ZEz65EXYgK/MtTLEufeG4tjVMv4Wefoo?=
 =?us-ascii?Q?FYrBBJi0/IaDwpVC9Yn48yvrSSIM5wYREWej5HNFRARP9xlxC7TR7Bx+lxX7?=
 =?us-ascii?Q?RebUXbfb+iYQCDATFh5qcZGAZ/nkkinQnNu8EJdfAyeILY7yNPeK6mNH1IIx?=
 =?us-ascii?Q?0mQ2mkx93uJKxaTlMR8zBl8OALZ2wfSyA7JDsM529MZgbed+h4ztXFkh2Ixo?=
 =?us-ascii?Q?MlfWYiFVX46ijTbQwUm5juQlA7tQeUvx1Ehh?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?BiHMViJ7jZxdh9YUNTAAOc1pJZief4vY8zdN+5tVla3ljGlYj3GIgMocCzTS?=
 =?us-ascii?Q?YBv3gvp7N6hsWh5Nd5nVjAxJzKH6YvOcCLDuNktZxaBu86TA1v2MKt7iBOA+?=
 =?us-ascii?Q?jOtZnWgR9K3S5nQBdPgSS7j4dwewaQMYm1+ufvPU8UBXUjbRXVOhuWLSTWRD?=
 =?us-ascii?Q?bsdcABFo2DfGBVMgOCk7amsE+l/whwITeN/mib0UeNf6pz/1G2TPmWtOALP3?=
 =?us-ascii?Q?gp16452sianXA5csIG7CBFI0IvPQVb4yb2vQqJ0cBXlSvhXAuYEM5LDTE03A?=
 =?us-ascii?Q?OO29vMtMrremPRT2nLUOFG5wpvCWCMFHQduoMSiZfCf9LKBsRdAoGdIneLYl?=
 =?us-ascii?Q?Tv3hfwVACufuGSL3zc/aZevTd5sNCmFcXD77r3UEJnZBWjsVIgE5Fvcc3sig?=
 =?us-ascii?Q?nwuI4fbcV1Eol+TIkTOYVgQn5HUZha5S7R0Po46WD7OlG6usQl6SV5sBZjVU?=
 =?us-ascii?Q?6fpNUdxKN2PhngTQVN9emCz3jDixAUNz4BwFI7iCk5F8KbePEMbGzMf4o1zQ?=
 =?us-ascii?Q?cbjTYYD4qehI+SsEB5dT8lCQutGp19cOTJwEcXoM6Y7iraWEAoDF5u+VUh//?=
 =?us-ascii?Q?cmNq/y2HQInlvcTYsAZXegHo7ZBILGSfoxf8FAtTDkh/tS8ooJ34ZU6gdav7?=
 =?us-ascii?Q?2jHG6mrLYlJdl+Q1BN2F9gcp9dk9hxMNfmhVrNcYPRdf+LTzMGnyIUL8j0hm?=
 =?us-ascii?Q?breFoIwlGjZGduegw04Bcw3sCv5ARjf0jWspC3nX4rYITAF2XFH91dT0kjwj?=
 =?us-ascii?Q?Dc6Owpdz47Mn83KHuO/WNNwYfSB99DsWTwf7RZcaKmhh+Sq7IReNNastOef5?=
 =?us-ascii?Q?dMhcHSxuVEGBOT9FfyJvHXRy8jcMS0M9CZG0ATcuU27ExtNTGTKhBicMdbHW?=
 =?us-ascii?Q?Q6918Im3B7NUW+4VyUy7tsciN2gK226cmy6d0OKqPE80CtTEaFWMCEnuvOsV?=
 =?us-ascii?Q?cWRL2G15k3SM8/gBpRnfQNQJVmuTHcipL9BqxMBMAjA0otuMJ4CQFuy9272H?=
 =?us-ascii?Q?vpns+GO4CPjJfm3qpc+GLMyUqjIWoPuA/CjIln7epB3Zobd06oVs/G/aECje?=
 =?us-ascii?Q?S9FdSQgBFS9qzdI6LKt0L3x4pGMglOgKzn86kiuOJXsaeDaHnzeZ32xXttCe?=
 =?us-ascii?Q?jpylHvoHNZlMjI4Eh3iFdZrtFskz6phjhM2JvadmHxBV/bv7hr67RR3vTc5N?=
 =?us-ascii?Q?YuQ/1fJ/HIPC6maqBVIGppKcGai/Pr0Stwo+t+hn0BVMczZWri1EmOmrwivy?=
 =?us-ascii?Q?fuanZ9Scs1ZKqiTut3rDiS9MjZXya0ZUeE4JpdFFdXOiBaG2ycnUHy/IJS42?=
 =?us-ascii?Q?uN2ffLrpnMcJb3NoA7vZzSR0fc9NFCforj2WPSnXyLLT8XErzBI7tD6rM3km?=
 =?us-ascii?Q?/eD8MXNtZLVXXN52qRxtcEpSZ29VL/j0uN7qqh5nCsnwg0O1DjKeEzV1O+3N?=
 =?us-ascii?Q?LFKm0aZ/R/A38CT1oSbuMoUludcC77Zj0IeogSiu82WxO6FHN+7kPvRTbXhg?=
 =?us-ascii?Q?AsOjT1m5HgTWdLtZDUbdRU3CbnJnZuYeaY+NT1Z1Xl9ylCZAmuPOgH4U+PAt?=
 =?us-ascii?Q?bM6SQvDM6wcX81RiksaArwsxU75riJ1wjWJ25+371a4lC1cBn0Hjl1AkwMJD?=
 =?us-ascii?Q?zrNs4TryB1mTNGkPhTn5RI+aing9BoUBsO1a8hpkpZc8WIS9CxFaeLdaibaY?=
 =?us-ascii?Q?Z+KMl9m2fGo6raHGiMosPOUKSgpgYcP3KHDxpTF8sBLCnDmPbaM0e4u5eF92?=
 =?us-ascii?Q?T6xQfjXEZA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: siemens.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 0992a075-5b2a-405b-6de6-08de511d92da
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jan 2026 14:27:39.2601 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 38ae3bcd-9579-4fd4-adda-b42e1495d55a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RWJf0p1Y50FgfxSaWY4uG0EPdhLlRfYeUUWjB4mN1V0lQooxsokAqEqec88ufLxLe+4b2YxMA9W0E+WauAKjH6z9+Kr986ocGcANsvRAYWQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR10MB5382
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=siemens.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DaFCWfBSxkSAbKKL5zoOlg0gpUDL7tF2eghlvUBkAFo=;
 b=BJy+2xrCdBiz7YCkf8Ic9qIPoyHIADFh4cclgPTsnv6OUa1B/eoufDwyjszJrtb8DopObPLu57mzE8XsQd0A7OHNJAiGyJsKrDTKrvVu9ZKGmBD7oyvYDslnmpDxKY0bRCGNeBrMeaL0x8bbjXCoBfc6WtEq5RH7m407hP0Mklp9V7EVkYWGNPgx7u/q2OogCX4XwRX1VyZ3H21vzo5G6KDszi5qkucUUks7F1IgbMpncwkGybDPWpcVCzUAg0WaG5ewLgveopYdfyvvxbtIvQTHAUQoRP0e3zIupINjcZARyjz1FiMt2ppsCRRXkO9uNSuwD0hWOPbWTU+wQ0ARGw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=siemens.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=siemens.com header.i=@siemens.com header.a=rsa-sha256
 header.s=selector2 header.b=BJy+2xrC
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=siemens.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v4] igb: Fix trigger of
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



> -----Original Message-----
> From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> Sent: Friday, January 9, 2026 1:15 AM
> To: Behera, Vivek (DI FA DSP ICC PRC1) <vivek.behera@siemens.com>
> Cc: aleksandr.loktionov@intel.com; jacob.e.keller@intel.com;
> anthony.l.nguyen@intel.com; przemyslaw.kitszel@intel.com;
> sriram.yagnaraman@ericsson.com; kurt@linutronix.de; intel-wired-
> lan@lists.osuosl.org
> Subject: Re: [PATCH iwl-net v4] igb: Fix trigger of incorrect irq in
> igb_xsk_wakeup
>=20
> On Mon, Dec 22, 2025 at 12:57:47PM +0100, Vivek Behera wrote:
> > The current implementation in the igb_xsk_wakeup expects the Rx and Tx
> > queues to share the same irq. This would lead to triggering of
> > incorrect irq in split irq configuration.
> > This patch addresses this issue which could impact environments with 2
> > active cpu cores or when the number of queues is reduced to 2 or less
> >
> > cat /proc/interrupts | grep eno2
> >  167:          0          0          0          0 IR-PCI-MSIX-0000:08:0=
0.0
> >  0-edge      eno2
> >  168:          0          0          0          0 IR-PCI-MSIX-0000:08:0=
0.0
> >  1-edge      eno2-rx-0
> >  169:          0          0          0          0 IR-PCI-MSIX-0000:08:0=
0.0
> >  2-edge      eno2-rx-1
> >  170:          0          0          0          0 IR-PCI-MSIX-0000:08:0=
0.0
> >  3-edge      eno2-tx-0
> >  171:          0          0          0          0 IR-PCI-MSIX-0000:08:0=
0.0
> >  4-edge      eno2-tx-1
> >
> > Furthermore it uses the flags input argument to trigger either rx, tx
> > or both rx and tx irqs as specified in the ndo_xsk_wakeup api
> > documentation
> >
> > Fixes: 80f6ccf9f116 ("igb: Introduce XSK data structures and helpers")
> > Signed-off-by: Vivek Behera <vivek.behera@siemens.com>
> > Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> > ---
> > v1:
> > https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Flor=
e
> > .kernel.org%2Fintel-wired-lan%2F20251212131454.124116-1-vivek.behera%4
> >
> 0siemens.com%2F&data=3D05%7C02%7Cvivek.behera%40siemens.com%7C2e7cb
> 8169b
> >
> f4457c291908de4f1428a2%7C38ae3bcd95794fd4addab42e1495d55a%7C1%7C0%
> 7C63
> >
> 9035145171065657%7CUnknown%7CTWFpbGZsb3d8eyJFbXB0eU1hcGkiOnRyd
> WUsIlYiO
> >
> iIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIkFOIjoiTWFpbCIsIldUIjoyfQ%3D%3D%7C0
> %7C
> >
> %7C%7C&sdata=3DyCLwTDeoPNeub3tvzXTA7vX5p8I%2BmqcArOk0BzogiA0%3D&
> reserved
> > =3D0
> > v2:
> > https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Flor=
e
> > .kernel.org%2Fintel-wired-lan%2F20251215115416.410619-1-vivek.behera%4
> >
> 0siemens.com%2F&data=3D05%7C02%7Cvivek.behera%40siemens.com%7C2e7cb
> 8169b
> >
> f4457c291908de4f1428a2%7C38ae3bcd95794fd4addab42e1495d55a%7C1%7C0%
> 7C63
> >
> 9035145171089890%7CUnknown%7CTWFpbGZsb3d8eyJFbXB0eU1hcGkiOnRyd
> WUsIlYiO
> >
> iIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIkFOIjoiTWFpbCIsIldUIjoyfQ%3D%3D%7C0
> %7C
> >
> %7C%7C&sdata=3Dwm2ylxc0sATU4XL5LFP026DwMxUWe7EWAVjCQ3yyPGM%3
> D&reserved=3D0
> > v3:
> > https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Flor=
e
> > .kernel.org%2Fintel-wired-lan%2F20251220114936.140473-1-vivek.behera%4
> >
> 0siemens.com%2F&data=3D05%7C02%7Cvivek.behera%40siemens.com%7C2e7cb
> 8169b
> >
> f4457c291908de4f1428a2%7C38ae3bcd95794fd4addab42e1495d55a%7C1%7C0%
> 7C63
> >
> 9035145171106278%7CUnknown%7CTWFpbGZsb3d8eyJFbXB0eU1hcGkiOnRyd
> WUsIlYiO
> >
> iIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIkFOIjoiTWFpbCIsIldUIjoyfQ%3D%3D%7C0
> %7C
> >
> %7C%7C&sdata=3Dq7VkYNY8YzNn5rsbunTF04mt0gkBe1jeF6DrSbvw5s4%3D&res
> erved=3D0
> >
> > changelog:
> > v1
> > - Inital description of the Bug and fixes made in the patch
> >
> > v1 -> v2
> > - Handling of RX and TX Wakeup in igc_xsk_wakeup for a split IRQ
> > configuration
> > - Review suggestions by Aleksander: Modified sequence to complete all
> >   error checks for rx and tx before updating napi states and
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
> > ---
> >  .../net/ethernet/intel/igb/e1000_defines.h    |  1 +
> >  drivers/net/ethernet/intel/igb/igb_xsk.c      | 90 +++++++++++++++++--
> >  2 files changed, 83 insertions(+), 8 deletions(-)
> >
> > diff --git a/drivers/net/ethernet/intel/igb/e1000_defines.h
> > b/drivers/net/ethernet/intel/igb/e1000_defines.h
> > index fa028928482f..9357564a2d58 100644
> > --- a/drivers/net/ethernet/intel/igb/e1000_defines.h
> > +++ b/drivers/net/ethernet/intel/igb/e1000_defines.h
> > @@ -443,6 +443,7 @@
> >  #define E1000_ICS_LSC       E1000_ICR_LSC       /* Link Status Change =
*/
> >  #define E1000_ICS_RXDMT0    E1000_ICR_RXDMT0    /* rx desc min.
> threshold */
> >  #define E1000_ICS_DRSTA     E1000_ICR_DRSTA     /* Device Reset Aserte=
d
> */
> > +#define E1000_ICS_TXDW      E1000_ICR_TXDW	/* Transmit desc written
> back */
> >
> >  /* Extended Interrupt Cause Set */
> >  /* E1000_EITR_CNT_IGNR is only for 82576 and newer */ diff --git
> > a/drivers/net/ethernet/intel/igb/igb_xsk.c
> > b/drivers/net/ethernet/intel/igb/igb_xsk.c
> > index 30ce5fbb5b77..1d21674c0f33 100644
> > --- a/drivers/net/ethernet/intel/igb/igb_xsk.c
> > +++ b/drivers/net/ethernet/intel/igb/igb_xsk.c
> > @@ -529,6 +529,7 @@ int igb_xsk_wakeup(struct net_device *dev, u32 qid,
> u32 flags)
> >  	struct igb_adapter *adapter =3D netdev_priv(dev);
> >  	struct e1000_hw *hw =3D &adapter->hw;
> >  	struct igb_ring *ring;
> > +	struct igb_q_vector *q_vector;
> >  	u32 eics =3D 0;
> >
> >  	if (test_bit(__IGB_DOWN, &adapter->state)) @@ -536,14 +537,82 @@
> int
> > igb_xsk_wakeup(struct net_device *dev, u32 qid, u32 flags)
> >
> >  	if (!igb_xdp_is_enabled(adapter))
> >  		return -EINVAL;
> > -
> > -	if (qid >=3D adapter->num_tx_queues)
> > +	/* Check if queue_id is valid. Tx and Rx queue numbers are always sam=
e
> */
> > +	if (qid >=3D adapter->num_rx_queues)
> >  		return -EINVAL;
> >
> > -	ring =3D adapter->tx_ring[qid];
> > -
> > -	if (test_bit(IGB_RING_FLAG_TX_DISABLED, &ring->flags))
> > -		return -ENETDOWN;
> > +	if ((flags & XDP_WAKEUP_RX) && (flags & XDP_WAKEUP_TX)) {
> > +		/* If both TX and RX need to be woken up check if queue pairs are
> active */
> > +		if (adapter->flags & IGB_FLAG_QUEUE_PAIRS) {
> > +			/* In queue-pair mode, rx_ring and tx_ring share the same
> q_vector,
> > +			 * so a single IRQ trigger will wake both RX and TX
> processing
> > +			 */
> > +			ring =3D adapter->rx_ring[qid];
> > +		} else {
> > +			/* Two irqs for Rx AND Tx need to be triggered */
> > +			struct napi_struct *rx_napi;
> > +			struct napi_struct *tx_napi;
> > +			bool trigger_irq_tx =3D false;
> > +			bool trigger_irq_rx =3D false;
> > +			u32 eics_tx =3D 0;
> > +			u32 eics_rx =3D 0;
> > +			/* IRQ trigger preparation for Rx */
> > +			ring =3D adapter->rx_ring[qid];
> > +			if (!READ_ONCE(ring->xsk_pool))
> > +				return -ENXIO;
> > +			q_vector =3D ring->q_vector;
> > +			rx_napi  =3D &q_vector->napi;
> > +			/* Extend the BIT mask for eics */
> > +			eics_rx =3D ring->q_vector->eims_value;
> > +
> > +			/* IRQ trigger preparation for Tx */
> > +			ring =3D adapter->tx_ring[qid];
> > +			if (test_bit(IGB_RING_FLAG_TX_DISABLED, &ring-
> >flags))
> > +				return -ENETDOWN;
> > +
> > +			if (!READ_ONCE(ring->xsk_pool))
> > +				return -ENXIO;
> > +			q_vector =3D ring->q_vector;
> > +			tx_napi  =3D &q_vector->napi;
> > +			/* Extend the BIT mask for eics */
> > +			eics_tx =3D ring->q_vector->eims_value;
> > +
> > +			/* Check and update napi states for rx and tx */
> > +			if (!napi_if_scheduled_mark_missed(rx_napi)) {
> > +				trigger_irq_rx =3D true;
> > +				eics |=3D eics_rx;
> > +			}
> > +			if (!napi_if_scheduled_mark_missed(tx_napi)) {
> > +				trigger_irq_tx =3D true;
> > +				eics |=3D eics_tx;
> > +			}
> > +			/* Now we trigger the required irqs for Rx and Tx */
> > +			if ((trigger_irq_rx) || (trigger_irq_tx)) {
> > +				if (adapter->flags & IGB_FLAG_HAS_MSIX) {
> > +					wr32(E1000_EICS, eics);
> > +				} else {
> > +					if ((trigger_irq_rx) && (trigger_irq_tx))
> > +						wr32(E1000_ICS,
> E1000_ICS_RXDMT0 | E1000_ICS_TXDW);
> > +					else if (trigger_irq_rx)
> > +						wr32(E1000_ICS,
> E1000_ICS_RXDMT0);
> > +					else
> > +						wr32(E1000_ICS,
> E1000_ICS_TXDW);
> > +				}
> > +			}
> > +			return 0;
> > +		}
> > +	} else if (flags & XDP_WAKEUP_TX) {
> > +		/* Get the ring params from Tx */
> > +		ring =3D adapter->tx_ring[qid];
> > +		if (test_bit(IGB_RING_FLAG_TX_DISABLED, &ring->flags))
> > +			return -ENETDOWN;
> > +	} else if (flags & XDP_WAKEUP_RX) {
> > +		/* Get the ring params from Rx */
> > +		ring =3D adapter->rx_ring[qid];
> > +	} else {
> > +		/* Invalid Flags */
> > +		return -EINVAL;
> > +	}
>=20
> This is too complicated IMHO. Wouldn't something like this work:
> - if wakeup rx, pick napi from rx ring's q_vector
>   * napi_if_scheduled_mark_missed() logic that exists in igc_xsk_wakeup()
>=20
> repeat for tx; if IGB_FLAG_QUEUE_PAIRS then the branch of second
> napi_if_scheduled_mark_missed() call would not be executed as we had
> previously marked the missed bit in napi state;


Okay. I hope I understood the change you are suggesting. Does the code belo=
w reflect what you have in mind?

int igb_xsk_wakeup(struct net_device *dev, u32 qid, u32 flags)
{
	struct igb_adapter *adapter =3D netdev_priv(dev);
	struct e1000_hw *hw =3D &adapter->hw;
	struct igb_ring *ring;
	struct igb_q_vector *q_vector;
	struct napi_struct *rx_napi;
	struct napi_struct *tx_napi;
	bool trigger_irq_tx =3D false;
	bool trigger_irq_rx =3D false;
	u32 eics_tx =3D 0;
	u32 eics_rx =3D 0;
	u32 eics =3D 0;

	if (test_bit(__IGB_DOWN, &adapter->state))
		return -ENETDOWN;

	if (!igb_xdp_is_enabled(adapter))
		return -EINVAL;
	/* Check if queue_id is valid. Tx and Rx queue numbers are always same */
	if (qid >=3D adapter->num_rx_queues)
		return -EINVAL;
	/* Check if flags are valid */
	if (!(flags & XDP_WAKEUP_RX) && !(flags & XDP_WAKEUP_TX))
		return -EINVAL;
	if (flags & XDP_WAKEUP_RX) {
		/* IRQ trigger preparation for Rx */
		ring =3D adapter->rx_ring[qid];
		if (!READ_ONCE(ring->xsk_pool))
			return -ENXIO;
		q_vector =3D ring->q_vector;
		rx_napi =3D &q_vector->napi;
		/* Extend the BIT mask for eics */
		eics_rx =3D ring->q_vector->eims_value;
		trigger_irq_rx =3D true;
	}
	if (flags & XDP_WAKEUP_TX) {
		if (adapter->flags & IGB_FLAG_QUEUE_PAIRS) {
			/* In queue-pair mode, rx_ring and tx_ring share the same q_vector,
			* so a single IRQ trigger will wake both RX and TX processing
			*/

		} else {
			/* IRQ trigger preparation for Tx */
			ring =3D adapter->tx_ring[qid];
			if (test_bit(IGB_RING_FLAG_TX_DISABLED, &ring->flags))
				return -ENETDOWN;

			if (!READ_ONCE(ring->xsk_pool))
				return -ENXIO;
			q_vector =3D ring->q_vector;
			tx_napi =3D &q_vector->napi;
			/* Extend the BIT mask for eics */
			eics_tx =3D ring->q_vector->eims_value;
			trigger_irq_tx =3D true;
		}
	}
	/* All error checks are finished. Check and update napi states for rx and =
tx */
	if (trigger_irq_rx) {
		if (!napi_if_scheduled_mark_missed(rx_napi)) {
			eics |=3D eics_rx;
		}
	}
	if (trigger_irq_tx) {
		if (!napi_if_scheduled_mark_missed(tx_napi)) {
			eics |=3D eics_tx;
		}
	}
	/* Now we trigger the required irqs for Rx and Tx */
	if ((trigger_irq_rx) || (trigger_irq_tx)) {
		if (adapter->flags & IGB_FLAG_HAS_MSIX) {
			wr32(E1000_EICS, eics);
		} else {
			if ((trigger_irq_rx) && (trigger_irq_tx))
				wr32(E1000_ICS,
				     E1000_ICS_RXDMT0 | E1000_ICS_TXDW);
			else if (trigger_irq_rx)
				wr32(E1000_ICS, E1000_ICS_RXDMT0);
			else
				wr32(E1000_ICS, E1000_ICS_TXDW);
		}
	}
	return 0;
}
>=20
> >
> >  	if (!READ_ONCE(ring->xsk_pool))
> >  		return -EINVAL;
> > @@ -551,10 +620,15 @@ int igb_xsk_wakeup(struct net_device *dev, u32 qi=
d,
> u32 flags)
> >  	if (!napi_if_scheduled_mark_missed(&ring->q_vector->napi)) {
> >  		/* Cause software interrupt */
> >  		if (adapter->flags & IGB_FLAG_HAS_MSIX) {
> > -			eics |=3D ring->q_vector->eims_value;
> > +			eics =3D ring->q_vector->eims_value;
> >  			wr32(E1000_EICS, eics);
> >  		} else {
> > -			wr32(E1000_ICS, E1000_ICS_RXDMT0);
> > +			if ((flags & XDP_WAKEUP_RX) && (flags &
> XDP_WAKEUP_TX))
> > +				wr32(E1000_ICS, E1000_ICS_RXDMT0 |
> E1000_ICS_TXDW);
> > +			else if (flags & XDP_WAKEUP_RX)
> > +				wr32(E1000_ICS, E1000_ICS_RXDMT0);
> > +			else
> > +				wr32(E1000_ICS, E1000_ICS_TXDW);
> >  		}
> >  	}
> >
> > --
> > 2.34.1
> >
