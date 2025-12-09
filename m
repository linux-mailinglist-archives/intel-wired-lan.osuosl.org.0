Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 504F2CAF109
	for <lists+intel-wired-lan@lfdr.de>; Tue, 09 Dec 2025 07:47:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EC53160BEB;
	Tue,  9 Dec 2025 06:47:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PyaBr4Hpbn9S; Tue,  9 Dec 2025 06:47:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4824A60DD6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1765262821;
	bh=A/Eedo/+fcYYUyPHPlEeAE0ryhYxXc8UGSiZJud9HSs=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=y7VWkJnNPecR/5Qkjn6xkXeJnl8nGUog/B8xHKss1cPQQM/70O+2/0wFG+o09S+r6
	 6OKFisZdPsGQTh1f5cbsvJbByVEkbuMNIpKcYNnqO8I8rSnGPLJsd6j6ThMmz7k7ii
	 jfKXTEf73nKz9Pg5aKTbAW3MXxoLLTFlTynUCNA/9TlhaigB4xgG2P/Obp5B3d+WGt
	 hhirvyYBOFZz8TjLLf/tOzkUcn4kRM5oCOALKWGreRblWzMbAeDRZWD4Q8V5ZslmdB
	 mWdo4ROSpUwUrNkMIWiKCiR28iwbstUhLeVk5vtRN9voEDSpQWaVvVScRs4ZMphn3p
	 nt0yvA487hPnQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4824A60DD6;
	Tue,  9 Dec 2025 06:47:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 6F643151
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Dec 2025 06:46:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6C8B04009D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Dec 2025 06:46:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Es_IxbC_jx0k for <intel-wired-lan@lists.osuosl.org>;
 Tue,  9 Dec 2025 06:46:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=40.107.159.1;
 helo=osppr02cu001.outbound.protection.outlook.com;
 envelope-from=vivek.behera@siemens.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org AF0F84008E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AF0F84008E
Received: from OSPPR02CU001.outbound.protection.outlook.com
 (mail-norwayeastazon11013001.outbound.protection.outlook.com [40.107.159.1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id AF0F84008E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Dec 2025 06:46:57 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ESOg7KuJhQT3ViBVJxGhwb5B6dgy7qDYHpCy9msf6Z3ARgB04tUiHsDeS+ncora7iSYgXuNMY3hHJAd73w1VfTeRE7btSn1B8lFYARzmVoBAcxBy+SYZJ7lh+6KlKKuLm6/BAEQ27gssTBN7Q7r0GkivXW1WXhQ8mLnLRTIxOquMWyNPuN6PkbRBg8E4+8pqJtSBkkYJkVM6gStw0Srbi90y0rehPLeaiqyBUJpev3nVgl3p+d/at1A6GEyOzzrRA6wSiH5/OaLaQJc5sAEBoEw6udRSAT6aTZWOhEfjelXsR3st7lR06WccQrYLzB72OnE/Fwa27ZFk/m0JqNxCqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=A/Eedo/+fcYYUyPHPlEeAE0ryhYxXc8UGSiZJud9HSs=;
 b=QAmvbKJrYLPF4/KjjB9iNgZZtuSvcpVVGwZ/W2/meToisql40EHsAf+d4PHEzYaQaBWLeQPZrVAckPVMvjomb41ZyqSvcPduWDGI6QVtLG055wYZBKTOQV8EtM+MG4aFkA8eVqqr3VICf2e8N4WmLveOMkpBnCczY3I2IOWWZQTd9cn1is22A5IIIRNiPcL5sPiky+SUlDx1YbkH+QO2OaN0antV+8m+xGd5l9wYWq9PwgcG4iUl0DCiWBb+Ni2BQj3dGTY/9mhcx3/Wy1AGoUvGzNn6t4ZTrrcZ22W1vYHzYqT0hnciKxhT3fKKS6LhfKIWVZf6LuivSYjqeND/UA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=siemens.com; dmarc=pass action=none header.from=siemens.com;
 dkim=pass header.d=siemens.com; arc=none
Received: from AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:48d::20)
 by VI0PR10MB9286.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:800:2ba::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9388.14; Tue, 9 Dec
 2025 06:46:53 +0000
Received: from AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::456e:d0d0:15:f4e]) by AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::456e:d0d0:15:f4e%6]) with mapi id 15.20.9412.005; Tue, 9 Dec 2025
 06:46:53 +0000
From: "Behera, VIVEK" <vivek.behera@siemens.com>
To: "Behera, VIVEK" <vivek.behera@siemens.com>, Jacob Keller
 <jacob.e.keller@intel.com>, Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek
 Kitszel <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Thread-Topic: [PATCH v3 iwl-net] igc: Fix trigger of incorrect irq in
 igc_xsk_wakeup function
