Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KE5DBVvUcGkOaAAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Jan 2026 14:27:55 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C0BC5783E
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Jan 2026 14:27:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CB92684AA4;
	Wed, 21 Jan 2026 13:27:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id potfkN22zVqr; Wed, 21 Jan 2026 13:27:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9A87584A9F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769002071;
	bh=b8T9E65RV9umj3+FgEiXRL7Qu4SbOPWuCPdSXa5W92c=;
	h=To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From:Reply-To:From;
	b=fHXL4gCOtMi1nuTm3bG+KqfeyldZVh2mhAYgSfi8IqdJBdfDAq2ohhv8GDjDjmvTg
	 aGN0pf7E0ja6OlEQsvtvmFnuYsft+x4tFfl9IN9dua/Rn5sy0v9aJp5XGThYDT9ATB
	 Q6O3YRri8azrn4gdC2910us05b9pwgep+HeZqwFjnx5btpBeGbmt1bJyotCCfXE/Ru
	 XqL0SGXUzZfLBUG00jG7854NQLD29PUumanz2Yk1unokF2TMnZdsZ84+eCvjA29l6+
	 VuGl1LAZSNve4GSOpoamfAO4Kv2Jhbwx+DbOh9TxfbeIK1miUP7zsaPtmInQxh9NeM
	 F82gWVmIvKORw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9A87584A9F;
	Wed, 21 Jan 2026 13:27:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 89B90160
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jan 2026 13:27:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 77B334283B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jan 2026 13:27:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4q31paJc48pR for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Jan 2026 13:27:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=52.101.83.43;
 helo=gvxpr05cu001.outbound.protection.outlook.com;
 envelope-from=vivek.behera@siemens.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 5A4E44283A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5A4E44283A
Received: from GVXPR05CU001.outbound.protection.outlook.com
 (mail-swedencentralazon11013043.outbound.protection.outlook.com
 [52.101.83.43])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5A4E44283A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jan 2026 13:27:47 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bmEZeAOuI8Aa6NUSp6jrev5xix8yeyqmY114FrhbrVKnPymRYdEScDPFr/PnFgBShFAPGv/diCQNwSZb9XoKNi8SIiw7wsCTPvhpBps3feB1uuV7fZfYfYfXzYqUv0NHTnw8/WBFctpNP9nikS8/L5hsIuvbL0w0OCwoPTle3uTQ4tgrPP518xMUyEJDmb1CMtklrv/MBY2W3bFz4sxXB59FGwGaJ2GPk+g7tk6KxFLQvEq+DFr/zs9itfVS01UiKizsA/TVXOTlL+KZeF0k6f7YNkWKxfq53q6ZU3G9L/93eA4Ibqc1Q+LASbaZ3pop0OdtLA2h0k8plKLUYB85VA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=b8T9E65RV9umj3+FgEiXRL7Qu4SbOPWuCPdSXa5W92c=;
 b=x6GKObETxj3a74pzeFBskR+Hji2VigKgfRryEpdavB4DBfNMraalpmsgYwa4Yk5ymsMayJ8hYITiY97qXVgnA6CNta2/nAMjIJTl84+4rXU0k0ggieeU/7L/n2lW0fLUq5duTzkJ5ctejD585CThWqlq4PSXWZP4QdP5dl/hzr68QFn1cyDkivSWKygBgK/oxp3OliWSVdotN5fwlXKooZGT/9vJlnNbT5lvcMPSxIA/E50zR/hgQJhzD7qtwUzrFaqcYLewr8SsBI54aA+T1IREWySUWc8RjfN5uwO7XbH4UWZ4jw2J6no9ii3AEkRB/bwOTDzgbHv1JZQNkQwtOw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=siemens.com; dmarc=pass action=none header.from=siemens.com;
 dkim=pass header.d=siemens.com; arc=none
Received: from DU0PR10MB5387.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:10:329::14)
 by PA2PR10MB9115.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:102:416::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.9; Wed, 21 Jan
 2026 13:27:44 +0000
Received: from DU0PR10MB5387.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::de46:63f0:fed4:cdef]) by DU0PR10MB5387.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::de46:63f0:fed4:cdef%6]) with mapi id 15.20.9542.008; Wed, 21 Jan 2026
 13:27:44 +0000
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
CC: "aleksandr.loktionov@intel.com" <aleksandr.loktionov@intel.com>,
 "jacob.e.keller@intel.com" <jacob.e.keller@intel.com>,
 "anthony.l.nguyen@intel.com" <anthony.l.nguyen@intel.com>,
 "przemyslaw.kitszel@intel.com" <przemyslaw.kitszel@intel.com>,
 "sriram.yagnaraman@ericsson.com" <sriram.yagnaraman@ericsson.com>,
 "kurt@linutronix.de" <kurt@linutronix.de>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "magnus.karlsson@intel.com"
 <magnus.karlsson@intel.com>
Thread-Topic: AW: [PATCH iwl-net v7] igb: Fix trigger of incorrect irq in
 igb_xsk_wakeup
