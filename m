Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EF3DA903F6D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Jun 2024 17:01:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E22D960A77;
	Tue, 11 Jun 2024 15:01:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id c6yIy6VDnoHD; Tue, 11 Jun 2024 15:01:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C12ED6082C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718118067;
	bh=gIySvGwpXk7Qu/w1shCk/cX16TSAPnBqwuCWhkYT4qk=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=3xmzGE08Jr8FirYM23bgNPKwwOc645DtQYYcb2klMlC3lFSYLeu0/XNNRzHaTxbca
	 6OYb66hUKrdF9Cl+Y23MuV6UU720lqsjEYmIQ0eZMbAxckcNjSgFsusjvcwRbYVAQy
	 3iKCLdPjSRRWD6QkNAlzyLnwpNfhcDeuvyk7ut0dbyzwL2YqmIOrTpxuUlr2AUGsh9
	 fkTJUkmG0qVWaTLSOGbbd0RCURyJATjccpfYLtAEQDlKSYWsa3r39NCTrvjslRh7vN
	 wpTqmMTbrL3j7B+X50u+nRoO5cbURUlA9OH5OfSkCSo0ieJYb//6HQ4gOiaYvbrwnx
	 8suFdyJ+SJIbw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C12ED6082C;
	Tue, 11 Jun 2024 15:01:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 71EED1BF39A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Jun 2024 08:05:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5D2FB403B7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Jun 2024 08:05:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iVP57bDn4W23 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 Jun 2024 08:05:41 +0000 (UTC)
X-Greylist: delayed 583 seconds by postgrey-1.37 at util1.osuosl.org;
 Tue, 11 Jun 2024 08:05:40 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org DC67640065
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DC67640065
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=148.163.147.86;
 helo=mx0a-002e3701.pphosted.com; envelope-from=richard.chien@hpe.com;
 receiver=<UNKNOWN> 
Received: from mx0a-002e3701.pphosted.com (mx0a-002e3701.pphosted.com
 [148.163.147.86])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DC67640065
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Jun 2024 08:05:40 +0000 (UTC)
Received: from pps.filterd (m0148663.ppops.net [127.0.0.1])
 by mx0a-002e3701.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id
 45B4dlYC032418; Tue, 11 Jun 2024 07:55:44 GMT
Received: from p1lg14878.it.hpe.com ([16.230.97.204])
 by mx0a-002e3701.pphosted.com (PPS) with ESMTPS id 3ynv21t27u-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 11 Jun 2024 07:55:44 +0000
Received: from p1wg14926.americas.hpqcorp.net (unknown [10.119.18.115])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by p1lg14878.it.hpe.com (Postfix) with ESMTPS id 48704130DD;
 Tue, 11 Jun 2024 07:55:43 +0000 (UTC)
Received: from p1wg14924.americas.hpqcorp.net (10.119.18.113) by
 p1wg14926.americas.hpqcorp.net (10.119.18.115) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.42; Mon, 10 Jun 2024 19:55:41 -1200