Thread-Index: AQHcaNeaSakSH3U77EmggLkgUYzh8Q==
Date: Tue, 9 Dec 2025 06:46:53 +0000
Message-ID: <AS1PR10MB539202E6B3C43BE259831AD88FA3A@AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM>
References: <AS1PR10MB5392B7268416DB8A1624FDB88FA7A@AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM>
 <4c90ed4e-307c-429a-9f8c-29032cc146ee@intel.com>
 <AS1PR10MB5392C71EED7AB2446036FB9F8FA3A@AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM>
In-Reply-To: <AS1PR10MB5392C71EED7AB2446036FB9F8FA3A@AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ActionId=d3ac5aa8-3a96-4e14-95c7-b25deb848df8;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ContentBits=0;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Enabled=true;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Method=Standard;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Name=restricted;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SetDate=2025-12-09T05:54:50Z;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SiteId=38ae3bcd-9579-4fd4-adda-b42e1495d55a;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Tag=10, 3, 0, 1;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AS1PR10MB5392:EE_|VI0PR10MB9286:EE_
x-ms-office365-filtering-correlation-id: fb10e82c-e29b-4b4c-12c2-08de36eebcd6
x-ms-exchange-atpmessageproperties: SA
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|7416014|921020|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?ZmRHekQ1UHZuUmFQOGRrUHg3UytHUHJlNE85Y1dudUdZS29UVm5DSG53cFN3?=
 =?utf-8?B?ajVQb0wrSDVoL2VIMDR6UTR1OXpLTHh2TTVUZTVXWThhcVdLRGhWY0pJc29K?=
 =?utf-8?B?Z1AyTVB3VW81V2FNRElOWlJSSEJZcEIybTFXaENIcjNoeVJZNGJFNm9yQmp3?=
 =?utf-8?B?aThBcXFKYlV5VDF0MnVoZU83dzRBcVo4SW81OE9rYUxvNG5aYVYvNUpwOTc5?=
 =?utf-8?B?dDA2TEFPVFlwMnI0ZTk0cHBkeVhOamxNQXg5WS9OK0VQOUEwcTBVa3lMb1dX?=
 =?utf-8?B?OWlodjVoM1A0ci8zUzY5OTNld0hPSFkraUxtNVRXODd1eTNCU3BSbE9WbFJi?=
 =?utf-8?B?azh6WmhrSjN3N05oT3R6STJlVkY1R2NyenBkZUg4TFk2OFd3SFRKZTlsTGZx?=
 =?utf-8?B?VzM4SFlzT0pybjNrbHJmN3dmTGt4a09BZFFkbEREenZTUkNhMXk1QlB1Q0p0?=
 =?utf-8?B?WjgzQnZvdFEzQ29KV3BnamE2TUZFMHRYYVpmZnQyME8zRU9WREkrYjVUOG45?=
 =?utf-8?B?RVh1bXIzcytLWVBNaGlWbW1tOWRYb1llSG1ieWFxVElOU0FGbk1PYnYwV3cz?=
 =?utf-8?B?WjJudWNuMUNvZmRqZDJyU1gxdHFFNnpNMllNYXAzeFE2eURGS0x2clBkN0RX?=
 =?utf-8?B?eExrNGdycXRrNkZnejNnR0tYMkkzKzhzZ2VacDNPendFUlVUNE1aNDBXMFFR?=
 =?utf-8?B?eGRzTWpOT2RlU01uVUtkZ2w3VjAycDNjejBIbTVIamp6VUc2UHJXRzBCYlNy?=
 =?utf-8?B?eHgvRW9mV29IejBXTk1XYys4dHErRGN1SG05d0JzV05xL1lkaUd3b2FneEdN?=
 =?utf-8?B?L291UDVlV016cUYvV3lWUDF3QWpoZVpZWUNZRHJ3ZUYvZG85bFpIenJSNEZn?=
 =?utf-8?B?dVB6aFFqZnd4c0VnQnBUZ2hoV3B5ZHJxSnMzenMrRjB1YmYvUmU4bnNaSmQv?=
 =?utf-8?B?UDRPWFppWVpJQ2h5MHQ4UXAzbzB0WWduTkFNUmQ2a2FidEpxYWZrSU9GQS9M?=
 =?utf-8?B?a3hWcUNsMUlJdlQyMms2S1FkT3gvUTdFUDVtck40WVdJcHpFbDhwUS9BZmRk?=
 =?utf-8?B?eVdZWnNadVdRSm1McDRRUG96Q3dvM1ZnTkl4M0xPWXlPZUwrb2k0VHlDamxq?=
 =?utf-8?B?RzdsSVllZ29YTTIrZ3lCZ2Q3MUczQkFSdFRyWWw3blhlUFBTcmhCeDMwRDl1?=
 =?utf-8?B?dVpRNEJCamkycTErTnNneGxoazRvQ2FoaDNGc2xCNCs1MXh2WXJYWlR4TjE1?=
 =?utf-8?B?UC92UDNpY0FEUWdUV0lGcUxSUWExWHorQmg0aGZaL29SMEdTU0tSanZ6L2o1?=
 =?utf-8?B?REMxRVFtaEZteUZqVFZyZ1hRNkxhVTZmNTRTR0R1UXJGQUtwdXovZ1lZNWtY?=
 =?utf-8?B?Z1ZZbGx0b0xzSnExTVpXVUJxSjIzcGIrcVllL0s0bjJZTERqRyszK1ZpTGdF?=
 =?utf-8?B?TEV5Q2pQalh0VzFzRUUzQXgvNEtxaDRlTG5zTURGUGw0cjJSQndjTW1sNWx4?=
 =?utf-8?B?WllndjMySmpubW4yN3VKWXJFNTZPR2tPTzEyd05YQkNGV25xKzlFZEI2ZERo?=
 =?utf-8?B?WjdoWHpySUdDOUQrRDUrT1RPMUU1TnJtRktCaTlEWllmRHNWemFJUTdXc2hw?=
 =?utf-8?B?WDFNcFFhZk1XM1ozbkRkRGh4SnJuY2VmKzVhaDMvcTl1Q1pBNFRrbFdxUjYv?=
 =?utf-8?B?Yk1RelVDM2l0azFzWE12SXZwcHhpOUJOTEY0R3JqVDVCMFZtT3ZHN1Q1dXlu?=
 =?utf-8?B?SjhNSG4zWm1TL05zcnBXcTdHZFZ1TThURUtja3A5a3dhcXVoZHg5TWt4M0hz?=
 =?utf-8?B?dXZ1ZDZwaHlVK2FneUxEQ2pLcXkvaTEwWm8zSUtwZjVrckp5aS9LQlk3N015?=
 =?utf-8?B?bWQ4bEtYUjVOQlpZbWJydmU4NDNkTlRuWE9LUmJZTEFXSnBKRnpqM0xZdGJ6?=
 =?utf-8?B?LzVCR2c4SG54Rm9nWmVteGtaRi9ORFVYLzRxbjM2R3JBMEl4MmhiRjRZYWlv?=
 =?utf-8?B?ZlN2bHh3cVVkeWc1Zk9VWEtCYkRPMUVjeUFlZFl3QmJGOXFoQjZMdWRKWVBE?=
 =?utf-8?B?WnhkdTNRaXpxQ1NNQWUxQm1FdlNmc3NyQkh4dz09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7416014)(921020)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bDhrODFPNWI1LzdkMDljMUQxQ2RkcHZaNDVaQ2pJcFRFUERjQ054WGJ1d0hj?=
 =?utf-8?B?b0FVenFvRDJ1RHNMbDl2YUdaMXhUb1lkZEM2TXlIWnI4MmdJVWhQVnNjRmFR?=
 =?utf-8?B?VFZ2cklhVWVYM09DcXg4akJEZnU4ZmZ0MUJyK1V2Y1VQQjdBSGZyVjFVMVZR?=
 =?utf-8?B?Vjh2Yzh4WlcrTHMrT3dqLysrYlJjK1FWR2FzWmcrNXJWbjgrUG9mR3lYWUkw?=
 =?utf-8?B?VVJ5d3RITE1XWU51TUpVRWR6a2sxbExQOUkrWDRmazBtYXovWUI4cVhnVU5F?=
 =?utf-8?B?OXpSNTEwdG04SEg3Y2JJWkNzNHlUeDZYNnQyWDY2T3BKWS81V1lhMy9aZGtk?=
 =?utf-8?B?R3QyY0dOS3ZHbDc0N1doT2tleXhNblg2Vis4dllDTlpPb0o1cWc1OVNWT3pO?=
 =?utf-8?B?bVR6bUFEc096bHl0UGprSHgxZ3Y5OElmR2wrTEowZEp2bjJvTE05bUpyZlRG?=
 =?utf-8?B?UEtpQy9yMTFoZSttVnlWZU5YRy8vUk9zR1NYUnExSDJNMEtDTlJEZjZGTUZF?=
 =?utf-8?B?NUgyUHZWRFdGb1Q2ZXFGVGxXemxCUmxaUERHenJKUnRuOTV1blhUOVA0bUNy?=
 =?utf-8?B?N0RBQ1ZIQWo5STZyZEdZNi9FcmhsbTR6VkxkRVNKTFd0dVFFYm8zRHpFdmpG?=
 =?utf-8?B?cDgzYWFTSzlHYm5jdUJLM0VuUVFOdzFPamM0clY3WE80OHRPMjBGUDNGYlVQ?=
 =?utf-8?B?eXc4VENZU0VLUTFDb1JuOVNaR0lvNnJGdGh4OFRCbmNxVWlJR0lEY09NT3Bl?=
 =?utf-8?B?MVJsLy9jbGV1akY3ck5BZjRIK2FoNHA1cDBtbzMyUGdlT0Zmd21lUFVEbGNy?=
 =?utf-8?B?VytyWWRKckVTS0NZQ3BpM2lMR2hrS1JPNG4wY1JHazc0bVRVZitETHdERTY2?=
 =?utf-8?B?SndmaFdwTUhuWjZUMFcxTEl0eWovVTVqck45MSsrRHkvY3F2SFR4TWhQbE9q?=
 =?utf-8?B?MUxHc25CWFRIdFA2R1ZEV1FIWjgxV0lXN2cvYytFbnFUSmt6YnB2ejE1S0w4?=
 =?utf-8?B?bkt2M3g0L0VyNUVjRVV5WTYrM0E0a3B5T282OUIrNlA5SXlxYVhOc1dFcVVJ?=
 =?utf-8?B?cDVJRXVVUXJhTFU5UitCd0FOSzVCVE1hckVKMkE1S0VlSUhMUEpMWkJGVjdk?=
 =?utf-8?B?L0RyOVRKTDlwL3FHdkhxRDNOKzdhZHF6N09ISmk0cm9TNG9jRm13Q2FnYUZo?=
 =?utf-8?B?Nnd1bDFsd2pOc1UxQTdVN25WK3M4dlRQemx6VkhUL0xPeldEVDNOcUZ2Z3hY?=
 =?utf-8?B?emFURzMzbjVqVlBYWG5POGR6dE55eHk2R3hUZTdRZXgwNHR2c2RSdDUwNnY5?=
 =?utf-8?B?czk2ZWxjMkpqQTdORXkwRUZzQkE0WGZvcHRLWmpLVVAxTHAxb2g0RHY5RUd0?=
 =?utf-8?B?ZmFzTDlGZUJtdFEreWR6Njdqd3djUWk3Tkt3RDFtSlVzMkZKYzc1UXJXdTRl?=
 =?utf-8?B?c1ZSaVNGQWRGaWIxYmUrUU5hazFrYXV3NG0vRjE1QWNLN1JhR2p5ZC8zRUh3?=
 =?utf-8?B?aTJqcEJIZGdpTDB5Ti9HODFFZTQ5QitjYnk5QzBzNDd6SGlFbzNMZnZwd2sx?=
 =?utf-8?B?TVpsQ2FsZFcyZWJuRGdOR1BudHNVZVk5WHRDSDRncmo5aU5OaVlabWt4ektv?=
 =?utf-8?B?UkxuWjR5VFllamdoeHBJdEhJbU9DZ1VvWEVyNDg2RUJKZXN1YmlJUTB1enBE?=
 =?utf-8?B?bjRtTUl6VExRelBScEpFUkR4YThGc1RJd2JjMmUwd2t6VkxhYjFqVmMyVDBs?=
 =?utf-8?B?WkRiV01ta2VoblVuWXVCV21iOFY0dm5TWWhkd0hNVk5sSGxYWE14Q3ovVG9v?=
 =?utf-8?B?cW5RK0FnRzljd3p6NHVGajY0cVQ4bFB1WHo0MXRwRkhJRThGd0NIZVIzVWti?=
 =?utf-8?B?SlpxdytBc1hjU05pdmhBTWhIc2Mvb1RUQi91V1pmSkJkMVZFeEhFcVN1Tzdy?=
 =?utf-8?B?bjdUWm12NmFYNFVWT0IzUG9aSWhLT1dvQWdXQSsrUlJpeU5TV1NJNk5pNFFU?=
 =?utf-8?B?TlR5K0k0SytndlpTd0dNMjVUZXo5VG5aWnlFbHRkTEk2d1lTdEdDVUs0RDRT?=
 =?utf-8?B?aUgzTEMrSmEzRWU1UjV1M0diOTB0TllMcnBOYlNIalAvbUlxcDhtUHBDR1pD?=
 =?utf-8?Q?NmLiIw1pXtp9utANixy/BD6qv?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: siemens.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: fb10e82c-e29b-4b4c-12c2-08de36eebcd6
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Dec 2025 06:46:53.1240 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 38ae3bcd-9579-4fd4-adda-b42e1495d55a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1y9DtJnKAf+pOiK28gSkY13/ZeEPpmFuL1qqVlerDRgqceF/8ZBy0AXjD3smp0Le1XFk5VikzCxRWoCATABt//lfa7BNs3ETX5mVkS2z3Gc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI0PR10MB9286
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=siemens.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=A/Eedo/+fcYYUyPHPlEeAE0ryhYxXc8UGSiZJud9HSs=;
 b=o4oYZvXfuod0B4KohiJTIecGU3IMSo0tU4jJjplEKfgZkINfRyOw1P4dWiJj5TnWC9i3xVm7hOejXLpjwmEbwez3Duy7k6vsTkK0YXRUL/OFJbuKS1yJh8GALEPFzfa5kAlqmBktTEbUaom2yHiOQv1pa+HJ3PIIoaG7Olsss4t08Vl74XRdavPpvS3cK401PFpkJnBt/Tp4G8MDpxvLfsfdazQ6FazYhWVMOpBjhe11Zjuc7VgVwETHQUjNNzh7bXs5JXY4/YB5P+0ZRn5hFXa0cjPvLW7vQ88FHkJE83OXeH95atyqxAEVAa0lbSUXoG9hPo+CjuLjTD9MLn0EJQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=siemens.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=siemens.com header.i=@siemens.com header.a=rsa-sha256
 header.s=selector2 header.b=o4oYZvXf
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=siemens.com;
Subject: [Intel-wired-lan] [PATCH v3 iwl-net] igc: Fix trigger of incorrect
 irq in igc_xsk_wakeup function
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

