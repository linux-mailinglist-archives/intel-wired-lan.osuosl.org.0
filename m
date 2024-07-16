Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 80DAD9321B1
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Jul 2024 10:13:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2B3D9608E0;
	Tue, 16 Jul 2024 08:13:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DoA-QpYgEogB; Tue, 16 Jul 2024 08:13:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 47849608F5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1721117610;
	bh=S+TU6gobIcaApdVQDMwhuoAogtPGqqjAOPH2QJylr30=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=d/S4rk3kPmcx8ofn5EJqE1CPyTyZJULMil4eBmpChvqheC4m8W8eDUzCzfNLUWK+r
	 9HhY6GUNGKVO+TmYjd0Qx//gP1ix+vGwABD7W7z8T/h44a0Xkq33ElB8XRS9d0OyXu
	 bvN1fCSP/K8//zY/hPkrBvllSK8W/i8c+7zM1keSsD0KMEDcXQIvkUgamiB0QCrIfc
	 RJFhF7LgVrsu+HqA85d9yPCt2unLlxIGMnIm+TcgVJXOZFjEq8hQK3OH7W1H9A0EG5
	 rey/1+Jyko4zEP1NqNndFZEsy3pyPMj5Jhh+fAlOoAIE8Rrr4Kr942zcfSnDO+RtWy
	 pz7L1wnz2KRYA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 47849608F5;
	Tue, 16 Jul 2024 08:13:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 799811BF3D6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Jul 2024 08:13:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 70BC54047E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Jul 2024 08:13:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KyZycroxhXva for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 Jul 2024 08:13:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=40.107.161.90;
 helo=pr0p264cu014.outbound.protection.outlook.com;
 envelope-from=rodrigo.cadore@l-acoustics.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 4F41D4046D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4F41D4046D
Received: from PR0P264CU014.outbound.protection.outlook.com
 (mail-francecentralazon11022090.outbound.protection.outlook.com
 [40.107.161.90])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4F41D4046D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Jul 2024 08:13:26 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=R61KtXI1CneVOrHjs32bcjlzU8yJg+pk31Pe1dSAYN2Juc6hWGJzKHMiWk80wsoMxcjhwdRc7wYwDc0QDGufiiez2/m7LwC7qq9uhhcIZCdtyME5tU7bMaqzRhHy4uBebTExuXh4MbJ14S2C1rapRKGl57qA2Ly4YPJ+8qLMeyuxqviKQ+xNNIj6HhU9oDv2Pv72tKYDrDg09U3SqAhJL37K3oD3Kb4r87KYAVqnonnMI3TheIj8WCAG7shURKJzBE3lGE+wBYG8nHTsPjFpKrx7BxTCYeFNhTFOzkf3ofmYUU4vfJm3UMsGZ3UpEHD36mxNr0nux7U9uDUUTUlf8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=S+TU6gobIcaApdVQDMwhuoAogtPGqqjAOPH2QJylr30=;
 b=nuYOV4mFzISePFiRCC0qqa7PVTOAxrQQizUwg8gG79qrT332cozw/NuLud5NoMu40E4QtTNea/1A+5jhzU6cT7Abo+U35AAVIEI+7rX1ckZ3DrvdhcK9KYv8ZsAKfWDgfCk9OSPzSGDetAO+2sD8qGFbFuSR/UbQNxPYbyEO/+3PvztdauOwikpI3JfO8MaW6/04Bw4t3LEuPEBKVaYriYENCvem7EJ5BLXvH6LM9le0abwJjzL+N2ZNPGsIEDhheKk43csjOQjmHIdSgQGoJMteH3R+Gs+pWY8p6QxKdk6Su/+FmiNjEYqdtsBvQt/fob0Vjt5cJgbRytR7EDuT9w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=l-acoustics.com; dmarc=pass action=none
 header.from=l-acoustics.com; dkim=pass header.d=l-acoustics.com; arc=none