Received: from P1WG14918.americas.hpqcorp.net (16.230.19.121) by
 p1wg14924.americas.hpqcorp.net (10.119.18.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.42
 via Frontend Transport; Mon, 10 Jun 2024 19:55:41 -1200
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (192.58.206.35)
 by edge.it.hpe.com (16.230.19.121) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.42; Tue, 11 Jun 2024 07:55:41 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bDLzS9GK6Bn0ja3eGuW2Pss0tqIWedhTZYMlNBx87sm+cWNYb8lDsBxBXfRONjpOn0Q0QOjmTkLecXVhvUX8q+yoUMj5Yuls/iXmb5bongS8UhfCXGmKnZc1qVp4/+he0HCl7NoIGFBskZzsIzTOQPA+uvAssbejll4iK/T91rAt236ugrxB2MxW17YYDPohmh9xJy0M0BwRc3L4PWcsYFPlLQ0MF4Pdob78es6HJz/RsJ39hM5K3YKTK4q9VrNLFNozGVzrYOwtd1vCaYCkLu9kJMn3vExocavSn6U/Ej01hm3ckhYlsTRMEAi89bSmU/XJ4m6BnXLTr16Su51+Fg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gIySvGwpXk7Qu/w1shCk/cX16TSAPnBqwuCWhkYT4qk=;
 b=TVm0jhN4D6fuUJ+hKar1Rbvv+X2NsUPMscxJ9LNnGLXQE5ZlpRZWNRGjvKX0hdSr8lflaQu3rlqwNqK0bfjv71WhBDfFmTnmZJZRoWBQcAS8a6fTWZh+2SOUNX40pEyHzLvuC2Qc08SFnV4JWbmKVF0LAIuZqeJqXuyQ8ysUVX9EoVUPDmz2bAkaJNmzibQCS5eXu28n+KYGejyiBJlC5bRPLoJ34+U+Khw+7vogFCpTPjOUR2qRTQhfCGoB9BnC7gijlJCuoBHfyX1Ttf/xe7Xwd/i4xgPM4Y4AUjTY0+9VsSXfXQe8pyRCi7m34m7cXnxKI53pAj2G+bVzdXMNSg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=hpe.com; dmarc=pass action=none header.from=hpe.com; dkim=pass
 header.d=hpe.com; arc=none
Received: from PH7PR84MB1581.NAMPRD84.PROD.OUTLOOK.COM (2603:10b6:510:150::10)
 by PH7PR84MB1791.NAMPRD84.PROD.OUTLOOK.COM (2603:10b6:510:155::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.36; Tue, 11 Jun
 2024 07:55:27 +0000
Received: from PH7PR84MB1581.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::1c64:65aa:5b9b:557e]) by PH7PR84MB1581.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::1c64:65aa:5b9b:557e%5]) with mapi id 15.20.7633.036; Tue, 11 Jun 2024
 07:55:26 +0000
From: "Chien, Richard (Options Engineering)" <richard.chien@hpe.com>
To: Jacob Keller <jacob.e.keller@intel.com>, Richard chien
 <m8809301@gmail.com>, "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>, "kuba@kernel.org"
 <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>
Thread-Topic: [PATCH] igb: Add support for firmware update
Thread-Index: AQHaukWtSF78sVTyQUimAHg3Hm+hJbHBj60AgACaXRA=
Date: Tue, 11 Jun 2024 07:55:26 +0000
Message-ID: <PH7PR84MB15819CF12F71CB6D55F50576E8C72@PH7PR84MB1581.NAMPRD84.PROD.OUTLOOK.COM>
References: <20240609081526.5621-1-richard.chien@hpe.com>
 <4f2ec2fb-5d31-4a90-9ef6-a036d16a5cb4@intel.com>