Thread-Index: AQHcieGJvM4i4B5TD0+3Y5alm9oxcLVbAzyAgAEo6mCAAGacAIAABmKA
Date: Wed, 21 Jan 2026 13:27:43 +0000
Message-ID: <DU0PR10MB5387EC291FCA7D421157C98A8F96A@DU0PR10MB5387.EURPRD10.PROD.OUTLOOK.COM>
References: <20260120075053.2260190-1-vivek.behera@siemens.com>
 <aW96U5l2ffl4JCpB@boxer>
 <DU0PR10MB53873D1F725A7C13C6656C978F96A@DU0PR10MB5387.EURPRD10.PROD.OUTLOOK.COM>
 <aXDJeFxA+jPneSoi@boxer>
In-Reply-To: <aXDJeFxA+jPneSoi@boxer>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ActionId=a7e2e0dd-7604-4546-a3c3-ee68608d2fd4;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ContentBits=0;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Enabled=true;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Method=Standard;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Name=restricted;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SetDate=2026-01-21T13:04:18Z;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SiteId=38ae3bcd-9579-4fd4-adda-b42e1495d55a;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Tag=10, 3, 0, 1;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DU0PR10MB5387:EE_|PA2PR10MB9115:EE_
x-ms-office365-filtering-correlation-id: dd5a9a47-75c7-4cb7-32a5-08de58f0dbf8
x-ms-exchange-atpmessageproperties: SA
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|38070700021|13003099007; 
x-microsoft-antispam-message-info: =?iso-8859-1?Q?1VIuQcZ9AfqJ4it+2ScI2BVFz+RjDHVwxfWmoyWLqS0kRpLcq7B1iqyWLe?=
 =?iso-8859-1?Q?4Mg5SzJM4k5ktb+LXhIEHpY9PDK0DA7wHbA/0zy9nU4cfA62H0Azt2uGAt?=
 =?iso-8859-1?Q?my9CjoYRWmVWNXn/aOdFWzTF7fKo7YSw40FLwB6D7lEl+kWwFbY35Wmmso?=
 =?iso-8859-1?Q?7BwLC72mt52odVXJYtycOPUCeBJLfrVGeFOP6/Jy3B34RE1cQpiLO+dX55?=
 =?iso-8859-1?Q?h1F20tT/RGryMU2tKZejHJT7ZApn8RgnpZZizbR8ioEl+ZZLNTRXlD9E4N?=
 =?iso-8859-1?Q?jgcQwPVp5Rt3tnza1k9ohT4cMNhFyGy0xLjufjqxRJ8h/WThp0iyGwL6ZX?=
 =?iso-8859-1?Q?ngafiZTvQ9ugPyVerdazzacgfOZbPVlSwx03tVFR+kB3dMmkdH8LtJQaQn?=
 =?iso-8859-1?Q?etfg4pCl4V5UtIruKEB/UaLZVUovPHAkFH+uoMzTWbPE2iCKLt1j2/gblM?=
 =?iso-8859-1?Q?UOmWXn620H1IwilfqipEtWkov0p+s12CjcUg61tAnWNWZPSl8vrUDVnPMP?=
 =?iso-8859-1?Q?/uRNJEHECcF39cME5jtZ1lorBEmZXwD/mMIGupfhwlmgNazpUACYwQFIV4?=
 =?iso-8859-1?Q?g39pdMtsHugVSoggzoh3y1LKT313HavlfgNB0qxesbHEUFZ5Ag2YaNUYn8?=
 =?iso-8859-1?Q?exswg5ZVJyS2ffzrVJ1bHayzPbFbq2TWrk5ThwozJtPpH1qsmOQ2rrdc1U?=
 =?iso-8859-1?Q?xuM0urdpurK4i4z+kb9iLkawX7LdD3kr363vU+fO9ZbvsbfEzDYtD5UA1p?=
 =?iso-8859-1?Q?+uvEWR5Pp1zZCnCRAFNSiCvkYg9/wsGpJfxSdjltAUtPS7fCl4ugP0fYAF?=
 =?iso-8859-1?Q?79C7+1r8rWQ0ljoBQeTzxZXEOc/ePb8Ea16doNSmne2vDmV2BnAs1jepgG?=
 =?iso-8859-1?Q?ZoRiFTGGT6le05+q5GszmsCojdlG7Yl3MX3Y/E4vWKB1rWzgSe4xAdTQRs?=
 =?iso-8859-1?Q?WWFPaAj0AHctnP0yHYM9BXYgTMHrUNfBJATmgj1q6XoJXZoxGis4fjG7te?=
 =?iso-8859-1?Q?3yLBIylk/459+bn/4UWE+dzAhrxD4Sz1jgqCaA0jnLscw55ccnWfk14GN9?=
 =?iso-8859-1?Q?SrFfuGBDbfvrpjgMB0bEo2+ngTlEglK4HPgE15mkvYm2OuR1vqSok0X+sv?=
 =?iso-8859-1?Q?MrapM7ochpbOu9vH91KTKX2QkjEL+9eqtscSkqAjXjVo+pmXLfGTCXa/5u?=
 =?iso-8859-1?Q?fJ2NP2DIK4a9DKR23XVz2mJotuMeyQw0cgGo6AMio5+GtYOwPPu/38qqg1?=
 =?iso-8859-1?Q?DhytrMndi+RHWath6sr209DOflx9q9ZIpGXthR6Xg8Q4DyH8FpCqFZimGN?=
 =?iso-8859-1?Q?lZtyPpeLhqttQeCgXsASLifCvrNcF9lL0hjy/mSWmMYHUvasX13xNGMwUt?=
 =?iso-8859-1?Q?ypAZurLPQRC28x7sLcB/Y2JmLl4dpNEUyx4ucKLRvaFF21Pfy8ldAjKado?=
 =?iso-8859-1?Q?UL6iAfBGE7GOavT9FaofAsgXTz6YLUixrKgQDzf36cYe52M6+8LDajODyf?=
 =?iso-8859-1?Q?hv4hHpFeUK4COPyGk5x7s3tn75u+BXBOa0Jaf4B5T8cTfGAeZqgpF29Rcb?=
 =?iso-8859-1?Q?9QPH3pyJixV7Uq9DLWh5xCiyoxnDuvdFliwrOIs+hmdpIvna5ZVCsGGyYn?=
 =?iso-8859-1?Q?v5FEdOZjfsqcVZjhFL8jOmdw4fEcP8KBYH?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DU0PR10MB5387.EURPRD10.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700021)(13003099007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?vI7ZBuzTX9UfNPgDzq4uUa58oHHhK18hvopwaW/vDK3UpVMeYRyKZefoiV?=
 =?iso-8859-1?Q?e8+gwVVFK4HhZ74YoUhZxSBVBUzm0kywgPyA83V1hfQQmduzbdHqS2RxhJ?=
 =?iso-8859-1?Q?v2KUOhJzJq+q9DIrOp43cvA3hOomlO0va2t+kse8v7ZNvJOVPtStThg34M?=
 =?iso-8859-1?Q?MnXjkfLbEAgB8m0I3+lTOZMBW7yoBLbPXXs/CskFtK1fdEHqvpWR2gG/Vo?=
 =?iso-8859-1?Q?GGpIYc5YJ/99y1zUWr58qVzl6hpqtLbY1yjxQShUkUJDhSavvly0VeqVVS?=
 =?iso-8859-1?Q?nzrCbnZjmahujz+xwMs8TxYltMJJ2jZ95eQkViu1Nx5+EPuvZkwsvS9nNg?=
 =?iso-8859-1?Q?xR2PJEu2KYFcdzPmfLUmMdANQWye7f/uXHcSM00coayfpysjuM4Ejx17TH?=
 =?iso-8859-1?Q?Wu67omHe8x3I5qScwi2kdbc3tSOtwZqzRiHa57OEuOmmXqMFeQAWTzL3J/?=
 =?iso-8859-1?Q?IdHLEZyyX6c+0KwXQ1NZ8lQ2NcenckvZKFkz3IzVdRUUROolg3S0pCTl5W?=
 =?iso-8859-1?Q?DYeZ/TLziynM1jwTGwpS71sdj43dREg61m5AUTfAILDw75Zuhs0Aa8fqwm?=
 =?iso-8859-1?Q?z3v2ugeUcXbipzPMk0QFCT9kavBicKm36Qsk0LkkcW5tc78AGm3pSaSvnH?=
 =?iso-8859-1?Q?Iy3yQWQVCmF2RFTaiQnQZQY3K07XD6nsl8414ySkV0wH0Phh62TeevtVgf?=
 =?iso-8859-1?Q?sHCeQ3F5vNsGWOo8v+bhg6f6grI0lMLPZXNHROeAFz+uMRRlra1MQOSSfn?=
 =?iso-8859-1?Q?BKPoBsxgtpHXx0gWpV6Idj52ylFkNgUZIzFzzHqcyexrOcAfNuaQc9x5KR?=
 =?iso-8859-1?Q?6vo3EF/VsREpk2n1iFBqdg5QqxjxOrrrUr8HZexEJWOaTYw5K8Eht1xn8r?=
 =?iso-8859-1?Q?bpv07ZqdPq+QlfWFyNufYpeswnQmFMH63y1ITxjHw1oSXMVbiqYsg/f8iw?=
 =?iso-8859-1?Q?DnF6jlaq6VMFR7kY6W7mBhYMaXYEC+RbC4Vzn28Rdqs7AkPI+sdsS/X2df?=
 =?iso-8859-1?Q?USLKy7l6uYNuH5U7lO/tZZC0cAyv50/zAtYlEGnt1XFgyrvl4aLUKfAvV/?=
 =?iso-8859-1?Q?7U1+LTJCukQY188uT28sNpv6qbKw6QOzDHA5vd0CGk5sChHcwhIIAwLLk5?=
 =?iso-8859-1?Q?6RtieAVJt15XuOGFXE/G86RzRoP2BMG0ql8f4csGVVngpJkTUvnHfoV4YI?=
 =?iso-8859-1?Q?VYpa3tB3vXnqAbA1X9qDcmBgybDLB9aMtB7Ap2UPJ679uX63IsY4a9OoFm?=
 =?iso-8859-1?Q?h11wxHmzHYP3Z1Ce5JgQ3aRtNi9dc2GuttVEJhP0u0GreXpWD4vcOmsUbR?=
 =?iso-8859-1?Q?wxe9AQNuA7gF5WxTaef8yuN6t/aCOj5ne+RJw0RVdUUEbF+4rp9haGE8bF?=
 =?iso-8859-1?Q?6ikZwpiPXnAaDeX/qlBFAOS54aHhDlr/+LCcjKN0Rq2WJkkyL8IvcUzU88?=
 =?iso-8859-1?Q?oKS0fQMR8xDPl/EtJH1XCrG9mR8pfJMxCN5STI2r2pvuOxX6+76J+yHQjH?=
 =?iso-8859-1?Q?HgiXYPVP6eaF3nGcKsgnEPwiEK7M93cxsB0NJRu67DgvpVpEJD/gw1oD6S?=
 =?iso-8859-1?Q?I3AxBa0gPTBNyGvZk+AflCDqQoFLSkUZrCnwFbf185stKCcJvdYTkG0Sso?=
 =?iso-8859-1?Q?1iK5Zmvqo1IpIqJ4C6lVIxvoD4MrPCBWGXDdi3B390gNJOfykNoOw0ivnT?=
 =?iso-8859-1?Q?AtBiuzOEkukhWA5uclZeYz/G4Rq/dpuyaVODFaQ+wdKGk6sbx2LIwHiGUZ?=
 =?iso-8859-1?Q?KK3a9h0qnQm2QQEz8gDIfReVWX2oq1wHsGE5o373q4lZxUOhMFuDIalxea?=
 =?iso-8859-1?Q?dFwHe2ZAyg=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: siemens.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DU0PR10MB5387.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: dd5a9a47-75c7-4cb7-32a5-08de58f0dbf8
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jan 2026 13:27:43.8889 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 38ae3bcd-9579-4fd4-adda-b42e1495d55a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hqUxVKf9dnC0MXLP5eGb135VSvPfwnPOsV/Mm8qCm9FrOMYqnw369pivfXcs2cBfPEoA0Gs9ynyJJUEpd8rzl5SXHR8kJqcoZTZ7iU08oaI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA2PR10MB9115
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=siemens.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=b8T9E65RV9umj3+FgEiXRL7Qu4SbOPWuCPdSXa5W92c=;
 b=vSHqAdyyoPZE4Q5TuO9BoplgpOcBSxCig5hjSciYeKYqwIjR9+TwdigO965Ss7O50Vx2XnjtMjQT3Bgqm+F4Q8Jj2OHMuSoUM2jvUZFc6nAWMWCbpx3TVRHQU2c3KV1rCqVLb9e+BUslRwjCcvPu6+aFq7p0x0/fk1jfWTim2EJHvhHmgLiD3F+p+hxo7xIBgDFUaH8DE4qUZZFc1l7IzgYbj2iEU9+vVJlVJYX+c9NQPdl0OU9YY/g3qIbEUSEbEYipavJGOy92igc5YKZU1z3/3cSaNIRaJuQrwXNOQNBCYs5fyXC3A0zFno55WDOIhcaeqzUutYzcRE9OT8140w==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=siemens.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=siemens.com header.i=@siemens.com header.a=rsa-sha256
 header.s=selector2 header.b=vSHqAdyy
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=siemens.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v7] igb: Fix trigger of
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[osuosl.org,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:maciej.fijalkowski@intel.com,m:aleksandr.loktionov@intel.com,m:jacob.e.keller@intel.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:sriram.yagnaraman@ericsson.com,m:kurt@linutronix.de,m:magnus.karlsson@intel.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,outlook.com:url,smtp1.osuosl.org:rdns,smtp1.osuosl.org:helo,DU0PR10MB5387.EURPRD10.PROD.OUTLOOK.COM:mid,osuosl.org:email,osuosl.org:dkim,ericsson.com:email];
	DKIM_TRACE(0.00)[osuosl.org:+];
	HAS_REPLYTO(0.00)[vivek.behera@siemens.com];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 2C0BC5783E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Urspr=FCngliche Nachricht-----