Q2hhbmdlcyBpbiB2MzoNCi0gQWRkZWQgJ0ZpeGVzOicgdGFncyBmb3IgdGhlIHJlbGV2YW50IGNv
bW1pdHMuDQotIEFkZGVkICdSZXZpZXdlZC1ieTonIHRhZyBmcm9tIEphY29iIEtlbGxlci4NCi0g
VXBkYXRlZCBzdWJqZWN0IGxpbmUgd2l0aCAnW2l3bC1uZXRdJyBwcmVmaXguDQoNCkZyb20gMzI0
MjI1ODgzNThhNTM3ZWY3OWRlNGZmNjMwZTQ0MTRlMmM2YjkzNCBNb24gU2VwIDE3IDAwOjAwOjAw
IDIwMDENCkZyb206IFZpdmVrIEJlaGVyYSA8dml2ZWsuYmVoZXJhQHNpZW1lbnMuY29tPg0KRGF0
ZTogRnJpLCA1IERlYyAyMDI1IDEwOjI2OjA1ICswMTAwDQpTdWJqZWN0OiBbUEFUQ0ggdjMgaXds
LW5ldF0gaWdjOiBGaXggdHJpZ2dlciBvZiBpbmNvcnJlY3QgaXJxIGluDQogaWdjX3hza193YWtl
dXAgZnVuY3Rpb24NCg0KVGhpcyBwYXRjaCBhZGRyZXNzZXMgdGhlIGlzc3VlIHdoZXJlIHRoZSBp
Z2NfeHNrX3dha2V1cCBmdW5jdGlvbg0Kd2FzIHRyaWdnZXJpbmcgYW4gaW5jb3JyZWN0IElSUSBm
b3IgdHgtMCB3aGVuIHRoZSBpMjI2IGlzIGNvbmZpZ3VyZWQNCndpdGggb25seSAyIGNvbWJpbmVk
IHF1ZXVlcyBvciBpbiBhbiBlbnZpcm9ubWVudCB3aXRoIDIgYWN0aXZlIENQVSBjb3Jlcy4NClRo
aXMgcHJldmVudGVkIFhEUCBaZXJvLWNvcHkgc2VuZCBmdW5jdGlvbmFsaXR5IGluIHN1Y2ggc3Bs
aXQgSVJRDQpjb25maWd1cmF0aW9ucy4NCg0KVGhlIGZpeCBpbXBsZW1lbnRzIHRoZSBjb3JyZWN0
IGxvZ2ljIGZvciBleHRyYWN0aW5nIHFfdmVjdG9ycyBzYXZlZA0KZHVyaW5nIHJ4IGFuZCB0eCBy
aW5nIGFsbG9jYXRpb24gYW5kIHV0aWxpemVzIGZsYWdzIHByb3ZpZGVkIGJ5IHRoZQ0KbmRvX3hz
a193YWtldXAgQVBJIHRvIHRyaWdnZXIgdGhlIGFwcHJvcHJpYXRlIElSUS4NCg0KRml4ZXM6IGZj
OWRmMmEwYjUyMGQ3ZDQzOWVjZjQ2NDc5NGQ1M2U5MWJlNzRiOTMgKCJpZ2M6IEVuYWJsZSBSWCB2
aWEgQUZfWERQIHplcm8tY29weSIpDQpGaXhlczogMTVmZDAyMWJjNDI3MDI3M2Q4ZjRiN2Y1OGZk
ZGE4YTE2MjE0YTM3NyAoImlnYzogQWRkIFR4IGhhcmR3YXJlIHRpbWVzdGFtcCByZXF1ZXN0IGZv
ciBBRl9YRFAgemVyby1jb3B5IHBhY2tldCIpDQpTaWduZWQtb2ZmLWJ5OiBWaXZlayBCZWhlcmEg
PHZpdmVrLmJlaGVyYUBzaWVtZW5zLmNvbT4NClJldmlld2VkLWJ5OiBKYWNvYiBLZWxsZXIgPGph
Y29iLmtlbGxlckBpbnRlbC5jb20+DQotLS0NCiBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9p
Z2MvaWdjX21haW4uYyB8IDgxICsrKysrKysrKysrKysrKysrKy0tLS0tDQogZHJpdmVycy9uZXQv
ZXRoZXJuZXQvaW50ZWwvaWdjL2lnY19wdHAuYyAgfCAgMiArLQ0KIDIgZmlsZXMgY2hhbmdlZCwg
NjQgaW5zZXJ0aW9ucygrKSwgMTkgZGVsZXRpb25zKC0pDQoNCmRpZmYgLS1naXQgYS9kcml2ZXJz
L25ldC9ldGhlcm5ldC9pbnRlbC9pZ2MvaWdjX21haW4uYyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0
L2ludGVsL2lnYy9pZ2NfbWFpbi5jDQppbmRleCA3YWFmYTYwYmEwYzguLmExMzBjZGY0YjQ1YiAx
MDA2NDQNCi0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYy9pZ2NfbWFpbi5jDQor
KysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2MvaWdjX21haW4uYw0KQEAgLTY5MDgs
MjEgKzY5MDgsMTMgQEAgc3RhdGljIGludCBpZ2NfeGRwX3htaXQoc3RydWN0IG5ldF9kZXZpY2Ug
KmRldiwgaW50IG51bV9mcmFtZXMsDQogCXJldHVybiBueG1pdDsNCiB9DQogDQotc3RhdGljIHZv
aWQgaWdjX3RyaWdnZXJfcnh0eHFfaW50ZXJydXB0KHN0cnVjdCBpZ2NfYWRhcHRlciAqYWRhcHRl
ciwNCi0JCQkJCXN0cnVjdCBpZ2NfcV92ZWN0b3IgKnFfdmVjdG9yKQ0KLXsNCi0Jc3RydWN0IGln
Y19odyAqaHcgPSAmYWRhcHRlci0+aHc7DQotCXUzMiBlaWNzID0gMDsNCi0NCi0JZWljcyB8PSBx
X3ZlY3Rvci0+ZWltc192YWx1ZTsNCi0Jd3IzMihJR0NfRUlDUywgZWljcyk7DQotfQ0KLQ0KIGlu
dCBpZ2NfeHNrX3dha2V1cChzdHJ1Y3QgbmV0X2RldmljZSAqZGV2LCB1MzIgcXVldWVfaWQsIHUz
MiBmbGFncykNCiB7DQogCXN0cnVjdCBpZ2NfYWRhcHRlciAqYWRhcHRlciA9IG5ldGRldl9wcml2
KGRldik7DQorCXN0cnVjdCBpZ2NfaHcgKmh3ID0gJmFkYXB0ZXItPmh3Ow0KIAlzdHJ1Y3QgaWdj
X3FfdmVjdG9yICpxX3ZlY3RvcjsNCiAJc3RydWN0IGlnY19yaW5nICpyaW5nOw0KKwl1MzIgZWlj
cyA9IDA7DQogDQogCWlmICh0ZXN0X2JpdChfX0lHQ19ET1dOLCAmYWRhcHRlci0+c3RhdGUpKQ0K
IAkJcmV0dXJuIC1FTkVURE9XTjsNCkBAIC02OTMwLDE4ICs2OTIyLDcxIEBAIGludCBpZ2NfeHNr
X3dha2V1cChzdHJ1Y3QgbmV0X2RldmljZSAqZGV2LCB1MzIgcXVldWVfaWQsIHUzMiBmbGFncykN
CiAJaWYgKCFpZ2NfeGRwX2lzX2VuYWJsZWQoYWRhcHRlcikpDQogCQlyZXR1cm4gLUVOWElPOw0K
IA0KLQlpZiAocXVldWVfaWQgPj0gYWRhcHRlci0+bnVtX3J4X3F1ZXVlcykNCi0JCXJldHVybiAt
RUlOVkFMOw0KKwlpZiAoKGZsYWdzICYgWERQX1dBS0VVUF9SWCkgJiYgKGZsYWdzICYgWERQX1dB
S0VVUF9UWCkpIHsNCisJCS8qIElmIGJvdGggVFggYW5kIFJYIG5lZWQgdG8gYmUgd29rZW4gdXAs
ICovDQorCQkvKiBjaGVjayBpZiBxdWV1ZSBwYWlycyBhcmUgYWN0aXZlLiAqLw0KKwkJaWYgKChh
ZGFwdGVyLT5mbGFncyAmIElHQ19GTEFHX1FVRVVFX1BBSVJTKSkgew0KKwkJCS8qIEp1c3QgZ2V0
IHRoZSByaW5nIHBhcmFtcyBmcm9tIFJ4ICovDQorCQkJaWYgKHF1ZXVlX2lkID49IGFkYXB0ZXIt
Pm51bV9yeF9xdWV1ZXMpDQorCQkJCXJldHVybiAtRUlOVkFMOw0KKwkJCXJpbmcgPSBhZGFwdGVy
LT5yeF9yaW5nW3F1ZXVlX2lkXTsNCisJCX0gZWxzZSB7DQorCQkJLyoqKlR3byBpcnFzIGZvciBS
eCBBTkQgVHggbmVlZCB0byBiZSB0cmlnZ2VyZWQqKiovDQorCQkJaWYgKHF1ZXVlX2lkID49IGFk
YXB0ZXItPm51bV9yeF9xdWV1ZXMpDQorCQkJCXJldHVybiAtRUlOVkFMOyAvKipxdWV1ZV9pZCBp
bnZhbGlkKiovDQogDQotCXJpbmcgPSBhZGFwdGVyLT5yeF9yaW5nW3F1ZXVlX2lkXTsNCisJCQlp
ZiAocXVldWVfaWQgPj0gYWRhcHRlci0+bnVtX3R4X3F1ZXVlcykNCisJCQkJcmV0dXJuIC1FSU5W
QUw7IC8qKnF1ZXVlX2lkIGludmFsaWQqKi8NCiANCi0JaWYgKCFyaW5nLT54c2tfcG9vbCkNCi0J
CXJldHVybiAtRU5YSU87DQorCQkJLyoqSVJRIHRyaWdnZXIgcHJlcGFyYXRpb24gZm9yIFJ4Kiov
DQorCQkJcmluZyA9IGFkYXB0ZXItPnJ4X3JpbmdbcXVldWVfaWRdOw0KKwkJCWlmICghcmluZy0+
eHNrX3Bvb2wpDQorCQkJCXJldHVybiAtRU5YSU87DQogDQotCXFfdmVjdG9yID0gYWRhcHRlci0+
cV92ZWN0b3JbcXVldWVfaWRdOw0KLQlpZiAoIW5hcGlfaWZfc2NoZWR1bGVkX21hcmtfbWlzc2Vk
KCZxX3ZlY3Rvci0+bmFwaSkpDQotCQlpZ2NfdHJpZ2dlcl9yeHR4cV9pbnRlcnJ1cHQoYWRhcHRl
ciwgcV92ZWN0b3IpOw0KKwkJCS8qIFJldHJpZXZlIHRoZSBxX3ZlY3RvciBzYXZlZCBpbiB0aGUg
cmluZyAqLw0KKwkJCXFfdmVjdG9yID0gcmluZy0+cV92ZWN0b3I7DQorCQkJaWYgKCFuYXBpX2lm
X3NjaGVkdWxlZF9tYXJrX21pc3NlZCgmcV92ZWN0b3ItPm5hcGkpKQ0KKwkJCQllaWNzIHw9IHFf
dmVjdG9yLT5laW1zX3ZhbHVlOw0KKwkJCS8qKklSUSB0cmlnZ2VyIHByZXBhcmF0aW9uIGZvciBU
eCAqLw0KKwkJCXJpbmcgPSBhZGFwdGVyLT50eF9yaW5nW3F1ZXVlX2lkXTsNCiANCisJCQlpZiAo
IXJpbmctPnhza19wb29sKQ0KKwkJCQlyZXR1cm4gLUVOWElPOw0KKw0KKwkJCS8qIFJldHJpZXZl
IHRoZSBxX3ZlY3RvciBzYXZlZCBpbiB0aGUgcmluZyAqLw0KKwkJCXFfdmVjdG9yID0gcmluZy0+
cV92ZWN0b3I7DQorCQkJaWYgKCFuYXBpX2lmX3NjaGVkdWxlZF9tYXJrX21pc3NlZCgmcV92ZWN0
b3ItPm5hcGkpKQ0KKwkJCQllaWNzIHw9IHFfdmVjdG9yLT5laW1zX3ZhbHVlOyAvKipFeHRlbmQg
dGhlIEJJVCBtYXNrIGZvciBlaWNzKiovDQorDQorCQkJLyoqKk5vdyB3ZSB0cmlnZ2VyIHRoZSBz
cGxpdCBpcnFzIGZvciBSeCBhbmQgVHggb3ZlciBlaWNzKioqLw0KKwkJCWlmIChlaWNzICE9IDAp
DQorCQkJCXdyMzIoSUdDX0VJQ1MsIGVpY3MpOw0KKw0KKwkJCXJldHVybiAwOw0KKwkJfQ0KKwl9
IGVsc2UgaWYgKGZsYWdzICYgWERQX1dBS0VVUF9UWCkgew0KKwkJaWYgKHF1ZXVlX2lkID49IGFk
YXB0ZXItPm51bV90eF9xdWV1ZXMpDQorCQkJcmV0dXJuIC1FSU5WQUw7DQorCQkvKiBHZXQgdGhl
IHJpbmcgcGFyYW1zIGZyb20gVHggKi8NCisJCXJpbmcgPSBhZGFwdGVyLT50eF9yaW5nW3F1ZXVl
X2lkXTsNCisJfSBlbHNlIGlmIChmbGFncyAmIFhEUF9XQUtFVVBfUlgpIHsNCisJCWlmIChxdWV1
ZV9pZCA+PSBhZGFwdGVyLT5udW1fcnhfcXVldWVzKQ0KKwkJCXJldHVybiAtRUlOVkFMOw0KKwkJ
LyogR2V0IHRoZSByaW5nIHBhcmFtcyBmcm9tIFJ4ICovDQorCQlyaW5nID0gYWRhcHRlci0+cnhf
cmluZ1txdWV1ZV9pZF07DQorCX0gZWxzZSB7DQorCQkvKiBJbnZhbGlkIEZsYWdzICovDQorCQly
ZXR1cm4gLUVJTlZBTDsNCisJfQ0KKwkvKiogUHJlcGFyZSB0byB0cmlnZ2VyIHNpbmdsZSBpcnEg
Ki8NCisJaWYgKCFyaW5nLT54c2tfcG9vbCkNCisJCXJldHVybiAtRU5YSU87DQorCS8qIFJldHJp
ZXZlIHRoZSBxX3ZlY3RvciBzYXZlZCBpbiB0aGUgcmluZyAqLw0KKwlxX3ZlY3RvciA9IHJpbmct
PnFfdmVjdG9yOw0KKwlpZiAoIW5hcGlfaWZfc2NoZWR1bGVkX21hcmtfbWlzc2VkKCZxX3ZlY3Rv
ci0+bmFwaSkpIHsNCisJCWVpY3MgfD0gcV92ZWN0b3ItPmVpbXNfdmFsdWU7DQorCQl3cjMyKElH
Q19FSUNTLCBlaWNzKTsNCisJfQ0KIAlyZXR1cm4gMDsNCiB9DQogDQpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdjL2lnY19wdHAuYyBiL2RyaXZlcnMvbmV0L2V0aGVy
bmV0L2ludGVsL2lnYy9pZ2NfcHRwLmMNCmluZGV4IGI3YjQ2ZDg2M2JlZS4uNmQ4YzJkNjM5Y2Q3
IDEwMDY0NA0KLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdjL2lnY19wdHAuYw0K
KysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdjL2lnY19wdHAuYw0KQEAgLTU1MCw3
ICs1NTAsNyBAQCBzdGF0aWMgdm9pZCBpZ2NfcHRwX2ZyZWVfdHhfYnVmZmVyKHN0cnVjdCBpZ2Nf
YWRhcHRlciAqYWRhcHRlciwNCiAJCXRzdGFtcC0+YnVmZmVyX3R5cGUgPSAwOw0KIA0KIAkJLyog
VHJpZ2dlciB0eHJ4IGludGVycnVwdCBmb3IgdHJhbnNtaXQgY29tcGxldGlvbiAqLw0KLQkJaWdj
X3hza193YWtldXAoYWRhcHRlci0+bmV0ZGV2LCB0c3RhbXAtPnhza19xdWV1ZV9pbmRleCwgMCk7
DQorCQlpZ2NfeHNrX3dha2V1cChhZGFwdGVyLT5uZXRkZXYsIHRzdGFtcC0+eHNrX3F1ZXVlX2lu
ZGV4LCBYRFBfV0FLRVVQX1RYKTsNCiANCiAJCXJldHVybjsNCiAJfQ0KLS0gDQoyLjM0LjENCg0K