In-Reply-To: <4f2ec2fb-5d31-4a90-9ef6-a036d16a5cb4@intel.com>
Accept-Language: zh-TW, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR84MB1581:EE_|PH7PR84MB1791:EE_
x-ms-office365-filtering-correlation-id: a2b62476-c9da-49eb-f35f-08dc89ebdb41
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230031|1800799015|376005|7416005|366007|38070700009; 
x-microsoft-antispam-message-info: =?utf-8?B?NGNWdzJzK2cvN09HZ3J5TEFDNVFJZ2pVOE5PWTVZNW9rckN3d0VYQUFBalRr?=
 =?utf-8?B?UlZuYzR2bUJieEJIL1NLaVhTWEs4WWtTaFYxSEcvMUxJWWpjeDA4Sk9kUGJy?=
 =?utf-8?B?YzlMMG0rU3JIdmlPblYvQk82QTN5bjVYdVowdldLa2Q2dys3VXJKMlBWY2J6?=
 =?utf-8?B?dkFBcE4rdVgxUDJNOVZDWjlLSlNGMjE1WkZndHBBUjBmbko1VEdudTdEblBt?=
 =?utf-8?B?Um1yVGxlQzNPYkNma2ErOVdkT2hRbGtqL25YelMybFpFdzE2em12aExzVFpP?=
 =?utf-8?B?RGVRTGpBVktMYVlRM3RsRzZjK0puUjlxSDcyeURFWUpNM2VzbzVGVk9oSlY4?=
 =?utf-8?B?clFVT1h0ZjIvYlJDTGd0MUdxZm9jL1hDSWxnVmsrVENwQURrR0EzOTJ5VjND?=
 =?utf-8?B?bHk3RDhNRkZkY0MyVnAvaE5GQXhHN0pqUGFJZHZLRzdIamZNakozNS8zcy9i?=
 =?utf-8?B?MTBQVmU3dnYxbWF3dzA2aGl3aUtxQXlmT2xNcEZaMkd4R3RLdnZFbFVTMGMy?=
 =?utf-8?B?d2c5NFkwSDZnZWEyMkh1ekthUEpkME9XYzhndWllS1hhS1NyU3ZTbnZlUjFJ?=
 =?utf-8?B?Wko1dGVjUDdENlBLYjVDQkNmU3RwdlJCSnJnbXNwaFFuZ1gwWEJEbC9wOXNE?=
 =?utf-8?B?OW4rZDdiT2ppRkR1UmJUS2xYM0tBQ0dsQWIyd2d1MHp5T1hhVFltQmRja1BI?=
 =?utf-8?B?UG05YXd2Z2hHZXU3NmswQllybXFuODlIMHNJbTFnSVJwWEExZEh1M1RmYUpo?=
 =?utf-8?B?cG5WOGpYbFdlWktEbTFWU0hXaWI4SlhibGlPMEh4Y3U5TDZadmRQRm5BM3A3?=
 =?utf-8?B?UjNjSXgzblNNb0UwQTIzMklDRE5xN1dvZWh2WSs5STRualZMNVlvRkRGcHVJ?=
 =?utf-8?B?UkJOcVdBaEFGeUFKLzJqbHRZOTIvL1BsL2twUCtkMFNDdTBDY1pEWmtBNGZC?=
 =?utf-8?B?djg5Z0VqalBmTEZCOTBZanpIQS9Nem1LOWhuSVJIVlh3bFU0L0xSeE5tL0xN?=
 =?utf-8?B?OW5BZjlmOFM3UGR6STBOUU1iZTB6enM3R3F5cTVkM2xMYlRSR1A5SjZ4Vkti?=
 =?utf-8?B?ZGJtb015dDJOTTdqNGQwS3BzYnRFUVRTSjBTQjR3T3pvRkZnRVJGVUdxbFgz?=
 =?utf-8?B?M2tvaUtaWklDNEpWT1pwOTlrdGxrblhKNGg4VlEvdEJTZHFnOXQwUUlMT2ts?=
 =?utf-8?B?S240b2Q5TGJBbUlEcW5YMmg2L1l0elJaNFVqSVZCdjBFUGZib1UxeVhnRFJT?=
 =?utf-8?B?Q2lWZHlZSVRTQmNpN1F5cnVzMzRNb3lVano4bEhGL1VsekRCek5zSlVxNFIz?=
 =?utf-8?B?YlRPLyt1eG42Q3B4aUpSejRyaVQyR1IwMkFmQmFXUHA5WXA5YWsrVDhKWHFx?=
 =?utf-8?B?UVh3ZWhLVUQ5SjhGS2NQUitrMng3Q0FiR3E0R21JdmNINlU1Z1dxdmJ3M2lv?=
 =?utf-8?B?cXBnU2Fjdit1YkFyM0ZqOGY5eWR2M2RGUVN1cTM3K3hVZVFRMFZ0SFcyZXJo?=
 =?utf-8?B?RExRL1Y1L3NyUElZZXFSbkx4dk5vMFlQYmd3eVB2M2I2TzducStVS1pvdnhw?=
 =?utf-8?B?WEFTaE9iRlNjSWF5SmdOdjVxTURpUWJ2K0E1OEJoRk9yUlc2VG93YmxNYzhC?=
 =?utf-8?B?THRNcWc4RVF6dTR4M21iNlNGeDJ5SC9LY3JBbGhOTFVtSU1LcEJrb0hEWjk3?=
 =?utf-8?B?N1NMeFRJbGJ5RysxemI0ZDJwNWVjZm94aVh5cGdjOHhBSjQvR0I2S0NZeS8z?=
 =?utf-8?B?eXN5RU0ybE5wbXM4blpTNUhiLzc2NFZ1Ujh2bW1FMjBPK29IajFSQmlxbGZL?=
 =?utf-8?Q?iRNBI3rZNKdO7+c1w6GolUHLshPQP1t57rLxM=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR84MB1581.NAMPRD84.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(7416005)(366007)(38070700009); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UXcvRkpoN0c4ZkNqUXlxbDhFY28yMi8rUjMyWmcwM1d0NmRqM0l3RTBYeFd1?=
 =?utf-8?B?ODZZbXlhQ1dMWTc1Rzg1eVl1NCtSYzE2azdxRGJldXpsYkFFbGl6NXI3VG1L?=
 =?utf-8?B?M0FYZ2U4UmxxUFdlMDJaeTkwOXV3T1cvVlNIUjgrYlFSczdLVmlGL0tsZFZG?=
 =?utf-8?B?dmhHRSsrWmF4RnhwZWNOQ2d1Y3NhN3hIZVZaUFA2RXlMMzlPcWUvcWNScXpZ?=
 =?utf-8?B?RCtwcWhFQXk5QUhGN3MxWVBGWEFVajY1cU5uUDFCL2lKNC9jSjBMSGdja2h5?=
 =?utf-8?B?Y1pkQ0dTRWttRFBYb0JGQVgrcVhERFVZR3Vub1NMQW5ySnJWa1ZhSXlDUzly?=
 =?utf-8?B?ZEVrR2NqZUZsdHNxcVUwa2E4SkxOck82TXdtTWcyL3pqd3I2T1diK3dEdlpG?=
 =?utf-8?B?Z21CbHBOZmNDVk12WHEzQUFBcW5QMXVuK1BXUWdpVU44T0VWUThSZ055NzNI?=
 =?utf-8?B?OFVPYUxYazB5UmQ3VlN1Ynh2QklCZ09Eb0h1Sk1wTnQvM3hJd3ZZYkQwNXJ5?=
 =?utf-8?B?ancvV0NCb0E3YjhqWnZVSFZMNE8rWWFDSHE1UFQyVVFrT1hJdnNnbkN0WmR3?=
 =?utf-8?B?NzUybnA4b2F4V1Y3TUxXd0kyRnN1eENFM3hWcUx0bmxOd0c4RkZsa3NGMTdC?=
 =?utf-8?B?VDQvTHlhWWZMdkE3ZkFWYTZDMm9Cd091dWZFQzRPam1IY0dTZ2RvQ0dLZlN1?=
 =?utf-8?B?YkNjbTBvWndtS2ZxeTNDSHNsQ1llaXpnVzBVcE1BdXdlM2tJUVFaWmg2cjlG?=
 =?utf-8?B?S2J0VnFkNG16MWNjTGRWWUlqajFIV0lsVHV0Y1g4K0xkYzROa05OWEs1M3FB?=
 =?utf-8?B?ZTA0SG9lSkcyUHRhWU8rT1pxeis2MVoxN2hicjJiQ1BaVUtwZzUvSnZ4Q3FQ?=
 =?utf-8?B?cEFxWVk5cG9aZ1A2VnM1RXBSaUJRR3lCTFE3bDhheFdwWkxJUWdieVVUeG14?=
 =?utf-8?B?Q1FrNWl1Y2NSa1BzT1dyYnE0ZXZBNDZGUnN3Qm1qdC9MS1krQkJvODVBUXBl?=
 =?utf-8?B?S09ybG5HclZHRE42OGs4SDM0bHlNMFg4Zmkzb3BmZ2RuWDZRS2tZa3BKQlFv?=
 =?utf-8?B?bnQ1ZHV5OUxXWHNBVU1jeUlvSEpBdjlMVmcyV0szeisxZWJLaFhObjZTUEx4?=
 =?utf-8?B?R1Z6VDFrR0ZjbWF4ZGh1T2MxSkd6ZCtrblN0Znc2OVhSRVNSelN4OWxnOTRH?=
 =?utf-8?B?eWxsTWxueSt3dkQwY2JRSjJFaVhJNDB6cFN1M0YzQ216ZXpZQUc4TUlDNHQy?=
 =?utf-8?B?bUh0bUhvbGZkK3MzSDFzTEdKRWhiSHQ5Q1QwUUUwbGZ5MFRIMUJHVXM1SHVx?=
 =?utf-8?B?VG81YjZTNUhPWDdqOWNreHFIeElPalJtOWRXUnpIUFJJN0VQQ3lJQ1lzU3VQ?=
 =?utf-8?B?T0NvRFE4WVQ3V1NpQUFuMXNackJEWXJ5QW9JMDFRYzdzbUphc0ZCc0JVR3JJ?=
 =?utf-8?B?R2RPOXN0dFdvclA4K0t4a1lsRFVaRFI3cHg4bXJyQ3lXTDFycFF3amxxYWFk?=
 =?utf-8?B?NmFmY0ZDWEg5RTE0WUtYZXFvSngyRnA1bE8yK0tHRVYxSGJOOUlsT1F3Y1hE?=
 =?utf-8?B?YlZ4cUhFd3RjSkszS05qSVNRcFNXYThrQnFsblJXRzFLNXJyTW91c2tvdU0r?=
 =?utf-8?B?OEIrM0RPNnBnRkZ4TndPYW02UTFVam80UkQwZHJLZm00eEJraGN2T0NjMXJ3?=
 =?utf-8?B?azFJaHJtVHVkb1lWVVIyZkNyU0l1Tk1VbHFOMnJrQjZqRUQ1S3lyd2ZXWDcx?=
 =?utf-8?B?a0xDcFozaElUTklYREFBTkZhNFV4UkM4V1NRSExpRHM0alJlY001c0NGeXFT?=
 =?utf-8?B?dU9QV1NIN0JqZStKZjRJdmM4aDNGdGx2Rnpjd1hYMzdkUWV4Zml6MFYyZjdS?=
 =?utf-8?B?RHFCSlR4VjllWUwva1JRZlpGWjRmcnoyWGdpWDBubGxORTd4RjVWMGplUDJC?=
 =?utf-8?B?cnMxYVhJTFVsYXErTm9VQzJ5Y1RRclBlZUIwUmxHR0x5cXhpV0p6NU93SWVW?=
 =?utf-8?B?SkI1MElBRVpGRFozTUlueGZYYWFGUERYTkUwUnBpYW1nU2dvNjFZSlVkTkUw?=
 =?utf-8?B?NU1zU0p1NlRQNUNFc2JRZjdaanI2SWVaT1EvMFRNQm9WUDI0L1hkZERTYzdG?=
 =?utf-8?Q?mKxiWkDRiLwlhxWN9Gf6yFpT3?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR84MB1581.NAMPRD84.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: a2b62476-c9da-49eb-f35f-08dc89ebdb41
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jun 2024 07:55:26.8405 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 105b2061-b669-4b31-92ac-24d304d195dc
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: phl/nJbmwAzWoc2++44/Fo1OMumBbEu5oUZCvztHCwaq6tkds9VnljPK6i+QK/CWFlONbMgMWBJLFDKv1NNtag==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR84MB1791
X-OriginatorOrg: hpe.com
X-Proofpoint-ORIG-GUID: xWLWeW9aSFpi2_bCMin3jL-gkDnjsBpy
X-Proofpoint-GUID: xWLWeW9aSFpi2_bCMin3jL-gkDnjsBpy
X-HPE-SCL: -1
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.28.16
 definitions=2024-06-11_03,2024-06-11_01,2024-05-17_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0
 impostorscore=0 priorityscore=1501 lowpriorityscore=0 suspectscore=0
 clxscore=1015 mlxscore=0 spamscore=0 bulkscore=0 adultscore=0
 mlxlogscore=985 phishscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2405010000 definitions=main-2406110058
