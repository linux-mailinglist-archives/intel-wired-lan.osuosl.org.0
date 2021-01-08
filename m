Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 460AD2EF510
	for <lists+intel-wired-lan@lfdr.de>; Fri,  8 Jan 2021 16:45:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 08E722E142;
	Fri,  8 Jan 2021 15:45:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uaGJ6KnBqT9C; Fri,  8 Jan 2021 15:44:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id A81F8204FD;
	Fri,  8 Jan 2021 15:44:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A6CDB1BF343
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Jan 2021 12:07:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A0AC486DDD
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Jan 2021 12:07:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DTiRh33x4a5r for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 Jan 2021 12:07:54 +0000 (UTC)
X-Greylist: delayed 00:10:33 by SQLgrey-1.7.6
Received: from mail-edgeS23.fraunhofer.de (mail-edges23.fraunhofer.de
 [153.97.7.23])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id EB43586DD6
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Jan 2021 12:07:53 +0000 (UTC)
IronPort-PHdr: =?us-ascii?q?9a23=3A5pcRoh2Bc2byIwntsmDT+zVfbzU7u7jyIg8e44?=
 =?us-ascii?q?YmjLQLaKm44pD+JxWEtadzg1LTG4bW8fRJj6zRqa+zEWAD4JPUtncEfdQMUh?=
 =?us-ascii?q?IekswZkkQmB9LNEkz0KvPmLklYVMRPXVNo5Te3ZE5SHsuteVLfuDux4CQUFx?=
 =?us-ascii?q?G5MhB6daz5H4fIhJGx0Oa/s5TYfwRPgm+7ZrV/SXf+rQjYusQMx4V4LaNkwx?=
 =?us-ascii?q?rSr3AOdf5f2GVoIlyehVDw65S9?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2FXBQCsR/hf/xoBYJligQmCcjBRfYE?=
 =?us-ascii?q?4Cod9A4U5iDaZE4FCgREDGDwLAQEBAQEBAQEBBwEBExQGAgQBAQKBU4J1AoF?=
 =?us-ascii?q?yASU4EwIQAQEGAQEBAQEGBAIChk4MgnNVDUo9AQEBAQEBAQEBAQEBAQEBAQE?=
 =?us-ascii?q?BAQEBAQEBAQEBAQEBAQEBAQEBBQINVCtCQgEBKgoDAREBUDAnBAENDQYNgwy?=
 =?us-ascii?q?CUAUDLQIDC6J/AosZgTSDBAEBBoEzARRAgxAYggkHAwYJAYEugnWCbE6EVYI?=
 =?us-ascii?q?vHoFdPoERQ4IogzIXAQEBAYEfCQESASMVFQGDH4IsgVkqAUQCVSsKKQIFGwI?=
 =?us-ascii?q?NgQEaBwECAw4/BS4ZAo8ZAhKCfgGJMw6KXpAugREDBAOBZIESBIRagmiBZId?=
 =?us-ascii?q?CixWDKYouhS6KbYIugj6UEYsWkS4mJYQwAgQCBAUCDgEBBoFtgQtdDAdxT4J?=
 =?us-ascii?q?pUBcCDY4tF4NOilh0AgE0AgYKAQEDCXyKQAGBEAEB?=
X-IPAS-Result: =?us-ascii?q?A2FXBQCsR/hf/xoBYJligQmCcjBRfYE4Cod9A4U5iDaZE?=
 =?us-ascii?q?4FCgREDGDwLAQEBAQEBAQEBBwEBExQGAgQBAQKBU4J1AoFyASU4EwIQAQEGA?=
 =?us-ascii?q?QEBAQEGBAIChk4MgnNVDUo9AQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBA?=
 =?us-ascii?q?QEBAQEBAQEBBQINVCtCQgEBKgoDAREBUDAnBAENDQYNgwyCUAUDLQIDC6J/A?=
 =?us-ascii?q?osZgTSDBAEBBoEzARRAgxAYggkHAwYJAYEugnWCbE6EVYIvHoFdPoERQ4Iog?=
 =?us-ascii?q?zIXAQEBAYEfCQESASMVFQGDH4IsgVkqAUQCVSsKKQIFGwINgQEaBwECAw4/B?=
 =?us-ascii?q?S4ZAo8ZAhKCfgGJMw6KXpAugREDBAOBZIESBIRagmiBZIdCixWDKYouhS6Kb?=
 =?us-ascii?q?YIugj6UEYsWkS4mJYQwAgQCBAUCDgEBBoFtgQtdDAdxT4JpUBcCDY4tF4NOi?=
 =?us-ascii?q?lh0AgE0AgYKAQEDCXyKQAGBEAEB?=
X-IronPort-AV: E=Sophos;i="5.79,330,1602540000"; 
 d="txt'?scan'208,217";a="23274575"
Received: from mail-mtaka26.fraunhofer.de ([153.96.1.26])
 by mail-edgeS23.fraunhofer.de with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Jan 2021 12:57:15 +0100
IronPort-PHdr: =?us-ascii?q?9a23=3Anb6pgx0EcLZ7ZPDIsmDT+zVfbzU7u7jyIg8e44?=
 =?us-ascii?q?YmjLQLaKm44pD+JxWEtadzg1LTG4bW8fRJj6zRqa+zEWAD4JPUtncEfdQMUh?=
 =?us-ascii?q?IekswZkkQmB9LNEkz0KvPmLklYVMRPXVNo5Te3ZE5SHsuteVLfuDux4CQUFx?=
 =?us-ascii?q?G5MhB6daz5H4fIhJGx0Oa/s5TYfwRPgm+7ZrV/SXf+rQjYusQMx4V4LaNkwx?=
 =?us-ascii?q?rSr3AOdf5f2GVoIlyehVDw65S9?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0D9CQDwR/hf/z6wYZligQkHgmswUQd?=
 =?us-ascii?q?2Wh5ACod9A4U5iDc7mFiBQoERA1QLAQMBAQEBAQcBAScGAgQBAYFVgnUCgW8?=
 =?us-ascii?q?CJjgTAhABAQUBAQECAQYEcYVhDIV4QgEBFBYKAwERAVAwByAEAQ0NBg2DDIJ?=
 =?us-ascii?q?QBQMtAgMLon8CixmBNIMEAQEGgTMBFECDDxiCCQcDBgkBgS6CdYJsToRVgi+?=
 =?us-ascii?q?Bez6BEUOCKIMyFwEBAQGBHwkBEgEjFRUBgx+CLIFZKgFEAlUrCikCBRsCDYE?=
 =?us-ascii?q?BGgcBAgMOPwUuGQKPGQISgn4BiTMOil6QLoERAwQDgWSBEgSEWoJogWSHQos?=
 =?us-ascii?q?VgymKLoUuim2CLoI+lBGLFpEuJiWEMAIEAgQFAg4BAQaBbSNnXQwHcU+CaVA?=
 =?us-ascii?q?XAg2OLReDTopYQzECATQCBgoBAQMJfIpAAYEQAQE?=
