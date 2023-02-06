Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id CE6DC68C35E
	for <lists+intel-wired-lan@lfdr.de>; Mon,  6 Feb 2023 17:31:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 507BB416E7;
	Mon,  6 Feb 2023 16:30:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 507BB416E7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675701059;
	bh=zREhPp6GzeIuRzzmJXE0dfwZDOb8CRwo2VqtBTO0m94=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=DjYZc1Hlnx9eMJmJCblXHJm99BLAj2PxIx/6OkZ4jCbq6pwzGIiy02tSA8K9S0rZZ
	 oftPzDATJHY1vcr1UuBRnOG6QBaKakQVlmsUchl0vboNrpSuIKqAwEqQCDdZUf4s6m
	 +UbVGELFvKZWNyXocRXj4RAe8f/+QX147Eoogtw7uzO+il+fN6vnXerkJQpsCzo9h0
	 SAgXn+EBS5Ir4JFlNRhLGc9N7GWeU9UEWSf1P7Irj5byPpsu1MKsCjJR0xcdBzkcPR
	 Dqd2liFTnQFAB+Wbsu4hd0DTy2LeGdNbDj63v2Rj9pj9+q+pGXT82rFdp5WEkRD8zT
	 jlripeGE3Sw9g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id m5YyLG2tjz22; Mon,  6 Feb 2023 16:30:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id DC1F4416E3;
	Mon,  6 Feb 2023 16:30:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DC1F4416E3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C98361BF343
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Feb 2023 14:53:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id AD29E415E2
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Feb 2023 14:53:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AD29E415E2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pCBiPM0Z_vc6 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  6 Feb 2023 14:53:35 +0000 (UTC)
X-Greylist: delayed 00:07:08 by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 198B1415EB
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com
 [68.232.154.123])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 198B1415EB
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Feb 2023 14:53:34 +0000 (UTC)
X-IronPort-AV: E=Sophos;i="5.97,276,1669100400"; d="scan'208";a="135763840"
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 06 Feb 2023 07:46:20 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 6 Feb 2023 07:46:21 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.16 via Frontend
 Transport; Mon, 6 Feb 2023 07:46:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ltEfoa9kB2f0IbNsDGgfYYcn0ZLltiIWeh0hYUosCTVfEju+FEMnsHacu8TcKxWkLIIVlEesawKCXBORnG3b5Mi19pf9JGBnPJ0wS0zy5hWWYGZVtBw9ySyNu4shG+BVTycEU/OysVeRp3XOmDfCXgQnuTGrzr3gWkm49p8XNyoQCkTPTDx81RJU2fUTWMbtFp+B7C7ZMsjjX8j43FOanNjV3qImH61Ym45adpnEhewIVqBb3cyE5jDpH/DOFcJ3wp8rhFo6bv1nVqfj7g1XK+8iPfz1aqYx9n+hIDEOcr0GqSSLD94U32Iy/ueHMOdOz+JbDh7vhfJUjMnfv49hCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZaYkIWMfcG9TLdutmPiemjcxNgahUn8lVhERyZkT0/4=;
 b=ByP9nBz6Tx7+fLDKJSlJ6VAVVVrTFlAJ8CTGsXvyIOjt8SUkI9+3Q4WV3rHnQzGaX86JeAdjSvrAn9bFOwkFJqE7XRyQrPt0g/jXWAPTMqFIkkh/4jUh/arjPFOVEA0ow1PGamHwe0bsHcloxpZqZ/PtQM5iNC1co7c9JWUO1yMZ8m5GkgbQspevXmkN9zahfF7xFc8OVFE0PV06TPEB75cGIq3wpo3bhLXMTU8QfgxlL+f6awjaD+/uFBffXj4xKd5WuS85TJCy5VTW1aN6/J2ff5AB7rjvb4GgFDFjTVM8AoDi/mixkUdcJu0Va75304cVUqemHJQIH9hYlw2WIQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
