Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 99BCB20F65
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 May 2019 21:55:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1385286748;
	Thu, 16 May 2019 19:55:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id b6ZDds-JG_Ux; Thu, 16 May 2019 19:55:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A8A7686741;
	Thu, 16 May 2019 19:55:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E57991BF28D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 May 2019 19:55:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id E175E8816B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 May 2019 19:55:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WZVzknHArYut for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 May 2019 19:55:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from alln-iport-2.cisco.com (alln-iport-2.cisco.com [173.37.142.89])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 7ACB287FCC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 May 2019 19:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=cisco.com; i=@cisco.com; l=1942; q=dns/txt; s=iport;
 t=1558036522; x=1559246122;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=xwo9DXIib5kAvinw58nr377mdpB0gR/+fbltU9RiSIA=;
 b=T5dZ5IMJLPmxGAC5YSACIOk3YMMJwDbw3bH94FeJjyQk9PdbgJJdZ3GF
 kZMxQaqWGJkHdBCi8KPtckpdFnYBFSFZ0EybZhJV4ZQq4nPaeU+wPP2qm
 EAOX2MMNZjLj/xgy4S/7YGNOMqJd6dQiGGnOIjfQozu940pCA65w7DB0B Q=;
IronPort-PHdr: =?us-ascii?q?9a23=3AeuaO5BIMJ6xZ6VcQItmcpTVXNCE6p7X5OBIU4Z?=
 =?us-ascii?q?M7irVIN76u5InmIFeCtad2lFGcW4Ld5roEkOfQv636EU04qZea+DFnEtRXUg?=
 =?us-ascii?q?Mdz8AfngguGsmAXEv4IfrjRyc7B89FElRi+iLzPA=3D=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0A1AAAYv91c/5pdJa1kGwEBAQEDAQE?=
 =?us-ascii?q?BBwMBAQGBUgUBAQELAYE9UAOBPiAECyiEEYNHA451gleXJoEugSQDVAkBAQE?=
 =?us-ascii?q?MAQEtAgEBgUuCdQIXghcjNQgOAQMBAQQBAQIBBG0cAQuFSwEBAQMSEREMAQE?=
 =?us-ascii?q?3AQ8CAQgYAgImAgICMBUQAgQOBRsHgwCBawMdAQKhCwKBNYhfcYEvgnkBAQW?=
 =?us-ascii?q?FCRiCDwkUdygBi08XgUA/gTgfgkw+h04ygiaNQSyaGwkCggmSbRuWCYxFlSs?=
 =?us-ascii?q?CBAIEBQIOAQEFgVEDM4FXcBVlAYJBgg+Db4pTcgGBKIxXK4IlAQE?=
X-IronPort-AV: E=Sophos;i="5.60,477,1549929600"; d="scan'208";a="274498504"
Received: from rcdn-core-3.cisco.com ([173.37.93.154])
 by alln-iport-2.cisco.com with ESMTP/TLS/DHE-RSA-SEED-SHA;
 16 May 2019 19:55:21 +0000
Received: from XCH-RCD-012.cisco.com (xch-rcd-012.cisco.com [173.37.102.22])
 by rcdn-core-3.cisco.com (8.15.2/8.15.2) with ESMTPS id x4GJtKsf024193
 (version=TLSv1.2 cipher=AES256-SHA bits=256 verify=FAIL);
 Thu, 16 May 2019 19:55:21 GMT
Received: from xhs-rtp-003.cisco.com (64.101.210.230) by XCH-RCD-012.cisco.com
 (173.37.102.22) with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Thu, 16 May 2019 14:55:20 -0500
Received: from xhs-rtp-003.cisco.com (64.101.210.230) by xhs-rtp-003.cisco.com
 (64.101.210.230) with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Thu, 16 May 2019 15:55:18 -0400
Received: from NAM04-BN3-obe.outbound.protection.outlook.com (64.101.32.56) by
 xhs-rtp-003.cisco.com (64.101.210.230) with Microsoft SMTP Server
 (TLS) id
 15.0.1473.3 via Frontend Transport; Thu, 16 May 2019 15:55:18 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cisco.onmicrosoft.com; 
 s=selector2-cisco-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xwo9DXIib5kAvinw58nr377mdpB0gR/+fbltU9RiSIA=;
 b=YsELEVWv96Twer6zHi9MbfPkASXQsIS6wcg6RYOdHffhBIyglRluYDdCWWldt2zl+trAsB1bNAD1IpiTEPnBnW0Vgu1NQeU/X02jsV9WzmTUmcnlZfuJ1iqbmWl++F6Q/JzDf13NEU45UuH/bH2Td0YUCiXF1T+eB1m/ymYIs14=
Received: from BYAPR11MB2744.namprd11.prod.outlook.com (52.135.228.10) by
 BYAPR11MB2597.namprd11.prod.outlook.com (52.135.227.18) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.16; Thu, 16 May 2019 19:55:16 +0000
Received: from BYAPR11MB2744.namprd11.prod.outlook.com
 ([fe80::e43c:3a2a:b70b:beaf]) by BYAPR11MB2744.namprd11.prod.outlook.com
 ([fe80::e43c:3a2a:b70b:beaf%5]) with mapi id 15.20.1878.024; Thu, 16 May 2019
 19:55:16 +0000