X-IronPort-AV: E=Sophos;i="5.79,330,1602540000"; 
 d="txt'?scan'208,217";a="103085773"
Received: from 153-97-176-62.vm.c.fraunhofer.de (HELO
 XCH-HYBRID-02.ads.fraunhofer.de) ([153.97.176.62])
 by mail-mtaKA26.fraunhofer.de with ESMTP; 08 Jan 2021 12:57:13 +0100
Received: from XCH-HYBRID-01.ads.fraunhofer.de (10.225.8.57) by
 XCH-HYBRID-02.ads.fraunhofer.de (10.225.8.59) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.721.2; 
 Fri, 8 Jan 2021 12:57:12 +0100
Received: from EUR05-AM6-obe.outbound.protection.outlook.com (10.225.8.41) by
 XCH-HYBRID-01.ads.fraunhofer.de (10.225.8.57) with Microsoft SMTP
 Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.721.2
 via Frontend Transport; Fri, 8 Jan 2021 12:57:12 +0100
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Maa0GgE7z8CqmFwjnc7ucM3CDeSSY8ugmmTr5p8p+Zey1e+jgdQJdgBK3E1Bg+OO7Q1P92Xo3wb1kVGdcba+1/loS6s/9+Jerf98ILjQX6thc+O7J8A6Fz/3MfbJwZxM8wLlbQAPOBDzUr7LA/K0FEuQo8oGM9obmkePFKZzLalnBlpyNZBZd+P6A5v//gDsGnoJJUSj+P/Fq0Gg7izig29vyiFSq/0emCykJsE08BdpTUcr0wWKRE+BamL0TcYMHk8AGlBZwRlwL5hZChWTGMAyH1ECzCubc6BUafOBp58HvaKXIrvXO6BqVZgB4H740Grj+wSesG/N3TsXJ+b3ig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AhaRuS7yqipl+meRdJX9E+32L9u36qTaaVg1PQzRVik=;
 b=NqACocVbNlReVzmUaTiMIjkBnRmgisGKvczkzvE6SOK8sOWwAknQ8Y5z2WB5U228fBgbA/q7bIBCCNUbw5GGUuxKRXQVmpU1sZA+hAcnRAYFlrg/1/UROVoXYZ0jFYGIvbKUa+y75jU158BBKkJa43NOZKf5MawjMZBlcLnuaJA4eHluuZF1kCSp79aBU3b9bwvOxxcbJ64TmU3XVd+07A/5INFtO+A3wSN5HjKx1xkaBPnweJos6hIkODFmYibHpyhUZ1lPIJJ9OMJ+9gKzeC5xlW2/UPKaVJd0yLWppWghdcKpzIkjyeAsHN60Dl0l6qf59/iimt+BVp7c24F1ZA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=aisec.fraunhofer.de; dmarc=pass action=none
 header.from=aisec.fraunhofer.de; dkim=pass header.d=aisec.fraunhofer.de;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fraunhofer.onmicrosoft.com; s=selector2-fraunhofer-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AhaRuS7yqipl+meRdJX9E+32L9u36qTaaVg1PQzRVik=;
 b=QGhunNValFYHg+PpBuQM/BR/SWTrviUy3xnhY9PEQcP2A7JRZLcIXCCagjyfBOZSFlME1vDcJ+kpUzQJsOVgVsSEfbsuKnxjT5laUlN94QwWVTCTdlMzzJ6z3YE5raq8kL3AjDhniM85jyWfrZooiUrfS113NiXy+83XayPEn2A=
