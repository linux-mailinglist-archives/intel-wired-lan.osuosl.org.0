Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GPbIMl8qimm6HwAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 09 Feb 2026 19:41:35 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E36ED113AE7
	for <lists+intel-wired-lan@lfdr.de>; Mon, 09 Feb 2026 19:41:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8D355401A2;
	Mon,  9 Feb 2026 18:41:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WPIW7niXNoDi; Mon,  9 Feb 2026 18:41:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A984F401F3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770662488;
	bh=JggTqoBrwZBNqHzWyp0HVtMk9xzpBEA4L9eOkSRHggg=;
	h=From:To:CC:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=LmK9PXT+Zlu6Agw2wM+LwziSUWG6wtAW9QSNtphNP96bGXm2bZLrCkQng3g6nNd0f
	 PtF/kfl9QOLH8pw0IDgZBAfwtyapwMsPuSE2umhWGyYxV2fxhSQtwrHICy62btupiL
	 I7uj3k/dxBlrrxX0kLVj3gklDSVyYK/pUR8j7b7iZjGp4NvaPM3XIrb/CkqiOWHIaS
	 yesWwSAbA9hOe2vEbkUkxOh1AhWFOnz92++wVKf0m1JN8gGCHDBFamyAH8mkG3cgYW
	 CprCdWb+wijfMMYUCl9Ygv0bW2snLPAY6E4T1CVuyGq0+Jb2zIW+6FcqVDLbkP7Pcn
	 rFQZCB2ZIYLyw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id A984F401F3;
	Mon,  9 Feb 2026 18:41:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 233E02A2
 for <intel-wired-lan@lists.osuosl.org>; Sun,  8 Feb 2026 12:33:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 09ED340829
 for <intel-wired-lan@lists.osuosl.org>; Sun,  8 Feb 2026 12:33:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CKbjm_x1Q2A3 for <intel-wired-lan@lists.osuosl.org>;
 Sun,  8 Feb 2026 12:33:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=52.103.7.19;
 helo=cy7pr03cu001.outbound.protection.outlook.com;
 envelope-from=harshankmatkar1304@outlook.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 5DC6340816
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5DC6340816
Received: from CY7PR03CU001.outbound.protection.outlook.com
 (mail-westcentralusazolkn19010019.outbound.protection.outlook.com
 [52.103.7.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5DC6340816
 for <intel-wired-lan@lists.osuosl.org>; Sun,  8 Feb 2026 12:33:33 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yfxAXr1i1CRWqJfXppsQa5Ssye2Q1pERb6uG0cLyPRLfsoRuAtCWICiBBgzn+EveQwIr1rSlpbJCySIIyx0Y57o0mRF9q8T+AraSl0fYehqAi9j5tGEzlWkMLFt+9Z927s43blIXynVGaIGnQbmYt8ZTjJ4OkBYJu428ECBU6w+8Diag3sbXoK39cgJIsRKEJFBwAzctuKhcfugIrVdXrCA32p2FuCjND+SL5sK6J6LQeCS4UJhjLcA9/VrbEAJzGAcm8IlYtEA9jYuP+Be5vYSGQKhgwuhhxSED8fpagr7zVvA3UFLs+ecJoaj1MdgZDcO4cMQcY/vkDZqK7b7LkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JggTqoBrwZBNqHzWyp0HVtMk9xzpBEA4L9eOkSRHggg=;
 b=EVygxfzEZFIvNXkONNl8WMjpm0ZYl3L+LKEkstqWBTOgzI//fqSU5dY/Ft/1P6mj+Faxr0MC6DJzLdWXSSxFVaTO3eqNAuhHNG0au5FB5X5KfGnY6M9D759fLVQ+l5sYMAu3DgndvpbfJs8biLxDKAqwBtifeH7Pu3DQPg7xRRR7FFiktBUuA+bbgWQv/ijsuyacTLcId7/YAzR6BVmJ3NIhm3NZkTyKZ5MFSoDKKKJxOT3vOqKoj2t2t9uy3Edje6UOrOwnZKaSLL6AnlEkaLL6E3411kUsC97f+bvU5VkdZB8q2q6abfL51VfDzFvKF3ekOucTWB8iCJkbboX4Tw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from MN2PR14MB2638.namprd14.prod.outlook.com (2603:10b6:208:cc::16)
 by SAWPR14MB958172.namprd14.prod.outlook.com (2603:10b6:806:4ea::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.18; Sun, 8 Feb
 2026 12:33:30 +0000
Received: from MN2PR14MB2638.namprd14.prod.outlook.com
 ([fe80::101a:ee9b:a260:5e50]) by MN2PR14MB2638.namprd14.prod.outlook.com
 ([fe80::101a:ee9b:a260:5e50%6]) with mapi id 15.20.9587.017; Sun, 8 Feb 2026
 12:33:30 +0000
From: Harshank Matkar <harshankmatkar1304@outlook.com>
To: "anthony.l.nguyen@intel.com" <anthony.l.nguyen@intel.com>
CC: "przemyslaw.kitszel@intel.com" <przemyslaw.kitszel@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Thread-Topic: [PATCH] igc: Add PCIe link recovery for I225/I226
Thread-Index: AQHcmPRoRFslS/JtjUu2hVBnd7mLkw==
Date: Sun, 8 Feb 2026 12:33:30 +0000
Message-ID: <MN2PR14MB263885081E3A4C87043676CFDE64A@MN2PR14MB2638.namprd14.prod.outlook.com>
Accept-Language: en-IN, en-US
Content-Language: en-IN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-reactions: allow
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MN2PR14MB2638:EE_|SAWPR14MB958172:EE_
x-ms-office365-filtering-correlation-id: d677758e-b23a-434e-c71b-08de670e4468
x-microsoft-antispam: BCL:0;
 ARA:14566002|461199028|31061999003|41001999006|8060799015|8062599012|19110799012|15080799012|12121999013|12050799012|20031999003|39105399006|9400799043|55001999003|14030799003|5062599005|1602099012|40105399003|440099028|4302099013|3412199025|10035399007|102099032;
x-microsoft-antispam-message-info: =?iso-8859-7?Q?FYch+Pv02QhnDFMzNBf2Hb0YFS+KQchj4lPYotOm7edbbkl+7SkfhyEFgR?=
 =?iso-8859-7?Q?1Xxz3fRV70hqj5HS86+fQ37v6ELR2HolFC1kMDsz8CVd6zX/YRg92EgnML?=
 =?iso-8859-7?Q?Wo6Q+s+PSq+3QfZznJC1u+ylgmTSnH542MGYxvkkx0eD0MMLuFYtuVUd4F?=
 =?iso-8859-7?Q?PiN0xIRGTsgQcStPYRhVYWF4sNlaKp3hDuEv14akuDJZ8Ck3c1abpZ/i9T?=
 =?iso-8859-7?Q?kBYtEv6AL5NkV0cuAjlLHNIKhOOH8NHIa9UjOQ+Kvnl2OTkt1HIr0Mv36R?=
 =?iso-8859-7?Q?9e11pXZQ7KLZALo4r12sOSkyMzW7lzdS5OZEXh7UhdznE4yxnQzMOwWe9A?=
 =?iso-8859-7?Q?lByYrKd+j1e7+0vE0+8DT1uuOJ1ymCumpYvVOzV5wxWyDrj+9xnMleyRuA?=
 =?iso-8859-7?Q?oki8rsxBpEg0/eDL6CnoVG/niO5E3K/bmY4RZXNc8nUY5FImTnjQPiZGdV?=
 =?iso-8859-7?Q?KLoHjg8kSPJDVw8+LPBolBOVVt+RfcMKOS8UOwcKpmoPpLGjvydb4o99gw?=
 =?iso-8859-7?Q?7ixg1lSJtSZXsztWx+84b6ZNhQW1djGx2NTFzdjCGqPKvA+WMmTtaxtANG?=
 =?iso-8859-7?Q?uMa2JB+K0sOlwPWTZOQiy49I0nm4hDo/1MvydvZmrWoVOQ1hWSroVUkMSU?=
 =?iso-8859-7?Q?EB21VE4RFv4+IvemKw3Til+veppUpOtoiu7FWpRRlzVr0io/XAEh98H7Jg?=
 =?iso-8859-7?Q?bVSo2e4UAzu5n1x8Fy90ipTE6C6xsWoae9guELtKwNvm2l4V5rEyZSPY5m?=
 =?iso-8859-7?Q?jTeQOKgDcZDFcQS8moR6vFMvQvBDS4peNLdfe9U2THX/Er4ORF5oh2bXxc?=
 =?iso-8859-7?Q?9DZ4o6xD7UG90qYsX+TYG4TQpu150dzF26BnSdcchaIHBpcod8JpKBaqd5?=
 =?iso-8859-7?Q?5nH55Qh9HS0SV+hlsrcY55oAI7sASlCs99saLdU7REscb+8k8dvDvP6oK4?=
 =?iso-8859-7?Q?elTH5RkQl7SwAN2AAm0cyi1YQo58eeXzgkVazL7OKT/WWcn8jSOIgxOiJ/?=
 =?iso-8859-7?Q?q7jrFhTL9RzIY3+pb2OmG3IUuoOaZAcpJDfE6N/ihzbQezg0LDFAgFkm6s?=
 =?iso-8859-7?Q?H5I5T+ZNRvUX2rqL856flk1vu5K30b4Y5ckQPbjNq4L5Y3nH/TjbP5ytSB?=
 =?iso-8859-7?Q?7LOuOerLW8JeO+SE9pwMmoxpMnJbS9gLec8H7jyiUWz01It//KYVrShNzu?=
 =?iso-8859-7?Q?V4qBB60W1jEAX/t2z8rnAfgR3jl3GwmtDZm3eJ9UFQVbj9fo4NApCEYRj4?=
 =?iso-8859-7?Q?IdvuWa+f9cCJowiQvaZJ3MUi/+bkiqs73YYIhmn3AZypQxJlPng5uvgqPC?=
 =?iso-8859-7?Q?RX+zaNN+A8fTWGAYqO2AgDwEUc9CbCGQjXyIcSo68Ejqkhx4RRJkWgRDiZ?=
 =?iso-8859-7?Q?ZihybjLlqoOiTSpL25LpUieTYaETzY+ebpa1z5ej7AFOuSKziWqH93wesO?=
 =?iso-8859-7?Q?dTRDoYm7viINW+eXH6sA3kZMBF8d4wbKVHqcLNAqhEq7Ch8XNy0D2fzj90?=
 =?iso-8859-7?Q?ou/0FlmEaUgWLAdvgBpUuDZLFdFya5/k3/yod9EG6vKUtkCA9G4UrOLqIi?=
 =?iso-8859-7?Q?YpLzE6OVteoTi4/S5qpfx1XOeikN?=
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-7?Q?ad2lLtk2zU4FspYvAbzFK6+juGazWzB73kFpRMylFoqJWOkPz7jHtoIdnR?=
 =?iso-8859-7?Q?NrBrjV3NRGP83Q71NKnc7Nmlt5vZxLTmrCpAVDtLphs5um9SsLksg3S23w?=
 =?iso-8859-7?Q?2tnvkU+4Ob+/KWdBmIk9OZemqdLPfp5HiaHYPq5FHRd0d6iCqdyXQuOQi7?=
 =?iso-8859-7?Q?s4ePaQLieSlWW5iOz0yrt3Hl1tDfZgLPsxn2vOZFSpLyIlYBXL+Id6S0bp?=
 =?iso-8859-7?Q?EDWbBsrIwEZNez1DP3m21XzXXAkBjdGoqNoamTTyg6ByO2GOu4KJ0+8IeY?=
 =?iso-8859-7?Q?ObgaIz8oQ4a6kaBr6JZnSUYnoIA0UhHq7PIup0bHwMwK6WyDT7B1oBsZjL?=
 =?iso-8859-7?Q?ONbIViXwrzuvzQNYzoz9EBEZnpZ37fdoh8HBTWMDG0Wxc3ZShiOb00dP28?=
 =?iso-8859-7?Q?eyyORwFkx9MjEyIUFN5ZgX2AHSTHFoete5OFjvlx7zS2MbCLyPD52ZZbo6?=
 =?iso-8859-7?Q?qImJqdj7IUJJTVk6zQBlXoCPhzrZilJNTQnQk6HUSofegQW5gJu8d8K7ts?=
 =?iso-8859-7?Q?KR/mzeRItpMT8REtba6WjBXQOv/PltIBdXQfXBvMtbAHTXFRYY+yS/e6B2?=
 =?iso-8859-7?Q?fKzFAvnMcsXVUzvYXL0xE1AgQRG22pdArXHtSBesEWF/m/P4yeyOAOpesi?=
 =?iso-8859-7?Q?08UuMm5OF8EaMg+ef0Hgx34v6BUGLKRIHP//t4wK6C2M8h3sFSZeuPa6U4?=
 =?iso-8859-7?Q?yHVaD1F+2qOuBNuC8rbhC3uOYxC01DXDnlm6SA16jAzwF96nB+qOryiDAh?=
 =?iso-8859-7?Q?u/4p1tLcFD+OYHIgcUqex5dcz3lJCmNH45pFGLKhaFxtnnCr7T5P2PvdkG?=
 =?iso-8859-7?Q?OrnCfTiAd8t7+SDT2yHrLPU8XC7CQQtkk3uxe8x76lUJIssEZXnIwhAa4Y?=
 =?iso-8859-7?Q?4rHtSOocFkQUwmUu6+Mlq47jrs0nsGve3b9vbbeli4uHgBJcjYD1E6moK7?=
 =?iso-8859-7?Q?jlv6N8LnDmbRH1CcNbiXsg+lhKVjU6J4b9KTuNePVtg16oI5EiPEZJfi9s?=
 =?iso-8859-7?Q?CHWJ47acLoPJmyMhfDWbItK5iMvYozvGN0yKBiN9OEj+Hc9Fpylk8/Imh4?=
 =?iso-8859-7?Q?hCPrOpAsJK55klarEh8LYIOEYmKxgN7DCUA8i8YfoGd5fZh81K7GAG72vs?=
 =?iso-8859-7?Q?i9sKqD/E6wcPMQIzkf0THHWVg7xUY/K4XUoEHsrYCKy3TzeFAg4pOcLsDm?=
 =?iso-8859-7?Q?9xNQOAJrWjh0g8OnVye1StuI0OPt18+BS33KmQB4Kd9S19rcukGUmEqw0p?=
 =?iso-8859-7?Q?YDRD2H8WDJuNmE+uxBfYcoRtBagyG0b+12VBGIFT6R7Jnw5cD18EIaGNMD?=
 =?iso-8859-7?Q?CTLkGECPCxkNEaKB2h3hEroViJZzzSxouyuFHw/D1xwMzH0/YqJuINJoV2?=
 =?iso-8859-7?Q?6YUNoV5hUI+WacS4djKJGIRkglk28i1Q/JHJl6IIBV+QcLou1G0KEF5o3j?=
 =?iso-8859-7?Q?LG1imY+OR6F7R+2pF26Fq4HBXwFPWmOnl+XNQthlbANS9EiKqKgOVDTbAV?=
 =?iso-8859-7?Q?k=3D?=
Content-Type: multipart/alternative;
 boundary="_000_MN2PR14MB263885081E3A4C87043676CFDE64AMN2PR14MB2638namp_"
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR14MB2638.namprd14.prod.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: d677758e-b23a-434e-c71b-08de670e4468
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Feb 2026 12:33:30.7872 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SAWPR14MB958172
X-Mailman-Approved-At: Mon, 09 Feb 2026 18:41:25 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=outlook.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JggTqoBrwZBNqHzWyp0HVtMk9xzpBEA4L9eOkSRHggg=;
 b=ebL0SFs87chTO6/1FEjefREY1FGRc3JgAEPLHBOGeisX4NFTlXHJrA0DaS/LCj4R8YAM/yz6OE0U2HfEjP0dZMByPQDaXLo6k+U+Itn12UXk24TfKub3l7HwR6xHxbijFk916D4vO9HTUp2Q2hPHWcdkVcXxbDutfb+VE7ywqqYCP6SjEchjh8RAKj/z7r2YeTSOApDyl8DvJ1ps7OXZQyNxlmkqF3S7JdqeIsGmH6mPI5JJ4d1b4CYuEJ2b6fsWjx1rXFAvQbYiZ6ZpI/h1+HXmOS55pnvWMzs0Me+CG0s+nftiSoZRuwf0uHL9DYOG1D1JhwhKuttNQKZaqoi5Lw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=outlook.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=outlook.com header.i=@outlook.com header.a=rsa-sha256
 header.s=selector1 header.b=ebL0SFs8
Subject: [Intel-wired-lan] [PATCH] igc: Add PCIe link recovery for I225/I226
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.39 / 15.00];
	DATE_IN_PAST(1.00)[30];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[multipart/alternative,text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[outlook.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	TO_DN_EQ_ADDR_ALL(0.00)[];
	FORGED_SENDER(0.00)[harshankmatkar1304@outlook.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:netdev@vger.kernel.org,s:lists@lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[aka.ms:url,osuosl.org:dkim,outlook.com:email,MN2PR14MB2638.namprd14.prod.outlook.com:mid];
	RCPT_COUNT_THREE(0.00)[4];
	FREEMAIL_FROM(0.00)[outlook.com];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[harshankmatkar1304@outlook.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	REDIRECTOR_URL(0.00)[aka.ms];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: E36ED113AE7
X-Rspamd-Action: no action

--_000_MN2PR14MB263885081E3A4C87043676CFDE64AMN2PR14MB2638namp_
Content-Type: text/plain; charset="iso-8859-7"
Content-Transfer-Encoding: quoted-printable

When ASPM L0s transitions occur on Intel I225/I226 controllers,
transient PCIe link instability can cause register read failures
(0xFFFFFFFF responses). Implement a multi-layer recovery strategy:

1. Immediate retries: 3 attempts with 100-200=ECs delays
2. Link retraining: Trigger PCIe link retraining via capabilities
3. Device detachment: Only as last resort after max attempts

The recovery mechanism includes rate limiting, maximum attempt
tracking, and device presence validation to prevent false detaches
on transient ASPM glitches while maintaining safety through
bounded retry limits.

Signed-off-by: Harshank Matkar <harshankmatkar1304@outlook.com>
From 2723a65f7f1f4c91e99d44ecbc4bbceb21f5aea2 Mon Sep 17 00:00:00 2001
From: Harshank Matkar <harshankmatkar1304@outlook.com>
Date: Sun, 8 Feb 2026 11:21:58 +0000
Subject: [PATCH] igc: Add PCIe link recovery for I225/I226
MIME-Version: 1.0
Content-Type: text/plain; charset=3DUTF-8
Content-Transfer-Encoding: 8bit

When ASPM L0s transitions occur on Intel I225/I226 controllers,
transient PCIe link instability can cause register read failures
(0xFFFFFFFF responses). Implement a multi-layer recovery strategy:

1. Immediate retries: 3 attempts with 100-200=ECs delays
2. Link retraining: Trigger PCIe link retraining via capabilities
3. Device detachment: Only as last resort after max attempts

The recovery mechanism includes rate limiting, maximum attempt
tracking, and device presence validation to prevent false detaches
on transient ASPM glitches while maintaining safety through
bounded retry limits.

Signed-off-by: Harshank Matkar <harshankmatkar1304@outlook.com>
---
 drivers/net/ethernet/intel/igc/igc.h | 6 +-
 drivers/net/ethernet/intel/igc/igc_main.c | 155 ++++++++++++++++++++--
 2 files changed, 149 insertions(+), 12 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/in=
tel/igc/igc.h
index a427f05814c1..2ef488b279b9 100644
--- a/drivers/net/ethernet/intel/igc/igc.h
+++ b/drivers/net/ethernet/intel/igc/igc.h
@@ -346,6 +346,10 @@ struct igc_adapter {
  struct mutex led_mutex;
  struct igc_led_classdev *leds;
  bool leds_available;
+
+ /* PCIe recovery tracking */
+ unsigned int pcie_recovery_attempts;
+ unsigned long last_recovery_time;
 };

 void igc_up(struct igc_adapter *adapter);
@@ -422,7 +426,7 @@ enum igc_rss_type_num {
  IGC_RSS_TYPE_MAX =3D 10,
 };
 #define IGC_RSS_TYPE_MAX_TABLE 16
-#define IGC_RSS_TYPE_MASK GENMASK(3,0) /* 4-bits (3:0) =3D mask 0x0F */
+#define IGC_RSS_TYPE_MASK GENMASK(3, 0) /* 4-bits (3:0) =3D mask 0x0F */

 /* igc_rss_type - Rx descriptor RSS type field */
 static inline u32 igc_rss_type(const union igc_adv_rx_desc *rx_desc)
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethern=
et/intel/igc/igc_main.c
index 89a321a344d2..f0daa3edbb79 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -1411,9 +1411,8 @@ static int igc_tx_map(struct igc_ring *tx_ring,
  /* Make sure there is space in the ring for the next send. */
  igc_maybe_stop_tx(tx_ring, DESC_NEEDED);

- if (netif_xmit_stopped(txring_txq(tx_ring)) || !netdev_xmit_more()) {
+ if (netif_xmit_stopped(txring_txq(tx_ring)) || !netdev_xmit_more())
   writel(i, tx_ring->tail);
- }

  return 0;
 dma_error:
@@ -1613,8 +1612,7 @@ static netdev_tx_t igc_xmit_frame_ring(struct sk_buff=
 *skb,
   * otherwise try next time
   */
  for (f =3D 0; f < skb_shinfo(skb)->nr_frags; f++)
- count +=3D TXD_USE_COUNT(skb_frag_size(
- &skb_shinfo(skb)->frags[f]));
+ count +=3D TXD_USE_COUNT(skb_frag_size(&skb_shinfo(skb)->frags[f]));

  if (igc_maybe_stop_tx(tx_ring, count + 5)) {
   /* this is a hard error */
@@ -2524,7 +2522,6 @@ static int __igc_xdp_run_prog(struct igc_adapter *ada=
pter,
   if (xdp_do_redirect(adapter->netdev, xdp, prog) < 0)
    goto out_failure;
   return IGC_XDP_REDIRECT;
- break;
  default:
   bpf_warn_invalid_xdp_action(adapter->netdev, prog, act);
   fallthrough;
@@ -2791,7 +2788,7 @@ static struct igc_xdp_buff *xsk_buff_to_igc_ctx(struc=
t xdp_buff *xdp)
   * igc_xdp_buff shares its layout with xdp_buff_xsk and private
   * igc_xdp_buff fields fall into xdp_buff_xsk->cb
   */
- return (struct igc_xdp_buff *)xdp;
+ return (struct igc_xdp_buff *)xdp;
 }

 static int igc_clean_rx_irq_zc(struct igc_q_vector *q_vector, const int bu=
dget)
@@ -3895,9 +3892,8 @@ static int igc_enable_nfc_rule(struct igc_adapter *ad=
apter,
 {
  int err;

- if (rule->flex) {
+ if (rule->flex)
   return igc_add_flex_filter(adapter, rule);
- }

  if (rule->filter.match_flags & IGC_FILTER_FLAG_ETHER_TYPE) {
   err =3D igc_add_etype_filter(adapter, rule->filter.etype,
@@ -6984,11 +6980,112 @@ static const struct net_device_ops igc_netdev_ops =
=3D {
  .ndo_hwtstamp_set =3D igc_ptp_hwtstamp_set,
 };

+#define IGC_REGISTER_READ_RETRIES 3
+#define IGC_PCIE_RECOVERY_MAX_ATTEMPTS 10
+#define IGC_PCIE_RECOVERY_INTERVAL_MS 1000
+
+/**
+ * igc_pcie_link_recover - Attempt PCIe link recovery
+ * @adapter: board private structure
+ *
+ * Attempts to recover a failed PCIe link by triggering a link retrain.
+ * Rate-limited to 1 attempt per second, maximum 10 attempts.
+ *
+ * Returns true if recovery was successful, false otherwise.
+ */
+static bool igc_pcie_link_recover(struct igc_adapter *adapter)
+{
+ struct pci_dev *pdev =3D adapter->pdev;
+ unsigned long now =3D jiffies;
+ u16 lnksta, lnkctl;
+ int ret;
+ int i;
+
+ /* Rate limiting: no more than 1 attempt per second */
+ if (time_before(now, adapter->last_recovery_time +
+ msecs_to_jiffies(IGC_PCIE_RECOVERY_INTERVAL_MS)))
+ return false;
+
+ /* Maximum attempt limit */
+ if (adapter->pcie_recovery_attempts >=3D IGC_PCIE_RECOVERY_MAX_ATTEMPTS) =
{
+ netdev_err(adapter->netdev,
+ "Exceeded maximum PCIe recovery attempts (%d)\n",
+ IGC_PCIE_RECOVERY_MAX_ATTEMPTS);
+ return false;
+ }
+
+ adapter->last_recovery_time =3D now;
+ adapter->pcie_recovery_attempts++;
+
+ netdev_warn(adapter->netdev,
+ "Attempting PCIe link recovery (attempt %d/%d)\n",
+ adapter->pcie_recovery_attempts,
+ IGC_PCIE_RECOVERY_MAX_ATTEMPTS);
+
+ /* Check if device is still present on the bus */
+ if (!pci_device_is_present(pdev)) {
+ netdev_err(adapter->netdev, "Device not present on PCIe bus\n");
+ return false;
+ }
+
+ /* Check link status */
+ ret =3D pcie_capability_read_word(pdev, PCI_EXP_LNKSTA, &lnksta);
+ if (ret) {
+ netdev_err(adapter->netdev, "Failed to read link status\n");
+ return false;
+ }
+
+ /* Trigger link retrain if link appears down */
+ if (!(lnksta & PCI_EXP_LNKSTA_DLLLA)) {
+ netdev_info(adapter->netdev,
+ "Link down, attempting retrain\n");
+
+ /* Read link control register */
+ ret =3D pcie_capability_read_word(pdev, PCI_EXP_LNKCTL, &lnkctl);
+ if (ret =3D=3D 0) {
+ /* Trigger retrain by setting RL bit */
+ pcie_capability_write_word(pdev, PCI_EXP_LNKCTL,
+ lnkctl | PCI_EXP_LNKCTL_RL);
+
+ /* Wait for retrain to complete (up to 1 second) */
+ for (i =3D 0; i < 100; i++) {
+ usleep_range(10000, 20000);
+ ret =3D pcie_capability_read_word(pdev, PCI_EXP_LNKSTA,
+ &lnksta);
+ if (ret =3D=3D 0 && (lnksta & PCI_EXP_LNKSTA_DLLLA) &&
+ !(lnksta & PCI_EXP_LNKSTA_LT)) {
+ netdev_info(adapter->netdev,
+ "PCIe link recovery successful\n");
+ return true;
+ }
+ }
+ }
+ }
+
+ /* Give the link some additional time to recover on its own */
+ msleep(100);
+
+ /* Check if device is responding now */
+ if (pci_device_is_present(pdev)) {
+ ret =3D pcie_capability_read_word(pdev, PCI_EXP_LNKSTA, &lnksta);
+ if (ret =3D=3D 0 && (lnksta & PCI_EXP_LNKSTA_DLLLA)) {
+ netdev_info(adapter->netdev,
+ "PCIe link recovered after delay\n");
+ return true;
+ }
+ }
+
+ netdev_warn(adapter->netdev, "PCIe link recovery failed\n");
+ return false;
+}
+
 u32 igc_rd32(struct igc_hw *hw, u32 reg)
 {
  struct igc_adapter *igc =3D container_of(hw, struct igc_adapter, hw);
  u8 __iomem *hw_addr =3D READ_ONCE(hw->hw_addr);
+ struct net_device *netdev =3D igc->netdev;
  u32 value =3D 0;
+ int retry;

  if (IGC_REMOVED(hw_addr))
   return ~value;
@@ -6997,13 +7094,49 @@ u32 igc_rd32(struct igc_hw *hw, u32 reg)

  /* reads should not return all F's */
  if (!(~value) && (!reg || !(~readl(hw_addr)))) {
- struct net_device *netdev =3D igc->netdev;
+ /* Layer 1: Immediate retries with short delays (100-200=ECs) */
+ for (retry =3D 0; retry < IGC_REGISTER_READ_RETRIES; retry++) {
+ usleep_range(100, 200);
+ value =3D readl(&hw_addr[reg]);
+
+ /* If we got a valid read, return immediately */
+ if (~value || (reg && ~readl(hw_addr))) {
+ netdev_dbg(netdev,
+ "Register read recovered after %d retries\n",
+ retry + 1);
+ return value;
+ }
+ }
+
+ /* Layer 2: Attempt full PCIe link recovery */
+ netdev_warn(netdev,
+ "All immediate retries failed, attempting PCIe link recovery\n");
+
+ if (igc_pcie_link_recover(igc)) {
+ /* Recovery succeeded, re-read the register */
+ hw_addr =3D READ_ONCE(hw->hw_addr);
+ if (hw_addr && !IGC_REMOVED(hw_addr)) {
+ value =3D readl(&hw_addr[reg]);
+
+ /* Verify the read is valid */
+ if (~value || (reg && ~readl(hw_addr))) {
+ netdev_info(netdev,
+ "Register read successful after link recovery\n");
+ return value;
+ }
+ }
+ }
+
+ /* Layer 3: All recovery attempts failed, detach device */
+ netdev_err(netdev,
+ "PCIe link lost after %d retries and recovery attempts, device now detach=
ed\n",
+ IGC_REGISTER_READ_RETRIES);

   hw->hw_addr =3D NULL;
   netif_device_detach(netdev);
- netdev_err(netdev, "PCIe link lost, device now detached\n");
+
   WARN(pci_device_is_present(igc->pdev),
- "igc: Failed to read reg 0x%x!\n", reg);
+ "igc: Failed to read reg 0x%x after all recovery attempts!\n", reg);
  }

  return value;
--
2.52.0





Get Outlook for Android<https://aka.ms/AAb9ysg>

--_000_MN2PR14MB263885081E3A4C87043676CFDE64AMN2PR14MB2638namp_
Content-Type: text/html; charset="iso-8859-7"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
7">
</head>
<body>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
When ASPM L0s transitions occur on Intel I225/I226 controllers,</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
transient PCIe link instability can cause register read failures</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
(0xFFFFFFFF responses). Implement a multi-layer recovery strategy:</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
<br>
</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
1. Immediate retries: 3 attempts with 100-200=ECs delays</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
2. Link retraining: Trigger PCIe link retraining via capabilities</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
3. Device detachment: Only as last resort after max attempts</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
<br>
</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
The recovery mechanism includes rate limiting, maximum attempt</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
tracking, and device presence validation to prevent false detaches</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
on transient ASPM glitches while maintaining safety through</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
bounded retry limits.</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
<br>
</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
Signed-off-by: Harshank Matkar &lt;harshankmatkar1304@outlook.com&gt;</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
From 2723a65f7f1f4c91e99d44ecbc4bbceb21f5aea2 Mon Sep 17 00:00:00 2001</div=
>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
From: Harshank Matkar &lt;harshankmatkar1304@outlook.com&gt;</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
Date: Sun, 8 Feb 2026 11:21:58 +0000</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
Subject: [PATCH] igc: Add PCIe link recovery for I225/I226</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
MIME-Version: 1.0</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
Content-Type: text/plain; charset=3DUTF-8</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
Content-Transfer-Encoding: 8bit</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
<br>
</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
When ASPM L0s transitions occur on Intel I225/I226 controllers,</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
transient PCIe link instability can cause register read failures</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
(0xFFFFFFFF responses). Implement a multi-layer recovery strategy:</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
<br>
</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
1. Immediate retries: 3 attempts with 100-200=ECs delays</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
2. Link retraining: Trigger PCIe link retraining via capabilities</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
3. Device detachment: Only as last resort after max attempts</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
<br>
</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
The recovery mechanism includes rate limiting, maximum attempt</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
tracking, and device presence validation to prevent false detaches</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
on transient ASPM glitches while maintaining safety through</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
bounded retry limits.</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
<br>
</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
Signed-off-by: Harshank Matkar &lt;harshankmatkar1304@outlook.com&gt;</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
---</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
&nbsp;drivers/net/ethernet/intel/igc/igc.h | 6 +-</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
&nbsp;drivers/net/ethernet/intel/igc/igc_main.c | 155 ++++++++++++++++++++-=
-</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
&nbsp;2 files changed, 149 insertions(+), 12 deletions(-)</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
<br>
</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/in=
tel/igc/igc.h</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
index a427f05814c1..2ef488b279b9 100644</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
--- a/drivers/net/ethernet/intel/igc/igc.h</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+++ b/drivers/net/ethernet/intel/igc/igc.h</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
@@ -346,6 +346,10 @@ struct igc_adapter {</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
&nbsp; struct mutex led_mutex;</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
&nbsp; struct igc_led_classdev *leds;</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
&nbsp; bool leds_available;</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+ /* PCIe recovery tracking */</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+ unsigned int pcie_recovery_attempts;</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+ unsigned long last_recovery_time;</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
&nbsp;};</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
&nbsp;</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
&nbsp;void igc_up(struct igc_adapter *adapter);</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
@@ -422,7 +426,7 @@ enum igc_rss_type_num {</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
&nbsp; IGC_RSS_TYPE_MAX =3D 10,</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
&nbsp;};</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
&nbsp;#define IGC_RSS_TYPE_MAX_TABLE 16</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
-#define IGC_RSS_TYPE_MASK GENMASK(3,0) /* 4-bits (3:0) =3D mask 0x0F */</d=
iv>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+#define IGC_RSS_TYPE_MASK GENMASK(3, 0) /* 4-bits (3:0) =3D mask 0x0F */</=
div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
&nbsp;</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
&nbsp;/* igc_rss_type - Rx descriptor RSS type field */</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
&nbsp;static inline u32 igc_rss_type(const union igc_adv_rx_desc *rx_desc)<=
/div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethern=
et/intel/igc/igc_main.c</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
index 89a321a344d2..f0daa3edbb79 100644</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
--- a/drivers/net/ethernet/intel/igc/igc_main.c</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+++ b/drivers/net/ethernet/intel/igc/igc_main.c</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
@@ -1411,9 +1411,8 @@ static int igc_tx_map(struct igc_ring *tx_ring,</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
&nbsp; /* Make sure there is space in the ring for the next send. */</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
&nbsp; igc_maybe_stop_tx(tx_ring, DESC_NEEDED);</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
&nbsp;</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
- if (netif_xmit_stopped(txring_txq(tx_ring)) || !netdev_xmit_more()) {</di=
v>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+ if (netif_xmit_stopped(txring_txq(tx_ring)) || !netdev_xmit_more())</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
&nbsp; &nbsp;writel(i, tx_ring-&gt;tail);</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
- }</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
&nbsp;</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
&nbsp; return 0;</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
&nbsp;dma_error:</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
@@ -1613,8 +1612,7 @@ static netdev_tx_t igc_xmit_frame_ring(struct sk_buff=
 *skb,</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
&nbsp; &nbsp;* otherwise try next time</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
&nbsp; &nbsp;*/</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
&nbsp; for (f =3D 0; f &lt; skb_shinfo(skb)-&gt;nr_frags; f++)</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
- count +=3D TXD_USE_COUNT(skb_frag_size(</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
- &amp;skb_shinfo(skb)-&gt;frags[f]));</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+ count +=3D TXD_USE_COUNT(skb_frag_size(&amp;skb_shinfo(skb)-&gt;frags[f])=
);</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
&nbsp;</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
&nbsp; if (igc_maybe_stop_tx(tx_ring, count + 5)) {</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
&nbsp; &nbsp;/* this is a hard error */</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
@@ -2524,7 +2522,6 @@ static int __igc_xdp_run_prog(struct igc_adapter *ada=
pter,</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
&nbsp; &nbsp;if (xdp_do_redirect(adapter-&gt;netdev, xdp, prog) &lt; 0)</di=
v>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
&nbsp; &nbsp; goto out_failure;</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
&nbsp; &nbsp;return IGC_XDP_REDIRECT;</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
- break;</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
&nbsp; default:</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
&nbsp; &nbsp;bpf_warn_invalid_xdp_action(adapter-&gt;netdev, prog, act);</d=
iv>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
&nbsp; &nbsp;fallthrough;</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
@@ -2791,7 +2788,7 @@ static struct igc_xdp_buff *xsk_buff_to_igc_ctx(struc=
t xdp_buff *xdp)</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
&nbsp; &nbsp;* igc_xdp_buff shares its layout with xdp_buff_xsk and private=
</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
&nbsp; &nbsp;* igc_xdp_buff fields fall into xdp_buff_xsk-&gt;cb</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
&nbsp; &nbsp;*/</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
- return (struct igc_xdp_buff *)xdp;</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+ return (struct igc_xdp_buff *)xdp;</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
&nbsp;}</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
&nbsp;</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
&nbsp;static int igc_clean_rx_irq_zc(struct igc_q_vector *q_vector, const i=
nt budget)</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
@@ -3895,9 +3892,8 @@ static int igc_enable_nfc_rule(struct igc_adapter *ad=
apter,</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
&nbsp;{</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
&nbsp; int err;</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
&nbsp;</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
- if (rule-&gt;flex) {</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+ if (rule-&gt;flex)</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
&nbsp; &nbsp;return igc_add_flex_filter(adapter, rule);</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
- }</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
&nbsp;</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
&nbsp; if (rule-&gt;filter.match_flags &amp; IGC_FILTER_FLAG_ETHER_TYPE) {<=
/div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
&nbsp; &nbsp;err =3D igc_add_etype_filter(adapter, rule-&gt;filter.etype,</=
div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
@@ -6984,11 +6980,112 @@ static const struct net_device_ops igc_netdev_ops =
=3D {</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
&nbsp; .ndo_hwtstamp_set =3D igc_ptp_hwtstamp_set,</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
&nbsp;};</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
&nbsp;</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+#define IGC_REGISTER_READ_RETRIES 3</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+#define IGC_PCIE_RECOVERY_MAX_ATTEMPTS 10</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+#define IGC_PCIE_RECOVERY_INTERVAL_MS 1000</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+/**</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+ * igc_pcie_link_recover - Attempt PCIe link recovery</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+ * @adapter: board private structure</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+ *</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+ * Attempts to recover a failed PCIe link by triggering a link retrain.</d=
iv>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+ * Rate-limited to 1 attempt per second, maximum 10 attempts.</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+ *</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+ * Returns true if recovery was successful, false otherwise.</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+ */</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+static bool igc_pcie_link_recover(struct igc_adapter *adapter)</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+{</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+ struct pci_dev *pdev =3D adapter-&gt;pdev;</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+ unsigned long now =3D jiffies;</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+ u16 lnksta, lnkctl;</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+ int ret;</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+ int i;</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+ /* Rate limiting: no more than 1 attempt per second */</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+ if (time_before(now, adapter-&gt;last_recovery_time +</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+ msecs_to_jiffies(IGC_PCIE_RECOVERY_INTERVAL_MS)))</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+ return false;</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+ /* Maximum attempt limit */</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+ if (adapter-&gt;pcie_recovery_attempts &gt;=3D IGC_PCIE_RECOVERY_MAX_ATTE=
MPTS) {</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+ netdev_err(adapter-&gt;netdev,</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+ &quot;Exceeded maximum PCIe recovery attempts (%d)\n&quot;,</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+ IGC_PCIE_RECOVERY_MAX_ATTEMPTS);</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+ return false;</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+ }</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+ adapter-&gt;last_recovery_time =3D now;</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+ adapter-&gt;pcie_recovery_attempts++;</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+ netdev_warn(adapter-&gt;netdev,</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+ &quot;Attempting PCIe link recovery (attempt %d/%d)\n&quot;,</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+ adapter-&gt;pcie_recovery_attempts,</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+ IGC_PCIE_RECOVERY_MAX_ATTEMPTS);</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+ /* Check if device is still present on the bus */</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+ if (!pci_device_is_present(pdev)) {</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+ netdev_err(adapter-&gt;netdev, &quot;Device not present on PCIe bus\n&quo=
t;);</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+ return false;</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+ }</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+ /* Check link status */</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+ ret =3D pcie_capability_read_word(pdev, PCI_EXP_LNKSTA, &amp;lnksta);</di=
v>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+ if (ret) {</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+ netdev_err(adapter-&gt;netdev, &quot;Failed to read link status\n&quot;);=
</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+ return false;</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+ }</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+ /* Trigger link retrain if link appears down */</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+ if (!(lnksta &amp; PCI_EXP_LNKSTA_DLLLA)) {</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+ netdev_info(adapter-&gt;netdev,</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+ &quot;Link down, attempting retrain\n&quot;);</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+ /* Read link control register */</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+ ret =3D pcie_capability_read_word(pdev, PCI_EXP_LNKCTL, &amp;lnkctl);</di=
v>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+ if (ret =3D=3D 0) {</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+ /* Trigger retrain by setting RL bit */</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+ pcie_capability_write_word(pdev, PCI_EXP_LNKCTL,</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+ lnkctl | PCI_EXP_LNKCTL_RL);</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+ /* Wait for retrain to complete (up to 1 second) */</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+ for (i =3D 0; i &lt; 100; i++) {</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+ usleep_range(10000, 20000);</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+ ret =3D pcie_capability_read_word(pdev, PCI_EXP_LNKSTA,</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+ &amp;lnksta);</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+ if (ret =3D=3D 0 &amp;&amp; (lnksta &amp; PCI_EXP_LNKSTA_DLLLA) &amp;&amp=
;</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+ !(lnksta &amp; PCI_EXP_LNKSTA_LT)) {</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+ netdev_info(adapter-&gt;netdev,</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+ &quot;PCIe link recovery successful\n&quot;);</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+ return true;</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+ }</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+ }</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+ }</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+ }</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+ /* Give the link some additional time to recover on its own */</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+ msleep(100);</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+ /* Check if device is responding now */</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+ if (pci_device_is_present(pdev)) {</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+ ret =3D pcie_capability_read_word(pdev, PCI_EXP_LNKSTA, &amp;lnksta);</di=
v>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+ if (ret =3D=3D 0 &amp;&amp; (lnksta &amp; PCI_EXP_LNKSTA_DLLLA)) {</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+ netdev_info(adapter-&gt;netdev,</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+ &quot;PCIe link recovered after delay\n&quot;);</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+ return true;</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+ }</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+ }</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+ netdev_warn(adapter-&gt;netdev, &quot;PCIe link recovery failed\n&quot;);=
</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+ return false;</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+}</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
&nbsp;u32 igc_rd32(struct igc_hw *hw, u32 reg)</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
&nbsp;{</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
&nbsp; struct igc_adapter *igc =3D container_of(hw, struct igc_adapter, hw)=
;</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
&nbsp; u8 __iomem *hw_addr =3D READ_ONCE(hw-&gt;hw_addr);</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+ struct net_device *netdev =3D igc-&gt;netdev;</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
&nbsp; u32 value =3D 0;</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+ int retry;</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
&nbsp;</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
&nbsp; if (IGC_REMOVED(hw_addr))</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
&nbsp; &nbsp;return ~value;</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
@@ -6997,13 +7094,49 @@ u32 igc_rd32(struct igc_hw *hw, u32 reg)</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
&nbsp;</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
&nbsp; /* reads should not return all F's */</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
&nbsp; if (!(~value) &amp;&amp; (!reg || !(~readl(hw_addr)))) {</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
- struct net_device *netdev =3D igc-&gt;netdev;</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+ /* Layer 1: Immediate retries with short delays (100-200=ECs) */</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+ for (retry =3D 0; retry &lt; IGC_REGISTER_READ_RETRIES; retry++) {</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+ usleep_range(100, 200);</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+ value =3D readl(&amp;hw_addr[reg]);</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+ /* If we got a valid read, return immediately */</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+ if (~value || (reg &amp;&amp; ~readl(hw_addr))) {</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+ netdev_dbg(netdev,</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+ &quot;Register read recovered after %d retries\n&quot;,</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+ retry + 1);</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+ return value;</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+ }</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+ }</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+ /* Layer 2: Attempt full PCIe link recovery */</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+ netdev_warn(netdev,</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+ &quot;All immediate retries failed, attempting PCIe link recovery\n&quot;=
);</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+ if (igc_pcie_link_recover(igc)) {</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+ /* Recovery succeeded, re-read the register */</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+ hw_addr =3D READ_ONCE(hw-&gt;hw_addr);</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+ if (hw_addr &amp;&amp; !IGC_REMOVED(hw_addr)) {</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+ value =3D readl(&amp;hw_addr[reg]);</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+ /* Verify the read is valid */</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+ if (~value || (reg &amp;&amp; ~readl(hw_addr))) {</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+ netdev_info(netdev,</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+ &quot;Register read successful after link recovery\n&quot;);</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+ return value;</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+ }</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+ }</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+ }</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+ /* Layer 3: All recovery attempts failed, detach device */</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+ netdev_err(netdev,</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+ &quot;PCIe link lost after %d retries and recovery attempts, device now d=
etached\n&quot;,</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+ IGC_REGISTER_READ_RETRIES);</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
&nbsp;</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
&nbsp; &nbsp;hw-&gt;hw_addr =3D NULL;</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
&nbsp; &nbsp;netif_device_detach(netdev);</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
- netdev_err(netdev, &quot;PCIe link lost, device now detached\n&quot;);</d=
iv>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
&nbsp; &nbsp;WARN(pci_device_is_present(igc-&gt;pdev),</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
- &quot;igc: Failed to read reg 0x%x!\n&quot;, reg);</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
+ &quot;igc: Failed to read reg 0x%x after all recovery attempts!\n&quot;, =
reg);</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
&nbsp; }</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
&nbsp;</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
&nbsp; return value;</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
--&nbsp;</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
2.52.0</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
<br>
</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
<br>
</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
<br>
</div>
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(3=
3, 33, 33);">
<br>
</div>
<div id=3D"ms-outlook-mobile-body-separator-line" data-applydefaultfontstyl=
es=3D"true" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-system=
, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt;" dir=3D"auto">
<div dir=3D"auto" style=3D"font-family: Aptos, Aptos_MSFontService, -apple-=
system, Roboto, Arial, Helvetica, sans-serif; font-size: 12pt;">
<br>
</div>
</div>
<div style=3D"font-family: Aptos, Aptos_MSFontService, -apple-system, Robot=
o, Arial, Helvetica, sans-serif; font-size: 12pt;" id=3D"ms-outlook-mobile-=
signature" dir=3D"auto">
<span style=3D"font-family: Aptos, Aptos_MSFontService, -apple-system, Robo=
to, Arial, Helvetica, sans-serif; font-size: 12pt;">Get
<a href=3D"https://aka.ms/AAb9ysg">Outlook for Android</a></span></div>
</body>
</html>

--_000_MN2PR14MB263885081E3A4C87043676CFDE64AMN2PR14MB2638namp_--