From: "Nikunj Kela (nkela)" <nkela@cisco.com>
To: "jeffrey.t.kirsher@intel.com" <jeffrey.t.kirsher@intel.com>
Thread-Topic: [PATCH] igb: add parameter to ignore nvm checksum validation
Thread-Index: AQHVBfPQmilbvj7AIk6HX7/hQr0aSqZuMR+AgAAFiIA=
Date: Thu, 16 May 2019 19:55:16 +0000
Message-ID: <76B41175-0CEE-466C-91BF-89A1CA857061@cisco.com>
References: <1557357269-9498-1-git-send-email-nkela@cisco.com>
 <9be117dc6e818ab83376cd8e0f79dbfaaf193aa9.camel@intel.com>
In-Reply-To: <9be117dc6e818ab83376cd8e0f79dbfaaf193aa9.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, OOF, AutoReply
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=nkela@cisco.com; 
x-originating-ip: [2001:420:30a:4d04:34de:1b8a:9315:481d]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: db673654-81ca-4dc4-8313-08d6da386b10
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:BYAPR11MB2597; 
x-ms-traffictypediagnostic: BYAPR11MB2597:
x-ld-processed: 5ae1af62-9505-4097-a69a-c1553ef7840e,ExtAddr
x-microsoft-antispam-prvs: <BYAPR11MB259710B29006285B182A7DC4AD0A0@BYAPR11MB2597.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0039C6E5C5
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(396003)(366004)(39860400002)(346002)(136003)(189003)(199004)(99286004)(305945005)(5640700003)(71200400001)(66476007)(66946007)(82746002)(33656002)(71190400001)(2501003)(66556008)(6246003)(64756008)(66446008)(229853002)(6436002)(54906003)(256004)(68736007)(73956011)(76116006)(53936002)(5660300002)(6486002)(83716004)(486006)(86362001)(6116002)(25786009)(14454004)(11346002)(102836004)(6506007)(186003)(53546011)(8676002)(8936002)(36756003)(446003)(81166006)(2616005)(81156014)(2906002)(478600001)(7736002)(4326008)(476003)(46003)(2351001)(316002)(76176011)(6512007)(6916009);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR11MB2597;
 H:BYAPR11MB2744.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: cisco.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: NLSGwMJ0wjVm+KWStrw/IE1Wr0QT9kwy8sLFF4NP+0/doNf/7j4itFwBrPoz9/t/DMjpSmip45J4ZcjjMPHEIP4J37d18PRKcOkeEojn/R7WXjRCZyx7Nmrf+uGthzOv/ivWgNZ1r1iZe52QDhYGfPTN4df73LKdMWhvIqm7HR6BOlB5XovW3ZRMuwcE+nnYT5+v79VSWmZ17MlYezIqmu9v47zONDBFr+K2nHnRLE9a0oZGICcyTIN6ts0gf6visO0RWwwnzNHM7gpAD8Cf12FXYDEP0oc63HQLd2jklWJ5tqFmMe+eWhl8DsTcRMnvabrcwhJzfgsvLUyf/jqx8neLl4CnuNBYwioOU+hthVkXDRXqE24cIS5nd9GFuCGuGH2vPT1bdMAielvH3eRTNzfS2CRv04c9Q9iufupqxfg=
Content-ID: <40643AC9A3943F4BA5A819F2B15AEFAC@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: db673654-81ca-4dc4-8313-08d6da386b10
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 May 2019 19:55:16.6253 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 5ae1af62-9505-4097-a69a-c1553ef7840e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB2597
X-OriginatorOrg: cisco.com
X-Outbound-SMTP-Client: 173.37.102.22, xch-rcd-012.cisco.com
X-Outbound-Node: rcdn-core-3.cisco.com
Subject: Re: [Intel-wired-lan] [PATCH] igb: add parameter to ignore nvm
 checksum validation
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
 "David S. Miller" <davem@davemloft.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "xe-linux-external\(mailer list\)" <xe-linux-external@cisco.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 5/16/19, 12:35 PM, "Jeff Kirsher" <jeffrey.t.kirsher@intel.com> wrote:

    On Wed, 2019-05-08 at 23:14 +0000, Nikunj Kela wrote:
   >> Some of the broken NICs don't have EEPROM programmed correctly. It
   >> results
   >> in probe to fail. This change adds a module parameter that can be
   >> used to
   >> ignore nvm checksum validation.
   >> 
   >> Cc: xe-linux-external@cisco.com
   >> Signed-off-by: Nikunj Kela <nkela@cisco.com>
   >> ---
   >>  drivers/net/ethernet/intel/igb/igb_main.c | 28
   >> ++++++++++++++++++++++------
   >>  1 file changed, 22 insertions(+), 6 deletions(-)
    
    >NAK for two reasons.  First, module parameters are not desirable
    >because their individual to one driver and a global solution should be
    >found so that all networking device drivers can use the solution.  This
    >will keep the interface to change/setup/modify networking drivers
    >consistent for all drivers.

    
    >Second and more importantly, if your NIC is broken, fix it.  Do not try
    >and create a software workaround so that you can continue to use a
    >broken NIC.  There are methods/tools available to properly reprogram
    >the EEPROM on a NIC, which is the right solution for your issue.

I am proposing this as a debug parameter. Obviously, we need to fix EEPROM but this helps us continuing the development while manufacturing fixes NIC.
    

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