Received: from DM5PR11MB0076.namprd11.prod.outlook.com (2603:10b6:4:6b::28) by
 SA0PR11MB4621.namprd11.prod.outlook.com (2603:10b6:806:72::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6064.34; Mon, 6 Feb 2023 14:46:19 +0000
Received: from DM5PR11MB0076.namprd11.prod.outlook.com
 ([fe80::33d3:8fb0:5c42:fac1]) by DM5PR11MB0076.namprd11.prod.outlook.com
 ([fe80::33d3:8fb0:5c42:fac1%5]) with mapi id 15.20.6064.031; Mon, 6 Feb 2023
 14:46:19 +0000
From: <Arun.Ramadoss@microchip.com>
To: <olteanv@gmail.com>, <UNGLinuxDriver@microchip.com>,
 <vivien.didelot@gmail.com>, <andrew@lunn.ch>, <f.fainelli@gmail.com>,
 <kuba@kernel.org>, <wei.fang@nxp.com>, <edumazet@google.com>,
 <pabeni@redhat.com>, <o.rempel@pengutronix.de>, <Woojung.Huh@microchip.com>,
 <davem@davemloft.net>, <hkallweit1@gmail.com>
Thread-Topic: [PATCH net-next v5 02/23] net: phy: add
 genphy_c45_read_eee_abilities() function
Thread-Index: AQHZOjI7xbLjcLVlr0W7AfhUp+nroq7B/yUA
Date: Mon, 6 Feb 2023 14:46:19 +0000
Message-ID: <af4fa39e31a6275a07c577cb3d7fa5f114bdda05.camel@microchip.com>
References: <20230206135050.3237952-1-o.rempel@pengutronix.de>
 <20230206135050.3237952-3-o.rempel@pengutronix.de>
In-Reply-To: <20230206135050.3237952-3-o.rempel@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.28.5-0ubuntu0.18.04.2 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM5PR11MB0076:EE_|SA0PR11MB4621:EE_
x-ms-office365-filtering-correlation-id: 7a6e399d-1fbf-4e17-18a8-08db0850e8b7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: XItCIV2PMdru2KE47HHVPbjVYiE8FrZ6m6zGHZgmDt7maHol7Wnn3D/b94ohK9kV/SDiES95Jw6KM0h6wV5Ljk/nVTtID8OQ6WA8DVxdv6CndU/0udolKZXYQu9/sjbKJCXyaEBmMGNqMmGXjzqDJLwllSB9b2PiZDHO6MH7IT3Bgbhy6BfSm00O3ePJ1n4sT2g79WbzJC2MrOjjNyvthnATMZGTMti9sEfOgde0PYoLro3aq2zVpM2nhJUp3q0vappkn6GwYNUho7wpwskePgNTWVVHNb34uRiARlteiGpWO30GawaEYmKHn/pSiK0ZpS1ifnmhJl7hmckCYesmetiKgvcnKmsPYgZapHgbW8YxBgRUYspjZwI3R8Y6gtCN4TsClaElcMwWmW2GeS+iHInXvGRrUUKzOP0o/3+8uoBlsnWblp+Wc78SerlzOW+V5tLNVjKi6howBaK/5IZvuTlIYFW3vujYm4TfsY/M+t/UzrDgX8ZQUsTh6YeQWBRDs48amdMl2X/vIWj14i52/aSn5+koOW4Ar3BwoGLrgReu61W1X8oQgckpHGbnc0AN3i3x/07sH5gj0+kne7yFdhD74cYtbWd5tKCmg4bkwsdl/tYdB3WP/+ZHnorzMgERul5vDQtc2QXlMqmWMj8bsW3yw7bO+/0xXFGlgIGT+RSRawWrVednH6ogIZYTyeob6jYCovatHpOGL0Xe92l8U+gcfEIfs/YAq8oDtA/x7FgeWvHszFI5UBIv0UjR4MgE
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB0076.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(346002)(136003)(396003)(376002)(39860400002)(366004)(451199018)(122000001)(186003)(38100700002)(6512007)(6506007)(36756003)(7416002)(2906002)(83380400001)(478600001)(6486002)(71200400001)(110136005)(54906003)(38070700005)(64756008)(2616005)(4326008)(66946007)(76116006)(66446008)(66476007)(66556008)(91956017)(41300700001)(8936002)(921005)(8676002)(86362001)(316002)(5660300002)(99106002);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NnVROTRLVm9WeGVaQ2hkWThNRUFFSEs2bzhWWUZydXlYTktJMDYraklTRXlM?=
 =?utf-8?B?UDkrL2JmdW5TQ3dKdGNiYnV6UW91ZmppclV0RnhuWngwZC9ocjJxS1FXbkFx?=
 =?utf-8?B?YkErbnZGYnZ6a3RhcTRDeHAyNEZ0ODMyN0M1ZnUwQlpBaUFqODB6RDYvU1lF?=
 =?utf-8?B?a2djQmJCY01xY3RaL1dORmhQODhVeHk1bDdJWkdoZHh1djlZVlY3NnBXRmhU?=
 =?utf-8?B?bmZ1Q3V1V2E3TnZFdGRrRjNWcEVlMXlHanZJSmRlWTZxdEI5eXBOU2MrOHE1?=
 =?utf-8?B?TEdidG5jZXRDcE1mS0tMWUR3WlRUaFlRTlFLOVFUMGRPNHdYNUxUanZWcksz?=
 =?utf-8?B?OHltY1dyK0ZKREtsbERFZnBwSzhyTnpqQkRKQlU1cDViR2lFVzBOMXNuc0VE?=
 =?utf-8?B?NmRkS3hIZmdxeldhL3BvbW1SdDNSVlR4ZnVSckdicWRqS0h4ZE56OVlRUlJZ?=
 =?utf-8?B?QUJYMUplMmZzTlRDdllZZlhPRU0yMk5CemdQUUdaMjZ4Q0c5OW51T3FOYkxR?=
 =?utf-8?B?b3Z6aS94OERjckRHN2xuV2RzSVpFUjJaU050YWk4ZWVBTmRiWk1KVTJvZ2dx?=
 =?utf-8?B?RUtpa1Vwb3gzdjFacjRQOHlOYTYyV1FLS1FEZjMydGp3UEFYWHpkZ0RyOUZx?=
 =?utf-8?B?bDMwWCs2Mm50V1BqWmtsL3ovQVAwbHAzTVhDMzhmVEwrOC9JRzVTdGJwL2tt?=
 =?utf-8?B?NDFhYU5UZUNrRWZMSHk1Nkp3by85WXhNc0ZabmVhOXZiUWdwZ1VRUHhOb2Fz?=
 =?utf-8?B?TTNITFlQaHdoV012K0V3WFNubU90bUVZQWRCKzRXR0doWGlDMmJEVjFpTlJP?=
 =?utf-8?B?bjNIWG5CNklFd0lSQzFOVkxZMFFtZXRuSEpDK002aVREeE9sbjlIUi9HRDhT?=
 =?utf-8?B?L3UxdHdOSmkvZWc2VXBMZTJuU1BZYWMvNU5vSEFEZUk0clFDT204N3J3dSt3?=
 =?utf-8?B?RmtiRDhHMjFkU0FTa29Edkw0TWoyMGZFM1Jma0E3Qmx0K0dTN3d2QVVHUFBh?=
 =?utf-8?B?eUZhR3E0aWlOeDliU0Z5Uk5uOVRDdVRLTWdONVltd2pYSkhyZUZmT2l6SmFE?=
 =?utf-8?B?NWhFd0F3d25pQkFyRjZPNFhIbFhuU0d4N1I4Ti9WZjkvSVcvNnpxVXorUEg3?=
 =?utf-8?B?M2dxT2d6U1pYZjljYVhxMEhxK3FqVTd0VkNsd3BNVFF2WkY1VzlzdzM0OVds?=
 =?utf-8?B?RDROQW5qRW4yZ2NTRVI3RklwWmNJZUpWMXVhK1l3QzV4RWFwVFlvSkxzNHZQ?=
 =?utf-8?B?WEpRNmVrTmFxcmxvdG15L0wvM1hZQTc2eHRsKzJhVTB2ZHZJTzd2YzBJRkFS?=
 =?utf-8?B?amhHTmIwRnE5TjR1bmp4bXZndWkyY3kzN2txZitpQ1orbVgxU1FCcW9HVEhy?=
 =?utf-8?B?TFBvMER2bk9vTDhmMEFreXdYNDkrcGlMcUdDbjFweTVZM3NKS05yb2dIcTBC?=
 =?utf-8?B?M2gxay9Xa2Vrc0V3NEZkUzE1blZYQ1dxbTduZllYZjhiYmdwZHRVQ2VhUlE2?=
 =?utf-8?B?U0lqTWc1SURVdXI4dlkrVURCbHpoUkxVR2g4Vm5YaDczS0JCc1luZG9XdElp?=
 =?utf-8?B?SWZPcmVOaUtJMHhvLzFHS1NKRlAySTBTVzREYmk3YTY5LytGR1lDa1JxTGtW?=
 =?utf-8?B?em93NU5Eci9tVERaS294VWxMQVZaVXB6T0t4NkNMN0Z6azV4RVYrSUpudnlC?=
 =?utf-8?B?TzFLN0tCQThpemRma054YWtqek9aYXpNK0RJMDZjWUxNVzhTNUVhcFBUcUZa?=
 =?utf-8?B?aUtFRUdrMWJWeTIxUnZrWm8rK3hZWEdZbkVJTzBXTHVWTEhJRnRTVmx6aC9L?=
 =?utf-8?B?UFp5ZllwSTBzT3E0QjN3bm5rOERIV1hzQVFPajUwZUhHc3JzdHpmdGdkeERP?=
 =?utf-8?B?bER0eFIzaXVPSEJxRjdLUDk1N3gvWkVNQVVIU2R3a3RtTDh4RU50OFlKVUxw?=
 =?utf-8?B?c0Z1SjVXcFdCVFdaM2ZtRzhMdFNBaEVNR2dCc2dIOE5nNkd6RnN6UjQzdUtW?=
 =?utf-8?B?YWtWdlBvQnVqWWczcEIxRVRPT1docUZoY2JEZjRWeDhNamx5SE9pTmI0UndG?=
 =?utf-8?B?dk96bjhXajFXVkVUd29qNHJaZ2wrR2xSMFdYWUhlWjU0WllqTElOZmp5ZE10?=
 =?utf-8?B?bW1hVHRoQjlJdk9JaG9ZeUgzbjZNK2ZKcW8zUlRiS0hQNS9MRVlTU3l5NG5I?=
 =?utf-8?B?clVseGRwZXM1U21iSld6bUNEQ2swLyszbEY2TFl5YW5ZQVdRQ0tFTkdTZXFQ?=
 =?utf-8?Q?9khSJwZlb6exs9eBRP1ZxuyIJo675MgbXROBYoVPhs=3D?=
Content-ID: <01E815184C94F149A355FDDFF9135213@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM5PR11MB0076.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7a6e399d-1fbf-4e17-18a8-08db0850e8b7
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Feb 2023 14:46:19.7307 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dQa6qA861eLQNErGZq7W0LeYAE7L8VFqRLuAwbHXJFXoLsCyrfLLvU611+CWiPUlz5+UWIpmQb5VTNrFdUs83jdiZwRJA90SmFoKU/TNnIA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4621
X-Mailman-Approved-At: Mon, 06 Feb 2023 16:29:40 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1675695213; x=1707231213;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding:
 mime-version;
 bh=ZaYkIWMfcG9TLdutmPiemjcxNgahUn8lVhERyZkT0/4=;
 b=Sb4Vx5+nH3Dj5sHatpSVK4jtjFnS4BBkdf1Pmg4JlY+T1/4+Jaws5QAL
 va4AsgRIgEdOXTW46vxdYyd7C0w9RhSsxVeuz4W5jUef38eG3uau3Cum2
 eHs1M/azNHp6PfFQ+7xLs3cqIFsOGY2rDan1Gr5TcDSFctS8TNWH+TEK3
 fhuIXxL+hY2FlRwKQ4C5RoDZZ5Jm+AQEX+Nr4vssiTb7yISzqru4ss7+l
 a5sx5LyPOPOSWGq72Wc+lW+uMFwVNrle8ArRWir/0/MuXRPXA7i9lPkZy
 0nR7A6q8lgKnxRCAAMXNbXg45YOFwqWtjspctgICA5Q5BSrY7uQbidwvO
 A==;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZaYkIWMfcG9TLdutmPiemjcxNgahUn8lVhERyZkT0/4=;
 b=jigxnGnONnicQm1HA/uFd3G60kZ7JMKELFv0WteI23fgbkS9cCVBgJeSFE4LMU/BGe/eXhqTxvbqH8DHYhCMoXtPofZyKCJDK/ZdiYdO6F/j7n9MYAhhsme11pcRcUjd2BwPS5bUrTT8H+Tsb+moTEmqdW52B4SOZRPa2QUPBiI=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com
 header.a=rsa-sha256 header.s=mchp header.b=Sb4Vx5+n; 
 dkim=pass (1024-bit key) header.d=microchiptechnology.onmicrosoft.com
 header.i=@microchiptechnology.onmicrosoft.com header.a=rsa-sha256
 header.s=selector2-microchiptechnology-onmicrosoft-com header.b=jigxnGnO
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=microchip.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v5 02/23] net: phy: add
 genphy_c45_read_eee_abilities() function
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org, kernel@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Oleksij,