Received: from PR0P264MB4464.FRAP264.PROD.OUTLOOK.COM (2603:10a6:102:25d::9)
 by MRZP264MB2199.FRAP264.PROD.OUTLOOK.COM (2603:10a6:501:16::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7762.29; Tue, 16 Jul
 2024 08:13:21 +0000
Received: from PR0P264MB4464.FRAP264.PROD.OUTLOOK.COM
 ([fe80::8062:2bfa:50b2:8368]) by PR0P264MB4464.FRAP264.PROD.OUTLOOK.COM
 ([fe80::8062:2bfa:50b2:8368%4]) with mapi id 15.20.7762.027; Tue, 16 Jul 2024
 08:13:21 +0000
From: Rodrigo CADORE CATALDO <rodrigo.cadore@l-acoustics.com>
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>, Rodrigo Cataldo via B4
 Relay <devnull+rodrigo.cadore.l-acoustics.com@kernel.org>, Jesse Brandeburg
 <jesse.brandeburg@intel.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Richard
 Cochran <richardcochran@gmail.com>, Kurt Kanzenbach
 <kurt.kanzenbach@linutronix.de>, "Christopher S. Hall"
 <christopher.s.hall@intel.com>
Thread-Topic: [PATCH iwl-net] igc: Ensure PTM request is completed before
 timeout has started
Thread-Index: AQHa0Rm3nlgP9ehLg0KZNjzimJDpDbHwtfeAgAcw5VA=
Date: Tue, 16 Jul 2024 08:13:20 +0000
Message-ID: <PR0P264MB44642D545FA8C5701F318DA2C8A22@PR0P264MB4464.FRAP264.PROD.OUTLOOK.COM>
References: <20240708-igc-flush-ptm-request-before-timeout-6-10-v1-1-70e5ebec9efe@l-acoustics.com>
 <87r0c0sqhe.fsf@intel.com>
In-Reply-To: <87r0c0sqhe.fsf@intel.com>
Accept-Language: en-US, fr-FR
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-lsi-version: 1.0
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PR0P264MB4464:EE_|MRZP264MB2199:EE_
x-ms-office365-filtering-correlation-id: 3f8e59ba-c173-4205-219f-08dca56f27ee
x-ms-exchange-atpmessageproperties: SA
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|7416014|376014|921020|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?gV1Q4sVBL0jzGDvQQtnbI/cvzo6mboZKyCtAf6nQ3n6U1XR6v/LviCd7cMBF?=
 =?us-ascii?Q?MdwehAT8NNwKFrt0ls83+XraedjNeGMDUV5pUJbqX36/2OF13A9AygD0lWa2?=
 =?us-ascii?Q?58Lsk72CLfJNwIZqgo8I//yJXTk6NncBCc3CBMydkSiRZQaP//79h3xd/sP1?=
 =?us-ascii?Q?fHB72j+whk7A2zPrfCmZihOZGkNGVMlNYeOKjIX1BigRkvuTatat2NBMtfYG?=
 =?us-ascii?Q?4vE60RP5Qri66BvpgdLh+1vesRaOy1apW953/4HuYkfzISxg7BOQZW14lQYI?=
 =?us-ascii?Q?NdR2kxyr3YknfnjXk6VJIwK+lcBhaeNgXWN97TwjHk7Ye0RKd8+fE5wrqO89?=
 =?us-ascii?Q?mXTmZAllqycCiL0nXGekWbGCwSummRbjAqfuZ3aZrJwyyhOfoxzBTVMaK6ZB?=
 =?us-ascii?Q?oqxYLL6UtxIECedcVYsO8ze1un3+ItlxkBcDBPGPptgCi46r0GC4A4aTmdqJ?=
 =?us-ascii?Q?1uka9rsEf/B6wuzLBY7m2N7g7m+UbpewCG0ZWJyF03IHydeA4vLfY/5nBG9I?=
 =?us-ascii?Q?I2PbpirMj6ZyJ8bainoeVekmkRaXIVl4E3ZelPeZBAyAnc3B9eFNj0DsSsFC?=
 =?us-ascii?Q?h6WAl4T6auUVYVMOgtqNhw+36Bx9Q9Nf375i4NksHqsQS6Go08EfCYoOUy9q?=
 =?us-ascii?Q?mhs1OlFcjiaFN3vwyD1PmbTTgVZFGGchr8+rBqOTBjUtmE4i0XcygDljV3vY?=
 =?us-ascii?Q?M39riJpEG9wzP/Q44fL5VTLV/r/5P2UiR/C0REGPnpZh6Qrpax3YB8txs2CH?=
 =?us-ascii?Q?MljmpBH4oKjnp38Pp5Ch2LJfCxVKVqibUcUgYz/H19yrKmZBZtxGx4PLH67E?=
 =?us-ascii?Q?2iLK7og/KiiflTWaraIU8E0I5OQMoJqCcbzh1kM53wdhWX3QG5ZQVK81AaD5?=
 =?us-ascii?Q?tSqa82zoV5ZI19kxp0oZwrqKdugdK8PRjC3VH88XI/vs6xIL9Sm/OQ1PWmlf?=
 =?us-ascii?Q?u3rHNM9waBsFdWod7g2oRp+MNll/+t/fYHBP7TZeNBAficNP7aWcdjcq9F8A?=
 =?us-ascii?Q?eaRDI5gcQMdxsYd9TWkuz9T3OQJ76s546L3/YKmBbIb0Fu4IHoCfvoDXzMVU?=
 =?us-ascii?Q?IVeXJwy29jbCgLj8mR9W/tSW5mnn10T9jq/qifjw6W+sEgtgmOy9OuPbQDWh?=
 =?us-ascii?Q?QT11H2M2vRy4+9Iuc2mDidFIzX0SCoWsZvtgC0hwq0SAFI3FvzDDMV36jH1a?=
 =?us-ascii?Q?ioTPOQkf0G5LOB28x114wK37ZDrSD/TsQPQnRVv7XA9quEMxLQKTwRACTsfo?=
 =?us-ascii?Q?BFWHCgnwDgs5iho3gaV9os0dvJ6flvjyrrDsmqC/KG/cEGpU28HfEZPc3Y3B?=
 =?us-ascii?Q?6urY3Ekma2WTItMR897uGuUT0+btpiH8dv8u4q2onKSwOExY2V6YiAYuuogy?=
 =?us-ascii?Q?myHyjJTJ5EXC/+7a9U5VW36SLkVLIzDr9oJLmaXiEpxsvp2Mv++Du5csA1Pn?=
 =?us-ascii?Q?I4zjRWoolAM=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PR0P264MB4464.FRAP264.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(7416014)(376014)(921020)(38070700018);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?iHRaUEf4CPkxlTCT/B1IKefE9x6OC5rMWTbCcxqnb1C94A5GTi0coovw4qXK?=
 =?us-ascii?Q?zy/3NpU0Y/YhROerXQtvSJ2423zup23LzZKRbtDtZ3XJVMvIPYrocehZ+yVE?=
 =?us-ascii?Q?0hF7VD6aIojWUOfExXtT51mNv8dfB7wA1InVQuuZfedi653jYs6I/Q1KVjEb?=
 =?us-ascii?Q?P1NfiykrGX0C1wuw98Rkyjavp0Jua1NoAsJvF1/eK66odmkQHLisw49aHjX2?=
 =?us-ascii?Q?xII559fskT/AWCZ9SR2lR0CkNY//Vh9Vt5KV9IPo2+D3PtN4DzIpg4Mc+BNc?=
 =?us-ascii?Q?2GaZsNqAK+dmxUQsPsWbIHWT2snYt2N2XMYYGPh3rzBFHbEXZ6BRJGT4Qp6b?=
 =?us-ascii?Q?gwK1pZS2iyPKRtL3mma71UAyiakBFoiMgpavK6AeEA5W19yk89lPLJYPzOPG?=
 =?us-ascii?Q?D1x2lRcQZp7X+ys0WS144wltVNGPfmHYqRurOJ4aTiVveKA+zViu6+3/k6kA?=
 =?us-ascii?Q?dMmLK+L5wIJVzmcuH8/KVr9GXmD/CkOYxGiIvSUo9OYKCxBctoWpA/o0OGE/?=
 =?us-ascii?Q?I32vf/nB8HdpAM9XZ9VNmZckU2Bye939FfyA0FENJdrifCc2o6fKHqByqL2w?=
 =?us-ascii?Q?0ueMrE8km2fUjXpWA6yy1ga199AH7/tJ0LI+DazFhT3CGy9i21bmS3VaX0wP?=
 =?us-ascii?Q?+4OS9zgFhHmJtv6uTc9Q7sp5qf7t7MKi/k+k/bPuGb0UMlCbhqHa8vbf/6mM?=
 =?us-ascii?Q?a1lifDEnhHGvBGSDShvTWnjhgTiYtux3xnqq8KxuZfiKQM44GDiB67y1JjHr?=
 =?us-ascii?Q?UQVaimS2jkZqwSvvHYSJDwpE02qjuD/G4k7kelAbYRGSGDdTFklJiDafgNZ8?=
 =?us-ascii?Q?IE9Q66U+wYfPKL7vfDzErTprA0em4HqP7F2DqrGjtVaQArVztDgFtUmXmT1p?=
 =?us-ascii?Q?VRXGSIR7neS4ImBmbliOJAszBKgs21sJmqBjtD1FJ/CkOGo64uMJHIMj7dH8?=
 =?us-ascii?Q?CY6LOETEUv19wXv8ZCjTTrzJu73Zpaa/a33kmzIl5aOrUWuFEtw9dA+Cg5Ez?=
 =?us-ascii?Q?4TXFaJLcOj9Nljc8yfyxTNmAH7DwM/AlR+1kGwrUO54wWVy0mxBPeOc7+jXa?=
 =?us-ascii?Q?E+xyHZP1bbUw68z2bpW9xhRqckGWnJ1GaxEwRY49X3MvMo2VBSVybnUL6SYq?=
 =?us-ascii?Q?Td/qS9UIcQJz1ZHZhwj77kiemo95be4R1JqIsIpQ4sNS7BT/NGXMAw/HOo/Z?=
 =?us-ascii?Q?grPiqVUNjFyKiY1nD6EuhFNU8TY2QOYHwUg+zXXsKHAJR5PCPXkdJ6S0DfgM?=
 =?us-ascii?Q?ECX2qH8BP68CCFS+dTPDY6IgG8dlKgxVT5zrhNtGL/EF1YqVJzGk4Ztmmi85?=
 =?us-ascii?Q?7BT6XZatQClZSqF9QYemJaBXbWyLZDpCCH69+AIkwf0ZCEblGe2m58LOcmnZ?=
 =?us-ascii?Q?CTwMkiKPY3Fvx2CF55+xlvLr6bF1JXVimUd0xrf7OhW7B0Mbw8zE3eH5SXGz?=
 =?us-ascii?Q?lAi46aZKlb/G4oRQ0W3emXz2J2abutyVkqlqQwXMGYRvrHogO3xtvvq6byHB?=
 =?us-ascii?Q?odLG/Mbla/bxgPsbxQIA4kGTrfvKHF28lczSkbO3KSqV7AElPSGPAWO2rzIZ?=
 =?us-ascii?Q?3udRJ6k6izSqjc9Z46m4baPD8PlcW2ZJbPhhBU9ul1J+7LtWRnaz4qIzpFeM?=
 =?us-ascii?Q?wW8u9KcHiIThxw39qgiZylfFWQ2zu0t3jG5QvEdggm8CZ/x2GZI5X8Xb0Hho?=
 =?us-ascii?Q?/rvVUQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: l-acoustics.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PR0P264MB4464.FRAP264.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 3f8e59ba-c173-4205-219f-08dca56f27ee
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jul 2024 08:13:20.9170 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 68e431e8-d632-483e-ae79-f28a7b4c69e6
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: h107inzrFkUgfErAxOMNAkL+FOvNv3+XTNuSF60AClQXzQUQT3oKme4XVAFQe8IajibStN1Ex55FHcMp974RfBP9MTpbTGeDWtqttUnu01o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MRZP264MB2199
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=l-acoustics.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=S+TU6gobIcaApdVQDMwhuoAogtPGqqjAOPH2QJylr30=;
 b=UVKJBrIfqUGDELSnkjKgtepQR9dVuUPMtnaPVgUuFtD0DB6SV0/DQGjoLxwDmbyX74hTR+WiZowh56wg01RRBWCXZnGX8jYbJoo7Q7fUkaXH+fNG9YVhnDlnsuSenh70QSrYjHcTVSHlq7+PhIdirTPv/mRh/8Va9iEZxlx5LY8=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=l-acoustics.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=l-acoustics.com header.i=@l-acoustics.com
 header.a=rsa-sha256 header.s=selector1 header.b=UVKJBrIf
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=l-acoustics.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] igc: Ensure PTM request is
 completed before timeout has started
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Vinicius Costa Gomes <vinicius.gomes@intel.com> writes:=20