> Von: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> Gesendet: Mittwoch, 21. Januar 2026 13:41
> An: Behera, Vivek (DI FA DSP ICC PRC1) <vivek.behera@siemens.com>
> Cc: aleksandr.loktionov@intel.com; jacob.e.keller@intel.com;
> anthony.l.nguyen@intel.com; przemyslaw.kitszel@intel.com;
> sriram.yagnaraman@ericsson.com; kurt@linutronix.de; intel-wired-
> lan@lists.osuosl.org; magnus.karlsson@intel.com
> Betreff: Re: AW: [PATCH iwl-net v7] igb: Fix trigger of incorrect irq in
> igb_xsk_wakeup
>=20
> On Wed, Jan 21, 2026 at 07:02:47AM +0000, Behera, VIVEK wrote:
> >
> >
> > > -----Urspr=FCngliche Nachricht-----
> > > Von: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> > > Gesendet: Dienstag, 20. Januar 2026 13:52
> > > An: Behera, Vivek (DI FA DSP ICC PRC1) <vivek.behera@siemens.com>
> > > Cc: aleksandr.loktionov@intel.com; jacob.e.keller@intel.com;
> > > anthony.l.nguyen@intel.com; przemyslaw.kitszel@intel.com;
> > > sriram.yagnaraman@ericsson.com; kurt@linutronix.de; intel-wired-
> > > lan@lists.osuosl.org; magnus.karlsson@intel.com
> > > Betreff: Re: [PATCH iwl-net v7] igb: Fix trigger of incorrect irq in
> > > igb_xsk_wakeup
> > >
> > > On Tue, Jan 20, 2026 at 08:50:53AM +0100, Vivek Behera wrote:
> > > > The current implementation in the igb_xsk_wakeup expects the Rx
> > > > and Tx queues to share the same irq. This would lead to triggering
> > > > of incorrect irq in split irq configuration.
> > > > This patch addresses this issue which could impact environments
> > > > with 2 active cpu cores or when the number of queues is reduced to
> > > > 2 or less
> > > >
> > > > cat /proc/interrupts | grep eno2
> > > >  167:          0          0          0          0 IR-PCI-MSIX-0000:=
08:00.0
> > > >  0-edge      eno2
> > > >  168:          0          0          0          0 IR-PCI-MSIX-0000:=
08:00.0
> > > >  1-edge      eno2-rx-0
> > > >  169:          0          0          0          0 IR-PCI-MSIX-0000:=
08:00.0
> > > >  2-edge      eno2-rx-1
> > > >  170:          0          0          0          0 IR-PCI-MSIX-0000:=
08:00.0
> > > >  3-edge      eno2-tx-0
> > > >  171:          0          0          0          0 IR-PCI-MSIX-0000:=
08:00.0
> > > >  4-edge      eno2-tx-1
> > > >
> > > > Furthermore it uses the flags input argument to trigger either rx,
> > > > tx or both rx and tx irqs as specified in the ndo_xsk_wakeup api
> > > > documentation
> > > >
> > > > Fixes: 80f6ccf9f116 ("igb: Introduce XSK data structures and
> > > > helpers")
> > > > Signed-off-by: Vivek Behera <vivek.behera@siemens.com>
> > > > Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> > >
> > > Hi Vivek,
> > >
> > > I gave you my acked-by on v6. I don't feel obliged to call out such
> > > things but since we have completely changed approach of fixing
> > > things here, Aleksandr do you want to keep your review tag? If so the=
n please go
> through the code again.
> > Hi Maciej,
> >
> > I am okay with removing Aleksander's Reviewed-by Tag if it is no longer=
 valid.
> > I had also mentioned during the discussion on the v5 thread that due
> > to the changed approach, you might even consider submitting a fresh pat=
ch by
> dropping mine.
>=20
> Patch is fine, just add my ack.
Okay. I can do this. Do you want the Suggested-by tag with your name to rem=
ain?
>=20
> > Nevertheless, from my perspective it is critical that we can start
> > upstreaming the fixes included in this patch along with the igc for my
> > Stakeholders who are planning to release their Products on Siemens IPCs=
 with
> I210 and i226 cards in the next quarter.
> > I just want to communicate the urgency on this topic.
> > >
> > > Thanks!
> > >
> > > > Suggested-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> > > > ---
> > > > v1:
> > > > https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2=
F
> > > >
> lore%2F&data=3D05%7C02%7Cvivek.behera%40siemens.com%7Cd4b35fd2c36e45
> > > >
> 5ba4d508de58ea7418%7C38ae3bcd95794fd4addab42e1495d55a%7C1%7C0%7C63
> > > >
> 9045961158691646%7CUnknown%7CTWFpbGZsb3d8eyJFbXB0eU1hcGkiOnRydW
> UsI
> > > > lYiOiIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIkFOIjoiTWFpbCIsIldUIjoyfQ%3D%3
> > > >
> D%7C0%7C%7C%7C&sdata=3DtWaSgJJ%2FCmETVAqyyQYJoTthL%2B8UWpBjGwF
> eMSR1s
> > > > XQ%3D&reserved=3D0
> > > > .kernel.org%2Fintel-wired-lan%2F20251212131454.124116-1-vivek.behe
> > > > ra%4
> > > >
> > >
> 0siemens.com%2F&data=3D05%7C02%7Cvivek.behera%40siemens.com%7C3219ce1
> > > 35f
> > > >
> > >
> 81466db29e08de5822a99d%7C38ae3bcd95794fd4addab42e1495d55a%7C1%7C0%7
> > > C63
> > > >
> > >
> 9045103048376499%7CUnknown%7CTWFpbGZsb3d8eyJFbXB0eU1hcGkiOnRydW
> > > UsIlYiO
> > > >
> > >
> iIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIkFOIjoiTWFpbCIsIldUIjoyfQ%3D%3D%7C0%
> > > 7
> > > C
> > > >
> > >
> %7C%7C&sdata=3DbFd0kGibsg8vv0%2BCsCV5HU%2FccorvAphaprPLtfAgnA8%3D&
> > > reserv
> > > > ed=3D0
> > > > v2:
> > > > https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2=
F
> > > >
> lore%2F&data=3D05%7C02%7Cvivek.behera%40siemens.com%7Cd4b35fd2c36e45
> > > >
> 5ba4d508de58ea7418%7C38ae3bcd95794fd4addab42e1495d55a%7C1%7C0%7C63
> > > >
> 9045961158737576%7CUnknown%7CTWFpbGZsb3d8eyJFbXB0eU1hcGkiOnRydW
> UsI
> > > > lYiOiIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIkFOIjoiTWFpbCIsIldUIjoyfQ%3D%3
> > > >
> D%7C0%7C%7C%7C&sdata=3DnBM3io5WZbGP4u%2BEyexEllo9VeOaaxZOYvBUSs
> SbceE
> > > > %3D&reserved=3D0
> > > > .kernel.org%2Fintel-wired-lan%2F20251215115416.410619-1-vivek.behe
> > > > ra%4
> > > >
> > >
> 0siemens.com%2F&data=3D05%7C02%7Cvivek.behera%40siemens.com%7C3219ce1
> > > 35f
> > > >
> > >
> 81466db29e08de5822a99d%7C38ae3bcd95794fd4addab42e1495d55a%7C1%7C0%7
> > > C63
> > > >
> > >
> 9045103048417392%7CUnknown%7CTWFpbGZsb3d8eyJFbXB0eU1hcGkiOnRydW
> > > UsIlYiO
> > > >
> > >
> iIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIkFOIjoiTWFpbCIsIldUIjoyfQ%3D%3D%7C0%
> > > 7
> > > C
> > > >
> > >
> %7C%7C&sdata=3D4IzCdXUlEaWODsWCru2F3xIy02NwfoPYTtsnLjHN1Q8%3D&reser
> > > ved=3D0
> > > > v3:
> > > > https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2=
F
> > > >
> lore%2F&data=3D05%7C02%7Cvivek.behera%40siemens.com%7Cd4b35fd2c36e45
> > > >
> 5ba4d508de58ea7418%7C38ae3bcd95794fd4addab42e1495d55a%7C1%7C0%7C63
> > > >
> 9045961158778124%7CUnknown%7CTWFpbGZsb3d8eyJFbXB0eU1hcGkiOnRydW
> UsI
> > > > lYiOiIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIkFOIjoiTWFpbCIsIldUIjoyfQ%3D%3
> > > >
> D%7C0%7C%7C%7C&sdata=3DzoUV3Yqa1IVV8fYhRnOFps%2Bkwarcnk5n2ymGw%
> 2FT6s
> > > > rI%3D&reserved=3D0
> > > > .kernel.org%2Fintel-wired-lan%2F20251220114936.140473-1-vivek.behe
> > > > ra%4
> > > >
> > >
> 0siemens.com%2F&data=3D05%7C02%7Cvivek.behera%40siemens.com%7C3219ce1
> > > 35f
> > > >
> > >
> 81466db29e08de5822a99d%7C38ae3bcd95794fd4addab42e1495d55a%7C1%7C0%7
> > > C63
> > > >
> > >
> 9045103048455269%7CUnknown%7CTWFpbGZsb3d8eyJFbXB0eU1hcGkiOnRydW
> > > UsIlYiO
> > > >
> > >
> iIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIkFOIjoiTWFpbCIsIldUIjoyfQ%3D%3D%7C0%
> > > 7
> > > C
> > > >
> > >
> %7C%7C&sdata=3D2%2BhI0oizG3q8bl3dxLTnFbXH%2FpMAdQonSl9rNLIyCFc%3D&r
> > > eserv
> > > > ed=3D0
> > > > v4:
> > > > https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2=
F
> > > >
> lore%2F&data=3D05%7C02%7Cvivek.behera%40siemens.com%7Cd4b35fd2c36e45
> > > >
> 5ba4d508de58ea7418%7C38ae3bcd95794fd4addab42e1495d55a%7C1%7C0%7C63
> > > >
> 9045961158821960%7CUnknown%7CTWFpbGZsb3d8eyJFbXB0eU1hcGkiOnRydW
> UsI
> > > > lYiOiIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIkFOIjoiTWFpbCIsIldUIjoyfQ%3D%3
> > > >
> D%7C0%7C%7C%7C&sdata=3DUW%2FMB0OFoU5J1tyOYBII%2FmhQyeQmh3gyoC
> 1vYqgp5
> > > > mU%3D&reserved=3D0
> > > > .kernel.org%2Fintel-wired-lan%2F20251222115747.230521-1-vivek.behe
> > > > ra%4
> > > >
> > >
> 0siemens.com%2F&data=3D05%7C02%7Cvivek.behera%40siemens.com%7C3219ce1
> > > 35f
> > > >
> > >
> 81466db29e08de5822a99d%7C38ae3bcd95794fd4addab42e1495d55a%7C1%7C0%7
> > > C63
> > > >
> > >
> 9045103048497301%7CUnknown%7CTWFpbGZsb3d8eyJFbXB0eU1hcGkiOnRydW
> > > UsIlYiO
> > > >
> > >
> iIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIkFOIjoiTWFpbCIsIldUIjoyfQ%3D%3D%7C0%
> > > 7
> > > C
> > > >
> > >
> %7C%7C&sdata=3DoJXJyzmla5rvnYNu4OHS0b7bYY%2BjOXe66QxrT79YfJs%3D&re
> > > served
> > > > =3D0
> > > > v5:
> > > > https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2=
F
> > > >
> lore%2F&data=3D05%7C02%7Cvivek.behera%40siemens.com%7Cd4b35fd2c36e45
> > > >
> 5ba4d508de58ea7418%7C38ae3bcd95794fd4addab42e1495d55a%7C1%7C0%7C63
> > > >
> 9045961158869993%7CUnknown%7CTWFpbGZsb3d8eyJFbXB0eU1hcGkiOnRydW
> UsI
> > > > lYiOiIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIkFOIjoiTWFpbCIsIldUIjoyfQ%3D%3
> > > >
> D%7C0%7C%7C%7C&sdata=3DV2HoYchi%2BEQt%2BQ1sRloI75NdX7fphulTpQ4xJ4
> aCQ
> > > > pE%3D&reserved=3D0
> > > > .kernel.org%2Fintel-wired-lan%2F20260112130349.1737901-1-vivek.beh
> > > > era%
> > > >
> > >
> 40siemens.com%2F&data=3D05%7C02%7Cvivek.behera%40siemens.com%7C3219ce
> > > 135
> > > >
> > >
> f81466db29e08de5822a99d%7C38ae3bcd95794fd4addab42e1495d55a%7C1%7C0%
> > > 7C6
> > > >
> > >
> 39045103048534301%7CUnknown%7CTWFpbGZsb3d8eyJFbXB0eU1hcGkiOnRydW
> > > UsIlYi
> > > >
> > >
> OiIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIkFOIjoiTWFpbCIsIldUIjoyfQ%3D%3D%7C0
> > > %7
> > > >
> > >
> C%7C%7C&sdata=3DZ%2BYULMIoUWG8BfRHegGxiWVE39on%2BctH7YTbzkfz%2F
> > > Co%3D&res
> > > > erved=3D0
> > > > v6:
> > > > https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2=
F
> > > >
> lore%2F&data=3D05%7C02%7Cvivek.behera%40siemens.com%7Cd4b35fd2c36e45
> > > >
> 5ba4d508de58ea7418%7C38ae3bcd95794fd4addab42e1495d55a%7C1%7C0%7C63
> > > >
> 9045961158914456%7CUnknown%7CTWFpbGZsb3d8eyJFbXB0eU1hcGkiOnRydW
> UsI
> > > > lYiOiIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIkFOIjoiTWFpbCIsIldUIjoyfQ%3D%3
> > > >
> D%7C0%7C%7C%7C&sdata=3DYuMKj%2FvujzdH97F1ZZD5yrUFjp0B7Q88Y4ZCeQdZ
> DQ4
> > > > %3D&reserved=3D0
> > > > .kernel.org%2Fintel-wired-lan%2F20260117145112.2088217-1-vivek.beh
> > > > era%
> > > >
> > >
> 40siemens.com%2F&data=3D05%7C02%7Cvivek.behera%40siemens.com%7C3219ce
> > > 135
> > > >
> > >
> f81466db29e08de5822a99d%7C38ae3bcd95794fd4addab42e1495d55a%7C1%7C0%
> > > 7C6
> > > >
> > >
> 39045103048568401%7CUnknown%7CTWFpbGZsb3d8eyJFbXB0eU1hcGkiOnRydW
> > > UsIlYi
> > > >
> > >
> OiIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIkFOIjoiTWFpbCIsIldUIjoyfQ%3D%3D%7C0
> > > %7
> > > >
> > >
> C%7C%7C&sdata=3DmnZAzSk6WTEAN15HSWdsDzJvx6QetZLg7akqqnjrkiU%3D&re
> > > served=3D
> > > > 0
> > > >
> > > > changelog:
> > > > v1
> > > > - Initial description of the Bug and fixes made in the patch
> > > >
> > > > v1 -> v2
> > > > - Handling of RX and TX Wakeup in igc_xsk_wakeup for a split IRQ
> > > > configuration
> > > > - Review suggestions by Aleksander: Modified sequence to complete a=
ll
> > > >   error checks for rx and tx before updating napi states and
> > > > triggering irqs
> > > > - Corrected trigger of TX and RX interrupts over E1000_ICS (non
> > > > msix use case)
> > > > - Added define for Tx interrupt trigger bit mask for E1000_ICS
> > > >
> > > > v2 -> v3
> > > > - Included applicable feedback and suggestions from igc patch
> > > > - Fixed logic in updating eics value when  both TX and RX need
> > > > wakeup
> > > >
> > > > v3 -> v4
> > > > - Added comments to explain trigerring of both TX and RX with
> > > > active queue pairs
> > > > - Fixed check of xsk pools in if statement
> > > >
> > > > v4 -> v5
> > > > - Introduced a simplified logic for sequential check for RX and TX
> > > >
> > > > v5 -> v6
> > > > - Further simplifications suggested by Maciej
> > > > - Included review suggestions from reviewers
> > > >
> > > > v6 -> v7
> > > > - Removed redundant braces
> > > > - Updated comment block to improve explanation of implemented
> > > > logic
> > > > ---
> > > >  drivers/net/ethernet/intel/igb/igb_xsk.c | 38
> > > > +++++++++++++++++++-----
> > > >  1 file changed, 30 insertions(+), 8 deletions(-)
> > > >
> > > > diff --git a/drivers/net/ethernet/intel/igb/igb_xsk.c
> > > > b/drivers/net/ethernet/intel/igb/igb_xsk.c
> > > > index 30ce5fbb5b77..ce4a7b58cad2 100644
> > > > --- a/drivers/net/ethernet/intel/igb/igb_xsk.c
> > > > +++ b/drivers/net/ethernet/intel/igb/igb_xsk.c
> > > > @@ -524,6 +524,16 @@ bool igb_xmit_zc(struct igb_ring *tx_ring,
> > > > struct
> > > xsk_buff_pool *xsk_pool)
> > > >  	return nb_pkts < budget;
> > > >  }
> > > >
> > > > +static u32 igb_sw_irq_prep(struct igb_q_vector *q_vector) {
> > > > +	u32 eics =3D 0;
> > > > +
> > > > +	if (!napi_if_scheduled_mark_missed(&q_vector->napi))
> > > > +		eics =3D q_vector->eims_value;
> > > > +
> > > > +	return eics;
> > > > +}
> > > > +
> > > >  int igb_xsk_wakeup(struct net_device *dev, u32 qid, u32 flags)  {
> > > >  	struct igb_adapter *adapter =3D netdev_priv(dev); @@ -542,20
> > > > +552,32 @@ int igb_xsk_wakeup(struct net_device *dev, u32 qid, u32
> > > > flags)
> > > >
> > > >  	ring =3D adapter->tx_ring[qid];
> > > >
> > > > -	if (test_bit(IGB_RING_FLAG_TX_DISABLED, &ring->flags))
> > > > -		return -ENETDOWN;
> > > > -
> > > >  	if (!READ_ONCE(ring->xsk_pool))
> > > >  		return -EINVAL;
> > > >
> > > > -	if (!napi_if_scheduled_mark_missed(&ring->q_vector->napi)) {
> > > > +	if (flags & XDP_WAKEUP_TX) {
> > > > +		if (test_bit(IGB_RING_FLAG_TX_DISABLED, &ring->flags))
> > > > +			return -ENETDOWN;
> > > > +
> > > > +		eics |=3D igb_sw_irq_prep(ring->q_vector);
> > > > +	}
> > > > +
> > > > +	if (flags & XDP_WAKEUP_RX) {
> > > > +		/* If IGB_FLAG_QUEUE_PAIRS is active, the q_vector
> > > > +		 * and NAPI is shared between RX and TX.
> > > > +		 * If NAPI is already running it would be marked as missed
> > > > +		 * from the TX path, making this RX call a NOP
> > > > +		 */
> > > > +		ring =3D adapter->rx_ring[qid];
> > > > +		eics |=3D igb_sw_irq_prep(ring->q_vector);
> > > > +	}
> > > > +
> > > > +	if (eics) {
> > > >  		/* Cause software interrupt */
> > > > -		if (adapter->flags & IGB_FLAG_HAS_MSIX) {
> > > > -			eics |=3D ring->q_vector->eims_value;
> > > > +		if (adapter->flags & IGB_FLAG_HAS_MSIX)
> > > >  			wr32(E1000_EICS, eics);
> > > > -		} else {
> > > > +		else
> > > >  			wr32(E1000_ICS, E1000_ICS_RXDMT0);
> > > > -		}
> > > >  	}
> > > >
> > > >  	return 0;
> > > > --
> > > > 2.34.1
> > > >