X-Mailman-Approved-At: Tue, 11 Jun 2024 15:01:04 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=hpe.com; h=cc :
 content-transfer-encoding : content-type : date : from : in-reply-to :
 message-id : mime-version : references : subject : to; s=pps0720;
 bh=gIySvGwpXk7Qu/w1shCk/cX16TSAPnBqwuCWhkYT4qk=;
 b=bOqvTvovkkwrwDHSWctTbwMVuiROLXFznU/ByyT81frVo4ffYHmJNnBnTwcRja7zr4mq
 EWUz3jpLiIF4/wtUPAVOlK4PXqRZimJuMRbWNLIjYpqUuw0ergh3g1cgrw8fNPiZNu3+
 p8106dgN93e9DAcpgE24IRqq//Q3GHwE53REWVlU+/BAvwGcSQfCIvYdtBISZQGTXG/6
 6efbe8uZhRcHnVwWxPcM/LbJY8RXF7f0vjL/7ayA7ulP0+u6sNQ5VxPDEl634vV04XhI
 RGHh1oOrRv0LJlKF9vdIA26G+c7ZuIn1mEQ1zWxY0EUtucdtrtHSDRBTLwfWQGjm1YSg Tw== 
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=hpe.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=hpe.com header.i=@hpe.com header.a=rsa-sha256
 header.s=pps0720 header.b=bOqvTvov