> From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
>=20
> Rodrigo Cataldo via B4 Relay
> <devnull+rodrigo.cadore.l-acoustics.com@kernel.org> writes:
>=20
> > From: Rodrigo Cataldo <rodrigo.cadore@l-acoustics.com>
> >
> > When a PTM is requested via wr32(IGC_PTM_STAT), the operation may only
> > be completed by the next read operation (flush). Unfortunately, the nex=
t
> > read operation in the PTM request loop happens after we have already
> > started evaluating the response timeout.
> >
> > Thus, the following behavior has been observed::
> >
> >   phc2sys-1655  [010]   103.233752: funcgraph_entry:                   =
 |
> igc_ptp_getcrosststamp() {
> >   phc2sys-1655  [010]   103.233754: funcgraph_entry:                   =
 |
> igc_phc_get_syncdevice_time() {
> >   phc2sys-1655  [010]   103.233755: funcgraph_entry:                   =
 |      igc_rd32()
> {
> >   phc2sys-1655  [010]   103.233931: preempt_disable:
> caller=3Dirq_enter_rcu+0x14 parent=3Dirq_enter_rcu+0x14
> >   phc2sys-1655  [010]   103.233932: local_timer_entry: vector=3D236
> >   phc2sys-1655  [010]   103.233932: hrtimer_cancel:
> hrtimer=3D0xffff8edeef526118
> >   phc2sys-1655  [010]   103.233933: hrtimer_expire_entry:
> hrtimer=3D0xffff8edeef526118 now=3D103200127876
> function=3Dtick_nohz_handler/0x0
> >
> >   ... tick handler ...
> >
> >   phc2sys-1655  [010]   103.233971: funcgraph_exit:       !  215.559 us=
 |      }
> >   phc2sys-1655  [010]   103.233972: funcgraph_entry:                   =
 |      igc_rd32()
> {
> >   phc2sys-1655  [010]   103.234135: funcgraph_exit:       !  164.370 us=
 |      }
> >   phc2sys-1655  [010]   103.234136: funcgraph_entry:         1.942 us  =
 |
> igc_rd32();
> >   phc2sys-1655  [010]   103.234147: console:              igc 0000:03:0=
0.0 enp3s0:
> Timeout reading IGC_PTM_STAT register
> >
> > Based on the (simplified) code::
> >
> >       ctrl =3D rd32(IGC_PTM_CTRL);
> >         /* simplified: multiple writes here */
> >       wr32(IGC_PTM_STAT, IGC_PTM_STAT_VALID);
> >
> >       err =3D readx_poll_timeout(rd32, IGC_PTM_STAT, stat,
> >                                stat, IGC_PTM_STAT_SLEEP,
> >                                IGC_PTM_STAT_TIMEOUT);
> >       if (err < 0) {
> >               netdev_err(adapter->netdev, "Timeout reading IGC_PTM_STAT
> register\n");
> >               return err;
> >       }
> >
> > Where readx_poll_timeout() starts the timeout evaluation before calling
> > the rd32() parameter (rd32() is a macro for igc_rd32()).
> >
> > In the trace shown, the read operation of readx_poll_timeout() (second
> > igc_rd32()) took so long that the timeout (IGC_PTM_STAT_VALID) has expi=
red
> > and no sleep has been performed.
> >
> > With this patch, a write flush is added (which is an additional
> > igc_rd32() in practice) that can wait for the write before the timeout
> > is evaluated::
> >
> >   phc2sys-1615  [010]    74.517954: funcgraph_entry:                   =
 |
> igc_ptp_getcrosststamp() {
> >   phc2sys-1615  [010]    74.517956: funcgraph_entry:                   =
 |
> igc_phc_get_syncdevicetime() {
> >   phc2sys-1615  [010]    74.517957: funcgraph_entry:                   =
 |      igc_rd32() {
> >   phc2sys-1615  [010]    74.518127: preempt_disable:
> caller=3Dirq_enter_rcu+0x14 parent=3Dirq_enter_rcu+0x14
> >   phc2sys-1615  [010]    74.518128: local_timer_entry: vector=3D236
> >   phc2sys-1615  [010]    74.518128: hrtimer_cancel:
> hrtimer=3D0xffff96466f526118
> >   phc2sys-1615  [010]    74.518128: hrtimer_expire_entry:
> hrtimer=3D0xffff96466f526118 now=3D74484007229 function=3Dtick_nohz_handl=
er/0x0
> >
> >   ... tick handler ...
> >
> >   phc2sys-1615  [010]    74.518180: funcgraph_exit:       !  222.282 us=
 |      }
> >   phc2sys-1615  [010]    74.518181: funcgraph_entry:                   =
 |      igc_rd32() {
> >   phc2sys-1615  [010]    74.518349: funcgraph_exit:       !  168.160 us=
 |      }
> >   phc2sys-1615  [010]    74.518349: funcgraph_entry:         1.970 us  =
 |
> igc_rd32();
> >   phc2sys-1615  [010]    74.518352: hrtimer_init: hrtimer=3D0xffffa6f94=
13a3940
> clockid=3DCLOCK_MONOTONIC mode=3D0x0
> >   phc2sys-1615  [010]    74.518352: preempt_disable:
> caller=3D_raw_spin_lock_irqsave+0x28 parent=3Dhrtimer_start_range_ns+0x56
> >   phc2sys-1615  [010]    74.518353: hrtimer_start: hrtimer=3D0xffffa6f9=
413a3940
> function=3Dhrtimer_wakeup/0x0 expires=3D74484232878 softexpires=3D7448423=
1878
> >
> >   .. hrtimer setup and return ...
> >
> >   kworker/10:1-242   [010]    74.518382: sched_switch: kworker/10:1:242=
 [120]
> W =3D=3D> phc2sys:1615 [120]
> >   phc2sys-1615  [010]    74.518383: preempt_enable: caller=3Dschedule+0=
x36
> parent=3Dschedule+0x36
> >   phc2sys-1615  [010]    74.518384: funcgraph_entry:      !  100.088 us=
 |
> igc_rd32();
> >   phc2sys-1615  [010]    74.518484: funcgraph_entry:         1.958 us  =
 |
> igc_rd32();
> >   phc2sys-1615  [010]    74.518488: funcgraph_entry:         2.019 us  =
 |
> igc_rd32();
> >   phc2sys-1615  [010]    74.518490: funcgraph_entry:         1.956 us  =
 |
> igc_rd32();
> >   phc2sys-1615  [010]    74.518492: funcgraph_entry:         1.980 us  =
 |
> igc_rd32();
> >   phc2sys-1615  [010]    74.518494: funcgraph_exit:       !  539.386 us=
 |    }
> >
> > Now the sleep is called as expected, and the operation succeeds.
> > Therefore, regardless of how long it will take for the write to be
> > completed, we will poll+sleep at least for the time specified in
> > IGC_PTM_STAT_TIMEOUT.
> >
> > Fixes: a90ec8483732 ("igc: Add support for PTP getcrosststamp()")
> > Signed-off-by: Rodrigo Cataldo <rodrigo.cadore@l-acoustics.com>
> > ---
> > I have been searching for the proper solution for this PTM issue for a =
long
> > time. The issue was observed on a 13700 (Raptor Lake). We also use a 85=
00
> > (Coffee Lake) that is much less susceptible for this issue, but still
> > happens. Both are using I225-LM cards.
> >
> > For a 24 hours test, idle system, I have observed with 13700::
> >
> >       number of timeouts in 86400 seconds: 2509
> >
> > The same test on a 8500::
> >
> >         number of timeouts in 86400 seconds: 9
> >
> > Where one PTM request is sent per second. Test was done this script::
> >
> >   record_multiple_timeout_param()
> >   {
> >       local taskset_cpu=3D$1
> >       local cur_limit=3D$((SECONDS + LIMIT_SECONDS ))
> >       local timeouts=3D0
> >
> >       while [ $SECONDS -lt $cur_limit ]
> >       do
> >               REL_TO=3D$((cur_limit - SECONDS))
> >
> >               timeout $REL_TO taskset $taskset_cpu \
> >                       phc2sys -c $ITF_NAME -s CLOCK_REALTIME -O 37 -m 1=
>/dev/null
> >               if [ $? -eq 255 ]; then
> >                       timeouts=3D$((timeouts + 1))
> >               fi
> >       done
> >       printf "\tnumber of timeouts in %s seconds: %d\n" $LIMIT_SECONDS
> $timeouts
> >   }
> >
> >   record_multiple_timeout_param $NON_ISOLCPU_MASK
> >
> > Firmware version for the cards::
> >
> >   # lshw -class network -json | jq '.[0].product,.[0].configuration.fir=
mware'
> >   "Ethernet Controller I225-LM"
> >   "1057:8754"
> >
> >   # lshw -class network -json | jq '.[2].product,.[2].configuration.fir=
mware'
> >   "Ethernet Controller I225-LM"
> >   "1057:8754
> >
> > A couple of attempts were made that did not lead to solving the
> > issue (disabling ASPM in kernel and boot, using periodic tick), and a c=
ouple
> > of solutions that worked but that were subpar:
> >
> > 1. The issue was not observed for a phc2sys(8) running on a fully
> >    isolated nohz_full core. We do not have the luxury of dedicating a a
> >    core for it.
>=20
> This one is interesting. Was it because the isolated CPU never got to
> sleep and readx_poll_timeout() became a busy loop? I am trying to fit
> this one on my mental model.

Hello Vinicius! thank you for the reply.
Actually, in the isolation case, it is the opposite! the CPU always sleeps.
Which is good in this scenario.. More specifically, this is because the=20
request always arrives 'quickly' in the device with the rd32() after=20
readx_poll_timeout(). As long as the rd32() is 'quick', you have time to sl=
eep.

This 'quickly' reference is about the 'power-saving' hypothesis I mention
below. Since the CPU is isolated, it is never interrupted, so I do not obse=
rve
the 'slow' rd32() in readx_poll_timeout().

In the end, the idea of this patch is to insert the write flush for avoidin=
g this=20
'quickly' or 'slowly' rd32() inside readx_poll_timeout().

>=20
> > 2. Bumping the IGC_PTM_STAT_TIMEOUT value. Other machines may need
> >    another value though.
>=20
> This one is not horrible as well. Some value like 400us comes to mind.
>=20
> Your proposed fix looks fine as well, I was thinking a bit about it, and
> even if it's more a like a timing issue than "the absolutely correct
> fix", there are little chances for bad side effects.
>=20
> If there aren't any other ideas, I am fine with this:
>=20
> Acked-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>

Thank you for the Ack!
I can test with a 400us. It should work fine.

(I talked with some of your intel colleagues before sending the patch, and =
there is=20
supposed to be a patch response here with (another?) PTM solution. We will =
see :)

>=20
> > 3. Retry (multiple times) readx_poll_timeout() in case of failure. This=
 may
> >    significantly increase the function latency, because each
> >    readx_poll_timeout() can take more than 100 us.
> > 4. Disabling preemption during the PTM request. Horrible.
> >
>=20
> I wonder if you tried moving the I225 to the graphics card PCIe slot, or
> is it an onboard card? IIRC there are different PCIe controllers for the
> graphics slot vs. the other ones, at least on Coffee Lake.
>=20

I was only able to come to the lab yesterday, hence why I did not answer be=
fore.

It is true, I was not using the graphic card slot. So, I changed from the P=
CIe root
1c.4/1c.7 to 01 (for both machines)

I'm running the 24-hour test again.  Here are the results

For Raptor Lake (13700), PCIe root 01 (width x16, 32GT/s)::
    # dmesg | grep "Timeout reading IGC_PTM_STAT register" | wc -l
    514
    $ ps -eo user,pid,lstart,comm | grep 1797
    root        1797 Mon Jul 15 11:32:03 2024 ptm_timeout.sh
    $ date=20
    Tue Jul 16 10:02:48 AM CEST 2024

514 timeouts for ~23h. The issue persists.

For Coffee Lake (8500), I was surprised to see this::
    # dmesg | grep PTM
    [    0.412210] pci 0000:00:1c.0: PTM enabled (root), 4ns granularity
    [    0.413769] pci 0000:00:1c.7: PTM enabled (root), 4ns granularity
    [    0.415250] pci 0000:00:1d.0: PTM enabled (root), 4ns granularity
    [    1.353468] igc 0000:01:00.0: PCIe PTM not supported by PCIe bus/con=
troller

It seems PCIe root 01 does not support PTM.

There is something else I want to mention. We aim to support redundancy mod=
e
for AVB, where we will likely use two PCIe slots; so, one of them would not=
 use the
graphic card slot.

> > For the Coffee Lake machine, the issue tends to be avoided because the
> > read does not take so long. Here is basically the same trace using the
> > Cofee Lake machine::
> >
> >   phc2sys-1204  [002]  1778.220288: funcgraph_entry:                   =
 |
> igc_ptp_getcrosststamp() {
> >   phc2sys-1204  [002]  1778.220290: funcgraph_entry:                   =
 |
> igc_phc_get_syncdevicetime() {
> >   phc2sys-1204  [002]  1778.220291: funcgraph_entry:                   =
 |      igc_rd32()
> {
> >   phc2sys-1204  [002]  1778.220373: preempt_disable:
> caller=3Dirq_enter_rcu+0x14 parent=3Dirq_enter_rcu+0x14
> >   phc2sys-1204  [002]  1778.220374: local_timer_entry: vector=3D236
> >   phc2sys-1204  [002]  1778.220375: hrtimer_cancel:
> hrtimer=3D0xffff894027326118
> >   phc2sys-1204  [002]  1778.220376: hrtimer_expire_entry:
> hrtimer=3D0xffff894027326118 now=3D1778228034802
> function=3Dtick_nohz_handler/0x0
> >
> >   ... tick handler ...
> >
> >   phc2sys-1204  [002]  1778.220411: funcgraph_exit:       !  119.843 us=
 |      }
> >   phc2sys-1204  [002]  1778.220412: funcgraph_entry:                   =
 |      igc_rd32()
> {
> >   phc2sys-1204  [002]  1778.220492: funcgraph_exit:       + 80.094 us  =
 |      }
> >   phc2sys-1204  [002]  1778.220493: funcgraph_entry:        2.951 us   =
 |
> igc_rd32();
> >   phc2sys-1204  [002]  1778.220497: hrtimer_init: hrtimer=3D0xffffa504c=
0d83aa0
> clockid=3DCLOCK_MONOTONIC mode=3D0x0
> >   phc2sys-1204  [002]  1778.220498: preempt_disable:
> caller=3D_raw_spin_lock_irqsave+0x28 parent=3Dhrtimer_start_range_ns+0x56
> >   phc2sys-1204  [002]  1778.220499: hrtimer_start:
> hrtimer=3D0xffffa504c0d83aa0 function=3Dhrtimer_wakeup/0x0
> expires=3D1778228158866 softexpires=3D1778228157866
> >
> >   ... timer setup ....
> >
> >   phc2sys-1204  [002]  1778.220509: preempt_enable:
> caller=3D_raw_spin_unlock_irqrestore+0x2b parent=3Dhrtimer_start_range_ns=
+0x12d
> >   phc2sys-1204  [002]  1778.220511: funcgraph_entry:        7.338 us   =
|
> igc_rd32();
> >   phc2sys-1204  [002]  1778.220519: funcgraph_entry:        2.769 us   =
|
> igc_rd32();
> >   phc2sys-1204  [002]  1778.220522: funcgraph_entry:        2.798 us   =
|
> igc_rd32();
> >   phc2sys-1204  [002]  1778.220525: funcgraph_entry:        2.736 us   =
|
> igc_rd32();
> >   phc2sys-1204  [002]  1778.220529: funcgraph_entry:        2.750 us   =
|
> igc_rd32();
> >   phc2sys-1204  [002]  1778.220532: funcgraph_exit:       !  242.656 us=
 |    }
> >
> > For both machines, I observed that the first igc_rd32() after an idle
> > period (more than 10us) tends to take significantly more time. I assume
> > this is a hardware power-saving technique, but I could not find any
> > mention in the manuals. This is very easily observable with an idle
> > system running phc2sys, since it will request only once every second.
> >
> > This is the typical trace of the operation::
> >
> >   phc2sys-1204  [002]  1749.209397: funcgraph_entry:                   =
|
> igc_ptp_getcrosststamp() {
> >   phc2sys-1204  [002]  1749.209398: funcgraph_entry:                   =
|
> igc_phc_get_syncdevicetime() {
> >   phc2sys-1204  [002]  1749.209400: funcgraph_entry:      + 81.491 us  =
|
> igc_rd32();
> >   phc2sys-1204  [002]  1749.209482: funcgraph_entry:        3.691 us   =
|
> igc_rd32();
> >   phc2sys-1204  [002]  1749.209487: funcgraph_entry:        2.942 us   =
|
> igc_rd32();
> >   phc2sys-1204  [002]  1749.209490: hrtimer_init: hrtimer=3D0xffffa504c=
0d83a00
> clockid=3DCLOCK_MONOTONIC mode=3D0x0
> >   phc2sys-1204  [002]  1749.209491: preempt_disable:
> caller=3D_raw_spin_lock_irqsave+0x28 parent=3Dhrtimer_start_range_ns+0x56
> >   ... timer setup and it goes on like before ...
> >
> > The preemption needs to happen for this issue, so that this power-savin=
g
> > mode is triggered, making the igc_rd32 'slow enough' so that all of the
> > timeout is consumed before the card has time to answer.
> >
> > I believe flushing the write solves the issue definitely, since the
> > write should be completed before the timeout has started. So that, even
> > if the timeout is consumed by a slow read operation, the write has been
> > received before and the card had time to process the request.
> > ---
> >  drivers/net/ethernet/intel/igc/igc_ptp.c | 4 ++++
> >  1 file changed, 4 insertions(+)
> >
> > diff --git a/drivers/net/ethernet/intel/igc/igc_ptp.c
> b/drivers/net/ethernet/intel/igc/igc_ptp.c
> > index 1bb026232efc..d7269e4f1a21 100644
> > --- a/drivers/net/ethernet/intel/igc/igc_ptp.c
> > +++ b/drivers/net/ethernet/intel/igc/igc_ptp.c
> > @@ -1005,6 +1005,10 @@ static int igc_phc_get_syncdevicetime(ktime_t
> *device,
> >                * VALID bit.
> >                */
> >               wr32(IGC_PTM_STAT, IGC_PTM_STAT_VALID);
> > +             /* Ensure the hardware receives the ptm request before th=
e
> > +              * response timeout starts.
> > +              */
> > +             wrfl();
> >
> >               err =3D readx_poll_timeout(rd32, IGC_PTM_STAT, stat,
> >                                        stat, IGC_PTM_STAT_SLEEP,
> >
> > ---
> > base-commit: 0005b2dc43f96b93fc5b0850d7ca3f7aeac9129c
> > change-id: 20240705-igc-flush-ptm-request-before-timeout-6-10-f6e02c96f=
6d4
> >
> > Best regards,
> > --
> > Rodrigo Cataldo <rodrigo.cadore@l-acoustics.com>
> >
> >
>=20
>=20
> Cheers,
> --
> Vinicius