On Mon, 2023-02-06 at 14:50 +0100, Oleksij Rempel wrote:
> EXTERNAL EMAIL: Do not click links or open attachments unless you
> know the content is safe
> 
> Add generic function for EEE abilities defined by IEEE 802.3
> specification. For now following registers are supported:
> - IEEE 802.3-2018 45.2.3.10 EEE control and capability 1 (Register
> 3.20)
> - IEEE 802.3cg-2019 45.2.1.186b 10BASE-T1L PMA status register
>   (Register 1.2295)
> 
> Since I was not able to find any flag signaling support of these
> registers, we should detect link mode abilities first and then based
> on
> these abilities doing EEE link modes detection.
> 
> Results of EEE ability detection will be stored into new variable
> phydev->supported_eee.
> 
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  drivers/net/phy/phy-c45.c    | 70
> ++++++++++++++++++++++++++++++++++++
>  drivers/net/phy/phy_device.c | 16 +++++++++
>  include/linux/mdio.h         | 26 ++++++++++++++
>  include/linux/phy.h          |  5 +++
>  4 files changed, 117 insertions(+)
> 
> diff --git a/drivers/net/phy/phy-c45.c b/drivers/net/phy/phy-c45.c
> index 9f9565a4819d..3ae642d3ae14 100644
> --- a/drivers/net/phy/phy-c45.c
> +++ b/drivers/net/phy/phy-c45.c
> @@ -661,6 +661,76 @@ int genphy_c45_read_mdix(struct phy_device
> *phydev)
>  }
>  EXPORT_SYMBOL_GPL(genphy_c45_read_mdix);
> 
> +/**
> + * genphy_c45_read_eee_cap1 - read supported EEE link modes from
> register 3.20
> + * @phydev: target phy_device struct
> + */
> +static int genphy_c45_read_eee_cap1(struct phy_device *phydev)
> +{
> +       int val;
> +
> +       /* IEEE 802.3-2018 45.2.3.10 EEE control and capability 1
> +        * (Register 3.20)
> +        */
> +       val = phy_read_mmd(phydev, MDIO_MMD_PCS, MDIO_PCS_EEE_ABLE);
> +       if (val < 0)
> +               return val;
> +
> +       /* The 802.3 2018 standard says the top 2 bits are reserved
> and should
> +        * read as 0. Also, it seems unlikely anybody will build a
> PHY which
> +        * supports 100GBASE-R deep sleep all the way down to
> 100BASE-TX EEE.
> +        * If MDIO_PCS_EEE_ABLE is 0xffff assume EEE is not
> supported.
> +        */
> +       if (val == GENMASK(15, 0))

nit: Magic number can be replaced by macro.

> +               return 0;
> +
> +       mii_eee_cap1_mod_linkmode_t(phydev->supported_eee, val);
> +
> +       /* Some buggy devices indicate EEE link modes in
> MDIO_PCS_EEE_ABLE
> +        * which they don't support as indicated by BMSR, ESTATUS
> etc.
> +        */
> +       linkmode_and(phydev->supported_eee, phydev->supported_eee,
> +                    phydev->supported);
> +
> +       return 0;
> +}
> +
> +
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