Subject: Re: [Intel-wired-lan] [PATCH] igb: Add support for firmware update
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
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "anthony.l.nguyen@intel.com" <anthony.l.nguyen@intel.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

PiBIb3dldmVyLCB0aGlzIGltcGxlbWVudGF0aW9uIGlzIHdyb25nLiBJdCBpcyBleHBvc2luZyB0
aGUNCj4gRVRIVE9PTF9HRUVQUk9NIGFuZCBFVEhUT09MX1NFRVBST00gaW50ZXJmYWNlIGFuZCBh
YnVzaW5nIGl0IHRvDQo+IGltcGxlbWVudCBhIG5vbi1zdGFuZGFyZCBpbnRlcmZhY2UgdGhhdCBp
cyBjdXN0b20gdG8gdGhlIG91dC1vZi10cmVlIEludGVsDQo+IGRyaXZlcnMgdG8gc3VwcG9ydCB0
aGUgZmxhc2ggdXBkYXRlIHV0aWxpdHkuDQo+IA0KPiBUaGlzIGltcGxlbWVudGF0aW9uIHdhcyB3
aWRlbHkgcmVqZWN0ZWQgd2hlbiBkaXNjb3ZlcmVkIGluIGk0MGUgYW5kIGluDQo+IHN1Ym1pc3Np
b25zIGZvciB0aGUgIGljZSBkcml2ZXIuIEl0IGFidXNlcyB0aGUgRVRIVE9PTF9HRUVQUk9NIGFu
ZA0KPiBFVEhUT09MX1NFRVBST00gaW50ZXJmYWNlIGluIG9yZGVyIHRvIGFsbG93IHRvb2xzIHRv
IGFjY2VzcyB0aGUgaGFyZHdhcmUuDQo+IFRoZSB1c2UgdmlvbGF0ZXMgdGhlIGRvY3VtZW50ZWQg
YmVoYXZpb3Igb2YgdGhlIGV0aHRvb2wgaW50ZXJmYWNlIGFuZCBicmVha3MNCj4gdGhlIGludGVu
ZGVkIGZ1bmN0aW9uYWxpdHkgb2YgRVRIVE9PTF9HRUVQUk9NIGFuZCBFVEhUT09MX1NFRVBST00u
DQoNClRoYW5rIHlvdSBmb3IgeW91ciBkZXRhaWxlZCBleHBsYW5hdGlvbi4NCg0KPiBUaGUgY29y
cmVjdCB3YXkgdG8gaW1wbGVtZW50IGZsYXNoIHVwZGF0ZSBpcyB2aWEgdGhlIGRldmxpbmsgZGV2
IGZsYXNoDQo+IGludGVyZmFjZSwgdXNpbmcgcmVxdWVzdF9maXJtd2FyZSwgYW5kIGltcGxlbWVu
dGluZyB0aGUgZW50aXJlIHVwZGF0ZQ0KPiBwcm9jZXNzIGluIHRoZSBkcml2ZXIuIFRoZSBjb21t
b24gcG9ydGlvbnMgb2YgdGhpcyBjb3VsZCBiZSBkb25lIGluIGEgc2hhcmVkDQo+IG1vZHVsZS4N
Cg0KSW4gdGhhdCBjYXNlLCBkb2VzIEludGVsIGhhdmUgYSBwbGFuIHRvIGltcGxlbWVudCB0aGlz
IG1lY2hhbmlzbQ0KaW4gaW4ta2VybmVsIGRyaXZlcnM/DQoNCj4gQXR0ZW1wdGluZyB0byBzdXBw
b3J0IHRoZSBicm9rZW4gbGVnYWN5IHVwZGF0ZSB0aGF0IGlzIHN1cHBvcnRlZCBieSB0aGUgb3V0
LQ0KPiBvZi10cmVlIGRyaXZlcnMgaXMgYSBub24tc3RhcnRlciBmb3IgdXBzdHJlYW0uIFdlIChJ
bnRlbCkgaGF2ZSBrbm93biB0aGlzIGZvcg0KPiBzb21lIHRpbWUsIGFuZCB0aGlzIGlzIHdoeSB0
aGUgcGF0Y2hlcyBhbmQgc3VwcG9ydCBoYXZlIG5ldmVyIGJlZW4NCj4gcHVibGlzaGVkLg0KDQpB
bHRob3VnaCB0aGUgdXRpbGl0eSBpbiBxdWVzdGlvbiBoYXMgYmVlbiBlbmhhbmNlZCB0byBwZXJm
b3JtIGZpcm13YXJlDQp1cGRhdGUgYWdhaW5zdCBJbnRlbCAxRy8xMEcgTklDcyBieSB1c2luZyB0
aGUgL2Rldi9tZW0sIHRoaXMgbWV0aG9kDQp3b3VsZCBub3Qgd29yayB3aGVuIHRoZSBzZWN1cmUg
Ym9vdCBpcyBlbmFibGVkLiBDb25zaWRlcmluZyBvdXQtb2YtYmFuZA0KZmlybXdhcmUgdXBkYXRl
ICh2aWEgdGhlIEJNQykgaXMgbm90IHN1cHBvcnRlZCBmb3IgSW50ZWwgMUcvMTBHIE5JQ3MsIGl0
DQp3b3VsZCBiZSBkZXNpcmFibGUgdG8gaGF2ZSB0aGUgc3VwcG9ydCBmb3IgdGhlIGRldmxpbmsg
ZGV2IGZsYXNoIGludGVyZmFjZQ0KaW4gaW4ta2VybmVsIGRyaXZlcnMgKGlnYiAmIGl4Z2JlKS4N
Cg0KVGhhbmtzDQpSaWNoYXJkICAgICAgICAgIA0KIA0K