Received: from AM7P194MB0900.EURP194.PROD.OUTLOOK.COM (2603:10a6:20b:174::13)
 by AM7P194MB0929.EURP194.PROD.OUTLOOK.COM (2603:10a6:20b:173::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3742.6; Fri, 8 Jan
 2021 11:57:10 +0000
Received: from AM7P194MB0900.EURP194.PROD.OUTLOOK.COM
 ([fe80::5c40:ad2f:a2d7:f786]) by AM7P194MB0900.EURP194.PROD.OUTLOOK.COM
 ([fe80::5c40:ad2f:a2d7:f786%5]) with mapi id 15.20.3742.006; Fri, 8 Jan 2021
 11:57:10 +0000
From: "Radev, Martin" <martin.radev@aisec.fraunhofer.de>
To: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: Security issue with vmxnet3 and e100 for AMD SEV(-SNP) / Intel
 TDX
Thread-Index: AQHW5a6HPD+VTPfq6E+1Yc1/A52haQ==
Date: Fri, 8 Jan 2021 11:57:10 +0000
Message-ID: <AM7P194MB0900E443CEBD6EF2EE37325ED9AE0@AM7P194MB0900.EURP194.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
authentication-results: vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=none action=none
 header.from=aisec.fraunhofer.de;
x-originating-ip: [80.147.198.79]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 03cb1396-a594-4826-4c67-08d8b3cc87e9
x-ms-traffictypediagnostic: AM7P194MB0929:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM7P194MB092914F0E128184F41C73E71D9AE0@AM7P194MB0929.EURP194.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: TFqdSukx9CZQeKZm2KZpKffXpPGYC61jG8LkJF4YK1yyqa6XBuXdBhfyiyhhbRJACtLaiR6N70yUH9JvQSJbqKtgzCjwB5WArK0TBXxZxZIx39o26weBZSWY3x5+2tr5I9+XZyzNZFjO9zToU0VHB1b1+v4nBCdux10XHXbOsVYNZCiAuGUK7n9zz0CFZDnPrwJr1EkJOrFeQk1n3hS+nRVw0KOW8V6obZ4KsDeApF6+SIoKmo4RNe8Wm599rTCiaEWbK4ZTSG04XzzS5KZZiZW734SjBK/dzrc6DnyKVe4GnFCwdmV2y0S5Hur5F4IMzanEP0Je3bub7TGwyNRwHhjjByEoqbLxkamGeBTzoNkN/pX6G3ilmTl3ig/qGzMyl+VuXKli3uXxMj+6s0YeyEyEahKcHVZZu8eRou1g95qAmOafkdu2jfKm62VXb0TylS3N2ETCDl4B0LV6rxuV7A==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM7P194MB0900.EURP194.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(4636009)(346002)(376002)(366004)(136003)(396003)(39850400004)(966005)(2906002)(4326008)(66476007)(52536014)(7416002)(478600001)(64756008)(86362001)(66556008)(83380400001)(76116006)(8676002)(66446008)(15650500001)(66946007)(66576008)(19627405001)(166002)(7696005)(54906003)(5660300002)(110136005)(99936003)(21615005)(316002)(8936002)(9686003)(71200400001)(33656002)(26005)(55016002)(186003)(6506007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?iso-8859-1?Q?UUIBMezQ0fmjtqb0ypf25s33TU9AsDYqQtVB/f//PegMRzhuU2JMMvif66?=
 =?iso-8859-1?Q?DeQSS0ZuGpgVoWJZ3RUB+bG3Kmx7HTCKr9Eg2IaVvOF6nfDUzoavY1J0je?=
 =?iso-8859-1?Q?siBPwf1C0ZCXCM5gHzZchZS54FqP20rTjgZbOJ9g/KbHEYePwYOAv2JB0O?=
 =?iso-8859-1?Q?mA8JbglCEWfs2wzXqgC1so3AwmDJiXkIGPSgS1t/+eEvU5MBfvjbY0Tb+0?=
 =?iso-8859-1?Q?QaGaPcXVurbNKzRiXu/XRdp1VdhMecJUeeVY5GE8AHA4AVwPqe6zeP5+jM?=
 =?iso-8859-1?Q?PqDbN5HtXus1aw7ByRxIF+NVGE5b9UhHNoGkagY9ZEOC386Do2mpUyCpLi?=
 =?iso-8859-1?Q?hYxGesrzI4Sufa5Htzx6NfxnbdhCuju9i99mmgbryyCHde/5c9pbrGvz9q?=
 =?iso-8859-1?Q?VWL0NxKIOERdr2iy7VIphCqkbEkOefk7rpfdWWsVTr7MgnJwCL1hf+3J44?=
 =?iso-8859-1?Q?Oblqa38gYo7glGsWdIdtahLllbEm5tIG9qZsoDOSuhrxaoKzgzzbZNTh/A?=
 =?iso-8859-1?Q?jV4fzgWu6Z/QEjzyFYNqGNiaSeFO6xj99AvoM8RNcb9xFYhNNiM/ACHmih?=
 =?iso-8859-1?Q?I0zpNBs4JoVxZ4hI1GR4TMzWWJVz02ezRx2DY2Vvf4/BJXQIGaKemUoQqt?=
 =?iso-8859-1?Q?FV6xLVhQFofg0EBYTrkD6+29QdivjcG32oHnzOpRK7I9ECvYADvCgkrPuq?=
 =?iso-8859-1?Q?oHiicg5yzSJcEHpUJ9bh6dbwc8+KnjYKPg9HlAswAU5a9+JtgUJltoyxtv?=
 =?iso-8859-1?Q?IoZVHBftp2WeqODbI9N6zjBs28HCKhqYdPeaM2oK7IwV/gP9OQZl6Dq7Q4?=
 =?iso-8859-1?Q?gMi+V2oX6owRSjpXl0GiP1STRNRIrCpF9+CchqfWKLj34JBnYwvZ7gV05C?=
 =?iso-8859-1?Q?jmgc8KF0bojGrC4xMFCtWbQQ5gpL/M+V2pDEFtMhbihVu4WVkfM0VSnB10?=
 =?iso-8859-1?Q?PhrBlfZnOhaIIJvNOvwUhAEieqpaayEV7N0Eedi1EYB5DWwLslREzuD+gW?=
 =?iso-8859-1?Q?UrsrioU5nJW/QmvhI=3D?=
Content-Type: multipart/mixed;
 boundary="_005_AM7P194MB0900E443CEBD6EF2EE37325ED9AE0AM7P194MB0900EURP_"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM7P194MB0900.EURP194.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 03cb1396-a594-4826-4c67-08d8b3cc87e9
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jan 2021 11:57:10.7042 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: f930300c-c97d-4019-be03-add650a171c4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xNazACUuhBqfH1RWianJT7oTUcmUTqyA24cHGYZOewf+YFkKD5tsCBU8ZkZQooBJeLebmr9JOkOqflK7yD3TLKyrGcQbeU5NRokp97n2+3esIrdrYvcurMN4iIMfgeBu
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM7P194MB0929
X-OriginatorOrg: aisec.fraunhofer.de
X-Mailman-Approved-At: Fri, 08 Jan 2021 15:44:56 +0000
Subject: [Intel-wired-lan] Security issue with vmxnet3 and e100 for AMD
 SEV(-SNP) / Intel TDX
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
Cc: "martin.b.radev@gmail.com" <martin.b.radev@gmail.com>,
 "Thomas.Lendacky@amd.com" <Thomas.Lendacky@amd.com>,
 "file@sect.tu-berlin.de" <file@sect.tu-berlin.de>,
 "doshir@vmware.com" <doshir@vmware.com>,
 "pv-drivers@vmware.com" <pv-drivers@vmware.com>, "Banse,
 Christian" <christian.banse@aisec.fraunhofer.de>,
 "brijesh.singh@amd.com" <brijesh.singh@amd.com>, "Morbitzer,
 Mathias" <mathias.morbitzer@aisec.fraunhofer.de>,
 Robert Buhren <robert.buhren@sect.tu-berlin.de>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--_005_AM7P194MB0900E443CEBD6EF2EE37325ED9AE0AM7P194MB0900EURP_
Content-Type: multipart/alternative;
	boundary="_000_AM7P194MB0900E443CEBD6EF2EE37325ED9AE0AM7P194MB0900EURP_"

--_000_AM7P194MB0900E443CEBD6EF2EE37325ED9AE0AM7P194MB0900EURP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello everybody,

tldr: Both drivers expose skb GVAs to untrusted devices which gives RIP
         control to a malicious e100 / vmxnet3 device implementation. This =
is
         an issue for AMD SEV (-SNP) [1] and likely Intel TDX [2].

Felicitas and Robert have started a project on fuzzing device drivers which
may have negative security impact on solutions like AMD SEV Secure
Nested Paging and Intel Trusted Domain Extensions. These solutions protect
a VM from a malicious Hypervisor in various way.

There are a couple of devices which carry security issues under the attacke=
r
models of SEV-SNP / Intel TDX, but here we're only discussing VMXNET3 and
e100, because we have detailed PoCs for both.

Maintainers of both vmxnet3 and e100 were added in this email because the
discussion will likely be the same. The issues were already sent to AMD PSI=
RT,
and Tom Lendacky and Brijesh Singh have volunteered to be part of the email
communication with the maintainers. Both have been working on AMD SEV.

Please check the two attached files: vmxnet3_report.txt and e100_report.txt=
.
Both contain detailed information about what the issue is and how it can be
exploited by a malicious HV or attacker who has access to the QEMU process.

Fix:
In an earlier discussion with AMD, there was the idea of making a list of
allowed devices with SEV and forbidding everything else. This would avoid
issues with other drivers whose implementation has not been yet scrutinized
under the threat model of SEV-SNP and Intel Trusted Domain Extensions.

Let us know what you think.

Kind regards,
Martin

[1]: https://www.amd.com/system/files/TechDocs/SEV-SNP-strengthening-vm-iso=
lation-with-integrity-protection-and-more.pdf
[2]: https://software.intel.com/content/www/us/en/develop/articles/intel-tr=
ust-domain-extensions.html


--_000_AM7P194MB0900E443CEBD6EF2EE37325ED9AE0AM7P194MB0900EURP_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Hello everybody,<br>
<br>
tldr: Both drivers expose skb GVAs to untrusted devices which gives RIP</di=
v>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;control to a malicious e100 / vmxnet3 dev=
ice implementation. This is<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;an issue&nbsp;<span style=3D"color: rgb(0=
, 0, 0); font-family: Calibri, Arial, Helvetica, sans-serif; font-size: 12p=
t;">for AMD SEV (-SNP) [1] and likely Intel TDX [2].</span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<div><br>
</div>
<div>Felicitas and Robert have started a project on fuzzing device drivers =
which</div>
<div>may have negative security impact on solutions like AMD SEV Secure</di=
v>
<div>Nested Paging and Intel Trusted Domain Extensions. These solutions pro=
tect</div>
<div>a VM from a malicious Hypervisor in various way.</div>
<div><br>
</div>
<div>There are a couple of devices which carry security issues under the at=
tacker</div>
<div>models of SEV-SNP / Intel TDX, but here we're only discussing VMXNET3 =
and</div>
<div>e100, because we have detailed PoCs for both.</div>
<div><br>
</div>
<div>Maintainers of both vmxnet3 and e100 were added in this email because =
the</div>
<div>discussion will likely be the same. The issues were already sent to AM=
D PSIRT,</div>
<div>and Tom Lendacky and Brijesh Singh have volunteered to be part of the =
email</div>
<div>communication with the maintainers. Both have been working on AMD SEV.=
</div>
<div><br>
</div>
<div><b>Please check the two attached files: vmxnet3_report.txt and e100_re=
port.txt.</b></div>
<div>Both contain detailed information about what the issue is and how it c=
an be</div>
<div>exploited by a malicious HV or attacker who has access to the QEMU pro=
cess.<br>
<br>
Fix:<br>
In an earlier discussion with AMD, there was the idea of making a list of
<div>allowed devices with SEV and forbidding everything else. This would av=
oid</div>
<div>issues with other drivers whose implementation has not been yet scruti=
nized</div>
<div>under the threat model of SEV-SNP and Intel Trusted Domain Extensions.=
<br>
<br>
Let us know what you think.</div>
<div><br>
</div>
<div>Kind regards,<br>
Martin<br>
<br>
[1]:&nbsp;<a href=3D"https://www.amd.com/system/files/TechDocs/SEV-SNP-stre=
ngthening-vm-isolation-with-integrity-protection-and-more.pdf" id=3D"LPlnk1=
57452">https://www.amd.com/system/files/TechDocs/SEV-SNP-strengthening-vm-i=
solation-with-integrity-protection-and-more.pdf</a><br>
[2]:&nbsp;<a href=3D"https://software.intel.com/content/www/us/en/develop/a=
rticles/intel-trust-domain-extensions.html" id=3D"LPlnk328393">https://soft=
ware.intel.com/content/www/us/en/develop/articles/intel-trust-domain-extens=
ions.html</a></div>
</div>
<br>
</div>
</body>
</html>

--_000_AM7P194MB0900E443CEBD6EF2EE37325ED9AE0AM7P194MB0900EURP_--

--_005_AM7P194MB0900E443CEBD6EF2EE37325ED9AE0AM7P194MB0900EURP_
Content-Type: text/plain; name="vmxnet3_report.txt"
Content-Description: vmxnet3_report.txt
Content-Disposition: attachment; filename="vmxnet3_report.txt"; size=3623;
	creation-date="Fri, 08 Jan 2021 11:17:21 GMT";
	modification-date="Fri, 08 Jan 2021 11:18:01 GMT"
Content-Transfer-Encoding: base64

IyBFeHBsb2l0CgpJKQpXaGVuIHRoZSBkZXZpY2UgaXMgYXR0YWNoZWQsIHRoZSB2bXhuZXQzIGRy
aXZlciB3b3VsZCBhbGxvY2F0ZSAKdXNpbmcgdGhlIGZ1bmN0aW9uIGRtYV9hbGxvY19jb2hlcmVu
dCgpIGEgY291cGxlIG9mIFJlY2VpdmUgKFJRKSBhbmQgVHJhbnNtaXQgKFRYKQpxdWV1ZXMgKDEp
LCBhbG9uZ3NpZGUgYW4gYXJyYXkgb2YgdGhlIHN0cnVjdHVyZSB2bXhuZXQzX3J4X2J1Zl9pbmZv
ICgyKS4KVGhlc2Ugc3RydWN0dXJlcyB3b3VsZCBiZSBhbGxvY2F0ZWQgaW4gX2RlY3J5cHRlZCBt
ZW1vcnlfIGFuZCBhcmUgYWNjZXNzaWJsZQpieSB0aGUgZGV2aWNlIChIVikuIFRoZSBIViBpcyBh
bHdheXMgYWJsZSB0byBhdHRhY2ggdGhpcyBkZXZpY2UgYW5kIGV2ZW4gaG90LXBsdWcgaXQuCgpJ
SSkKVGhlIHN0cnVjdHVyZSBgdm14bmV0M19yeF9idWZfaW5mb2AgY29udGFpbnMgYSBfZ3Vlc3Qg
dmlydHVhbCBhZGRyZXNzIChHVkEpXwp0byBhbiBhbGxvY2F0ZWQgYHNrX2J1ZmZgIG9iamVjdCAo
MikgaW4gZW5jcnlwdGVkIG1lbW9yeSBpbiBvbmUgb2YgdGhlCmttYWxsb2MgU0xBQlMuIEhvd2V2
ZXIsIGJlY2F1c2UgdGhlIG1lbW9yeSBvZiB0aGUgYWxsb2NhdGVkIGFycmF5IGlzIGRlY3J5cHRl
ZCwKdGhlIG1hbGljaW91cyBkZXZpY2UgY2FuIG92ZXJ3cml0ZSB0aGUgdmlydHVhbCBhZGRyZXNz
IHRvIHBvaW50IHRvIHRoZQpkZWNyeXB0ZWQgcmVnaW9uIChjb250cm9sbGVkIGJ5IHRoZSBkZXZp
Y2UpLgpGaW5kaW5nIHN1Y2ggYSBkZWNyeXB0ZWQgcmVnaW9uIGluIHRoZSBHdWVzdCBWaXJ0dWFs
IEFkZHJlc3MgU3BhY2UgaXMKZWFzeS4gRmlyc3QsIHRoZSBsZWFrZWQgR1ZBIGhhcHBlbnMgdG8g
YmUgYWxsb2NhdGVkIHZpYSBrbWFsbG9jIGFuZCB0aGUKYWRkcmVzcyBsZWFrcyB0aGUgYWRkcmVz
cyBvZiB0aGUgYHBhZ2Vfb2Zmc2V0X2Jhc2VgLgpUaGUgR1ZBIG9mIHRoZSBkZWNyeXB0ZWQgYXJy
YXkgY2FuIGJlIGNvbXB1dGVkIGFzIGBwYWdlX29mZnNldF9iYXNlICsgCnBoeXNpY2FsIGFkZHJl
c3Mgb2YgdGhlIGJ1ZmZlcmAuIFRoZSBIViBrbm93cyB0aGUgcGh5c2ljYWwgYWRkcmVzcywgZWl0
aGVyCmJ5IGluc3BlY3RpbmcgdGhlIFFFTVUgdm14bmV0MyBzdHJ1Y3R1cmVzIG9yIGJ5IHNjYW5u
aW5nIG1lbW9yeS4KCklJSSkKQWZ0ZXIgb3ZlcndyaXRpbmcgdGhlIHNrX2J1ZmYgcG9pbnRlciB0
byBwb2ludCB0byBkZWNyeXB0ZWQgbWVtb3J5LCB0aGUKbWFsaWNpb3VzIGRldmljZSBjYW4gZm9y
Z2UgYSBmYWtlIHNrX2J1ZmYgb2JqZWN0IGF0IHRoZSBuZXcgYWRkcmVzcy4KRXZlbnR1YWxseSB0
aGUgZHJpdmVyIHdvdWxkIHBhcnNlIHRoZSBmYWtlIHNrX2J1ZmYgb2JqZWN0LCBvcGVyYXRlCndp
dGggaXRzIGRhdGEsIGFuZCBfZnJlZV8gaXQuClRoZSBza19idWZmIG9iamVjdCBjb250YWlucyBh
IF9kZXN0cnVjdG9yIGZ1bmN0aW9uIHBvaW50ZXJfICgzKSB3aGljaCB3b3VsZApnZXQgY2FsbGVk
IHdoZW4gdGhlIHNrX2J1ZmYgaXMgZnJlZWQgKDQpLgpXZSBjYW4gY3JhZnQgdGhlIGZha2Ugc2tf
YnVmZiBvYmplY3QgaW4gc3VjaCBhIHdheSB0byBhdm9pZCBjcmFzaGVzIGFuZApoYXZlIHRoZSBW
TSdzIGtlcm5lbCBjYWxsIGludG8gYW55IGFkZHJlc3Mgd2UgcHJvdmlkZS4KCklWKQpUaGUgcmVn
aXN0ZXIgc3RhdGUgaW4gdGhlIFZNIGJlZm9yZSB0aGUgZnVuY3Rpb24gaXMgY2FsbGVkIGlzIHRo
ZSBmb2xsb3dpbmc6CiBSQVggIDB4MTMzNyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAoZnVuYyBhZGRyZXNzIHdoaWNoIHdpbGwgYmUgY2FsbGVkKQogUkJYICAweGZmZmY4ODgw
NmIxNDgwMDAgICAgICAgICAgICAgICAgICAgICAgICAgKG91ciBidWZmZXIpCiBSQ1ggIDB4MTAx
CiBSRFggIDB4MAogUkRJICAweGZmZmY4ODgwNmIxNDgwMDAgICAgICAgICAgICAgICAgICAgICAg
ICAgKG91ciBidWZmZXIpCiBSU0kgIDB4ODkKIFI4ICAgMHg1ZDMxNWFjNmRkMWEKIFI5ICAgMHg4
NjhkCiBSMTAgIDB4ZmZmZjg4ODAzNTZkYzA5OCAKIFIxMSAgMHhmZmZmODg4MDZiMTQ4MGQ0ICAg
ICAgICAgICAgICAgICAgICAgICAgIChvdXIgYnVmZmVyKQogUjEyICAweGZmZmZmZmZmODE2NDYx
YzcgCiBSMTMgIDB4ZmZmZjg4ODAzNTZkYzA2OCAKIFIxNCAgMHgxCiBSMTUgIDB4MAogUkJQICAw
eGZmZmY4ODgwNmIxNDgwMDAgICAgICAgICAgICAgICAgICAgICAgICAgKG91ciBidWZmZXIpCiBS
U1AgIDB4ZmZmZmM5MDAwMDE0MGNlOCAKIFJJUCAgMHgxMzM3CgpJZiB3ZSBoYXZlIGFjY2VzcyB0
byB0aGUga2VybmVsIGltYWdlLCB3ZSBjYW4gZmluZCBhIHN1aXRhYmxlIGdhZGdldCB0bwpleGVj
dXRlIHRvIHBpdm90IHRoZSBWTSdzIGtlcm5lbCBzdGFjayBpbnRvIGRlY3J5cHRlZCBtZW1vcnku
IEJlY2F1c2UgdGhlIApSQlAgcmVnaXN0ZXIgaGFwcGVucyB0byBwb2ludCB0byBvdXIgYnVmZmVy
LCB3ZSBjYW4gcmVseSBvbiB0aGUgd2lkZWx5CmF2YWlsYWJsZSBnYWRnZXQgYGxlYXZlOyByZXRg
IHdoaWNoIHdvdWxkIGVmZmVjdGl2ZWx5IGNoYW5nZSB0aGUgUlNQIHRvIApoYXZlIHRoZSB2YWx1
ZSBvZiB0aGUgUkJQLiBJbiB0aGUgUG9DLCBJIGFkZGVkIGFuIGFkZHJlc3Mgb2YgYSBST1AgZ2Fk
Z2V0CmF0IHRoZSBiZWdpbm5pbmcgb2YgdGhlIGZha2Ugc2tfYnVmZiB0byBtb2RpZnkgdGhlIHN0
YWNrIHRvIGp1bXAgb3Zlcgp0aGUgZmFrZSBza19idWZmIChgYWRkIHJzcCwgMHgxNTg7IHJldGAp
LiBTaW5jZSB0aGUgc3RhY2sgaXMgc3RpbGwgaW4KZGVjcnlwdGVkIG1lbW9yeSwgd2UgY2FuIHdy
aXRlIG1vcmUgUk9QIGdhZGdldHMgYXQgdGhlIG5ldyBhZGRyZXNzLgoKVGhpcyBlc3NlbnRpYWxs
eSBhbGxvd3MgdGhlIGRldmljZSB0byBnYWluIGV4ZWN1dGlvbiBpbnNpZGUgdGhlIHByb3RlY3Rl
ZApWTSB2aWEgUmV0dXJuLW9yaWVudGVkIHByb2dyYW1taW5nLiBDb2RlIGluamVjdGlvbiBjYW4g
aGFwcGVuIGVhc2lseSBieQpkb2luZyBhIG1lbWNweSBmcm9tIGRlY3J5cHRlZCBtZW1vcnkgdG8g
ZW5jcnlwdGVkIG1lbW9yeSBieSBhYnVzaW5nIHRoZQptYXBwZWQgcGh5c2ljYWwgbWVtb3J5IGF0
IGBwYWdlX29mZnNldF9iYXNlYC4KCiMgVGVzdApJIHZlcmlmaWVkIHRoYXQgdGhpcyBleHBsb2l0
IHdvcmtzIHdpdGggU0VWIGVuYWJsZWQsIGJ1dCB0aGUgYXR0YWNrIHNob3VsZAphbHNvIHdvcmsg
d2l0aCBTRVYtRVMgYW5kIFNFVi1TTlAuIEZvciB0aGUgcHVycG9zZSBvZiB0aGUgZXhwbG9pdCwg
SQpkaXNhYmxlZCBLQVNMUi4KClsxXTogaHR0cHM6Ly9lbGl4aXIuYm9vdGxpbi5jb20vbGludXgv
djUuMTAtcmM3L3NvdXJjZS9kcml2ZXJzL25ldC92bXhuZXQzL3ZteG5ldDNfZHJ2LmMjTDE4ODgK
WzJdOiBodHRwczovL2VsaXhpci5ib290bGluLmNvbS9saW51eC92NS4xMC1yYzcvc291cmNlL2Ry
aXZlcnMvbmV0L3ZteG5ldDMvdm14bmV0M19pbnQuaCNMMjYxClszXTogaHR0cHM6Ly9lbGl4aXIu
Ym9vdGxpbi5jb20vbGludXgvdjUuMTAtcmM3L3NvdXJjZS9pbmNsdWRlL2xpbnV4L3NrYnVmZi5o
I0w3NTMKWzRdOiBodHRwczovL2VsaXhpci5ib290bGluLmNvbS9saW51eC92NS4xMC1yYzcvc291
cmNlL25ldC9jb3JlL3NrYnVmZi5jI0w2NTEKCgoKCgo=

--_005_AM7P194MB0900E443CEBD6EF2EE37325ED9AE0AM7P194MB0900EURP_
Content-Type: text/plain; name="e100_report.txt"
Content-Description: e100_report.txt
Content-Disposition: attachment; filename="e100_report.txt"; size=4457;
	creation-date="Fri, 08 Jan 2021 11:20:16 GMT";
	modification-date="Fri, 08 Jan 2021 11:20:30 GMT"
Content-Transfer-Encoding: base64

IyBFeHBsb2l0CgpJKSBUaGUgSFYgaXMgYWx3YXlzIGFibGUgdG8gYXR0YWNoIHRoZSBgZTEwMGAg
ZGV2aWNlIGJ5IGVpdGhlciBwbHVnZ2luZyBpdAp3aGVuIGxhdW5jaGluZyB0aGUgVk0gb3IgaG90
LXBsdWdnaW5nIGl0IGxhdGVyLiBGb3IgZXhhbXBsZSwgdGhlIEhWIGNhbgphZGQgdGhlIGZvbGxv
d2luZyBhcmd1bWVudCBgLWRldmljZSBpODI1NTllcixuZXRkZXY9bmV0MCxidXM9cm9vdGAgdG8g
UUVNVS4KVGhpcyB3b3VsZCB0cmljayB0aGUgVk0ncyBMaW51eCBrZXJuZWwgdG8gbG9hZCB0aGUg
YGUxMDAgZHJpdmVyYC4KCklJKSBXaGVuIHRoZSBkcml2ZXIgaXMgbG9hZGVkLCBpdCB3b3VsZCBw
ZXJmb3JtIGluaXRpYWxpemF0aW9uIGR1cmluZwp3aGljaCBpdCB3b3VsZCByZXNlcnZlIGEgY29u
dGlndW91cyBETUEgbWVtb3J5IHBvb2wgKDEpIGluIF9kZWNyeXB0ZWQgbWVtb3J5Xy4KTGF0ZXIg
b24sIHRoZSBkcml2ZXIgd291bGQgYWxsb2NhdGUgb2JqZWN0cyBvZiB0eXBlIGBzdHJ1Y3QgY2Jg
IGZyb20gdGhhdApwb29sICgyKS4KCklJSSkgVGhlIGFsbG9jYXRlZCBjYiBvYmplY3QgaXMgaW4g
ZGVjcnlwdGVkIG1lbW9yeSBhbmQgY29udGFpbnMgYSBwb2ludGVyIHRvIGFuCmFsbG9jYXRlZCBg
c3RydWN0IHNrX2J1ZmZgIG9iamVjdCAoMykuIEp1c3QgbGlrZSBpbiB0aGUgcHJldmlvdXMgZGlz
Y2xvc3VyZSwKdGhlIGF0dGFja2VyIGNhbiBtb2RpZnkgdGhlIHBvaW50ZXIgdG8gcG9pbnQgdG8g
ZGVjcnlwdGVkIG1lbW9yeSB3aGVyZSBhCmZha2Ugc2tfYnVmZiBpcyBjcmVhdGVkLiBUaGUgYXR0
YWNrZXIgY2FuIHNldCB0aGUgZGVzdHJ1Y3RvciBwb2ludGVyICg0KQp0byBwb2ludCB0byBleGVj
dXRhYmxlIG1lbW9yeSBpbnNpZGUgdGhlIFZNIHRvIGV4ZWN1dGUgYSB1c2VmdWwgZ2FkZ2V0LgoK
SVYpIEhvd2V2ZXIsIHRvIGdldCB0aGlzIHRvIGhhcHBlbiwgdGhlIGF0dGFja2VyIG5lZWRzIHRv
IGJlIGZhc3QgYmVjYXVzZQpzZWVtaW5nbHkgdGhlIGBza19idWZmYCBnZXRzIGFsbG9jYXRlZCBh
bmQgZGVhbGxvY2F0ZWQgdmVyeSBmYXN0LCBzbyB0aGUgcG9pbnRlcgpuZWVkcyB0byBiZSBvdmVy
d3JpdHRlbiBhdCB0aGUgcHJlY2lzZSB0aW1lIGJlZm9yZSB0aGUgYHNrX2J1ZmZgIHdvdWxkIGJl
CmRlYWxsb2NhdGVkLiBGb3IgdGhhdCwgSSBzaW1wbHkgcGVyZm9ybWVkIHRoZSBwb2ludGVyIG92
ZXJ3cml0ZSB3aGVuIGEgcGFja2V0CmlzIHNlbnQgZnJvbSB0aGUgVk0gdG8gdGhlIG91dHNpZGUg
d29ybGQuIFRoaXMgY2FuIGJlIGRvbmUgYnkgYXR0YWNoaW5nCnRvIHRoZSBRRU1VIHByb2Nlc3Mg
b3IgbW9kaWZ5aW5nIHRoZSBmdW5jdGlvbiBgdHhfY29tbWFuZGAgKDUpLiBUaGUgVk0ncwp0aHJl
YWQgaXMgY3VycmVudGx5IGhhbHRlZCBiZWNhdXNlIHRoZSBNTUlPIG9wIGNhdXNlcyBhIFZNLWV4
aXQuCgpWKSBGaW5hbCBkZXRhaWxzIG9uIGdhaW5pbmcgY29kZSBleGVjdXRpb24uIFVubGlrZSB0
aGUgZXhwbG9pdCBpbiB0aGUKcHJldmlvdXMgZGlzY2xvc3VyZSAodm14bmV0MyksIGluIHRoaXMg
c2l0dWF0aW9uIHRoZSBSQlAgcmVnaXN0ZXIgZG9lcwpub3QgcG9pbnQgdG8gb3VyIGJ1ZmZlciwg
c28gd2UgY2Fubm90IGRvIHRoZSBzYW1lIHRyaWNrIG9mIGV4ZWN1dGluZyB0aGUKYGxlYXZlOyBy
ZXRgIGdhZGdldC4KClJlZ2lzdGVycyBiZWZvcmUgY3Jhc2g6CiBSQVggIDB4MTMzNzEzMzcgICAg
ICAgICAgICAgIChvdXIgbmV3IFJJUCkKIFJCWCAgMHhmZmZmODg4MDQ5NjAwMDAwICAgICAgKG91
ciBidWZmZXIgaW4gZGVjcnlwdGVkIG1lbW9yeSkgCiBSQ1ggIDB4MTAyCiBSRFggIDB4MAogUkRJ
ICAweGZmZmY4ODgwNDk2MDAwMDAgICAgICAob3VyIGJ1ZmZlciBpbiBkZWNyeXB0ZWQgbWVtb3J5
KQogUlNJICAweDEKIFI4ICAgMHgxZDg3ZgogUjkgICAweGZmZmY4ODgwN2Y0MDAwMDAKIFIxMCAg
MHhmZmZmYzkwMDAwMTJmZGI4IAogUjExICAweDEKIFIxMiAgMHhmZmZmODg4MDQ5NjAxMjAwICAg
ICAgKGluIGRlY3J5cHRlZCBtZW1vcnkpCiBSMTMgIDB4MQogUjE0ICAweGZmZmY4ODgwN2IyMDMw
MDAgCiBSMTUgIDB4MjQwCiBSQlAgIDB4ZmZmZjg4ODA3YjIwMzk4MCAKIFJTUCAgMHhmZmZmYzkw
MDAwMTJmZDQwIAogUklQICAweDEzMzcxMzM3CgpGb3J0dW5hdGVseSwgdGhlIHN0YWNrIGNvbnRh
aW5zIHBvaW50ZXJzIHRvIG91ciBidWZmZXIsIHNvIHdlIHJlbHkgb24KdGhlIHN0YWNrJ3MgY29u
dGVudC4KCnN0YWNrIGJlZm9yZSBvdXIgZ2FkZ2V0IGdldHMgZXhlY3RlZDoKMHhmZmZmYzkwMDAw
MTJmZDQwOiAgICAgMHhmZmZmZmZmZjgxNjJjMTMwICAgICAgMHhmZmZmODg4MDQ5NjAwMDAwCjB4
ZmZmZmM5MDAwMDEyZmQ1MDogICAgIDB4ZmZmZmZmZmY4MTYyYzE3ZSAgICAgIDB4ZmZmZjg4ODA0
OTYwMDAwMAoweGZmZmZjOTAwMDAxMmZkNjA6ICAgICAweGZmZmZmZmZmODE2MmM5N2IgICAgICAw
eGZmZmY4ODgwN2IyMDM5MDAKMHhmZmZmYzkwMDAwMTJmZDcwOiAgICAgMHhmZmZmODg4MDdiMjAz
OTgwICAgICAgMHhmZmZmZmZmZmMwMGVjMmYyCjB4ZmZmZmM5MDAwMDEyZmQ4MDogICAgIDB4ZmZm
Zjg4ODA3YjIwMzkwMCAgICAgIDB4ZmZmZjg4ODA0OTdkZTlhMAoweGZmZmZjOTAwMDAxMmZkOTA6
ICAgICAweGZmZmY4ODgwNGNjNDEzYzAgICAgICAweDAwMDAwMDAwMDAwMDAwMDAKMHhmZmZmYzkw
MDAwMTJmZGEwOiAgICAgMHhmZmZmODg4MDQ5N2RlYTYwICAgICAgMHhmZmZmODg4MDdiMjAzOTk4
CjB4ZmZmZmM5MDAwMDEyZmRiMDogICAgIDB4ZmZmZmZmZmZjMDBlZDcwMCAgICAgIDB4ZmZmZjg4
ODA0Yjg0MDAwMAoweGZmZmZjOTAwMDAxMmZkYzA6ICAgICAweGZmZmY4ODgwNGI4NDY5MDAgICAg
ICAweDAwMDAwMDEwMDAwMDAwMDQKMHhmZmZmYzkwMDAwMTJmZGQwOiAgICAgMHgwMDAwMDAwMGZm
ZmZmZmZmICAgICAgMHhmZmZmODg4MDdmOWFkYjAwCjB4ZmZmZmM5MDAwMDEyZmRlMDogICAgIDB4
MDAwMDAwMDAwMDAwMDAxMCAgICAgIDB4MDAwMDAwMDAwMDAwMDEyYwoweGZmZmZjOTAwMDAxMmZk
ZjA6ICAgICAweGZmZmY4ODgwN2IyMDM5OTggICAgICAweDAwMDAwMDAwMDAwMDAwMDAKMHhmZmZm
YzkwMDAwMTJmZTAwOiAgICAgMHhmZmZmZmZmZjgxNjQ4YmFkICAgICAgMHgwMDAwMDAwMGZmZmY0
NWE2CjB4ZmZmZmM5MDAwMDEyZmUxMDogICAgIDB4ZmZmZjg4ODA3ZjlhZGIwMCAgICAgIDB4MDAw
MDAwMDAwMDAyY2I0MAoweGZmZmZjOTAwMDAxMmZlMjA6ICAgICAweGZmZmZjOTAwMDAxMmZlMjAg
ICAgICAweGZmZmZjOTAwMDAxMmZlMjAKMHhmZmZmYzkwMDAwMTJmZTMwOiAgICAgMHhmZmZmYzkw
MDAwMTJmZTMwICAgICAgMHhmZmZmYzkwMDAwMTJmZTMwCgpJIGNoZWNrZWQgdGhlIGltYWdlIGZv
ciBnYWRnZXRzIGFuZCBmb3VuZCB0aGlzIGdhZGdldCB3aGljaCBjYW4gcG9zaXRpb24KdGhlIHN0
YWNrIGludG8gZGVjcnlwdGVkIG1lbW9yeToKcG9wIHJjeDsgb3IgZWF4LCAweDMxODg3NTgyOyBy
Y3IgYnl0ZSBwdHIgW3JieCArIDB4NWRdLCAweDQxOyBwb3AgcnNwOyByZXQ7CgpXaXRoIHRoYXQs
IHRoZSBzdGFjayBpcyBub3cgaW4gZGVjcnlwdGVkIG1lbW9yeSBhbmQgdGhlIGF0dGFja2VyIGNh
biBleGVjdXRlCmNvZGUgdmlhIFJldHVybi1vcmllbnRlZCBwcm9ncmFtbWluZy4gVGhhdCBpcyBz
dWZmaWNpZW50IHRvIGRvIHJlYWwgY29kZQppbmplY3Rpb24gYnkgb3ZlcndyaXRpbmcgdGhlIG1l
bW9yeSwgb3IgdG8gc3RlYWwgc2VjcmV0cy4KCiMgUG9DCkkgZGlkIGEgUG9DIGZvciB0aGlzIGV4
cGxvaXQgYXMgd2VsbCBieSBhdHRhY2hpbmcgdG8gdGhlIFFFTVUgcHJvY2VzcyBhbmQKcnVubmlu
ZyBhIHB5dGhvbiBnZGIgc2NyaXB0IEkgZGV2ZWxvcGVkLiBGb3IgdGhlIHB1cnBvc2Ugb2YgdGhl
IGV4cGxvaXQsCktBU0xSIHdhcyBkaXNhYmxlZCwgYnV0IEkgd291bGQgbGlrZSB0byBlbXBoYXNp
emUgdGhhdCB0aGUgYHBhZ2Vfb2Zmc2V0X2Jhc2VgCmlzIGFsd2F5cyBsZWFrZWQsIGFuZCBJIGFt
IHN1cmUgdGhhdCB0aGUgaW1hZ2UgYmFzZSBjYW4gYWxzbyBiZSBsZWFrZWQuCgpbMV06IGh0dHBz
Oi8vZWxpeGlyLmJvb3RsaW4uY29tL2xpbnV4L3Y1LjEwL3NvdXJjZS9kcml2ZXJzL25ldC9ldGhl
cm5ldC9pbnRlbC9lMTAwLmMjTDI5MzYKWzJdOiBodHRwczovL2VsaXhpci5ib290bGluLmNvbS9s
aW51eC92NS4xMC9zb3VyY2UvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEwMC5jI0wxODg1
ClszXTogaHR0cHM6Ly9lbGl4aXIuYm9vdGxpbi5jb20vbGludXgvdjUuMTAvc291cmNlL2RyaXZl
cnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAuYyNMNDk4Cls0XTogaHR0cHM6Ly9lbGl4aXIuYm9v
dGxpbi5jb20vbGludXgvdjUuMTAvc291cmNlL2luY2x1ZGUvbGludXgvc2tidWZmLmgjTDc1Mwpb
NV06IGh0dHBzOi8vZ2l0aHViLmNvbS9xZW11L3FlbXUvYmxvYi9tYXN0ZXIvaHcvbmV0L2VlcHJv
MTAwLmMjTDczNAo=

--_005_AM7P194MB0900E443CEBD6EF2EE37325ED9AE0AM7P194MB0900EURP_
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--_005_AM7P194MB0900E443CEBD6EF2EE37325ED9AE0AM7P194MB0900EURP_--
