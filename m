Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DA41B21087
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 May 2019 00:33:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7073886938;
	Thu, 16 May 2019 22:33:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5Bgwb4hHmyXv; Thu, 16 May 2019 22:33:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 87AFB874D3;
	Thu, 16 May 2019 22:33:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C8F6E1BF28E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 May 2019 22:33:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C2A8B86938
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 May 2019 22:33:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yf3Km1lIroNh for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 May 2019 22:33:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from alln-iport-3.cisco.com (alln-iport-3.cisco.com [173.37.142.90])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 91BF886919
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 May 2019 22:33:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=cisco.com; i=@cisco.com; l=2706; q=dns/txt; s=iport;
 t=1558046000; x=1559255600;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=z7LebGJsPnYpWy/gR9XMGSu5NumicmBU891SEomATj4=;
 b=mYpLQzvLeyaGNy/VbGjMdPYJSYox2iHimFP0rLzesw5S6w+rkX24+v7T
 hP1zA313YLoDYgooEEj+ylVWn+OrBfpbs8yG0yNGzUrxVf315yFkwN5dN
 l3CDokmzoYFdQfYy/7oMXVdhJL1d/JiSvWoOjZAd+V0LIe0hbPJ5o1NE4 o=;
IronPort-PHdr: =?us-ascii?q?9a23=3AwvhLNRHDyS5vFtofXYWIf51GYnJ96bzpIg4Y7I?=
 =?us-ascii?q?YmgLtSc6Oluo7vJ1Hb+e4w3A3SRYuO7fVChqKWqK3mVWEaqbe5+HEZON0pNV?=
 =?us-ascii?q?cejNkO2QkpAcqLE0r+efjpYigzNM9DT1RiuXq8NBsdFQ=3D=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0ANAAC55N1c/4MNJK1kGgEBAQEBAgE?=
 =?us-ascii?q?BAQEHAgEBAQGBUgQBAQEBCwGBPVADgT4gBAsohBGDRwOOdIJXiUCNZ4EugSQ?=
 =?us-ascii?q?DVAkBAQEMAQEtAgEBgUuCdQIXghcjNQgOAQMBAQQBAQIBBG0cDIVLAQEEEhE?=
 =?us-ascii?q?RDAEBNwEPAgEIDgoCAiYCAgIfERUQAgQBDQUbB4MAgWsDHQECoGICgTWIX3G?=
 =?us-ascii?q?BL4J5AQEFhQUNC4IPCRR3KAGLTxeBQD+BOB+CTD6CGoIqgwoygiaNQSyZYjk?=
 =?us-ascii?q?JAoIJjxaDVxuWCYxFiDiMcwIEAgQFAg4BAQWBUQMzgVdwFWUBgkGCD4NvilN?=
 =?us-ascii?q?yAYEoi2krgiUBAQ?=
X-IronPort-AV: E=Sophos;i="5.60,477,1549929600"; d="scan'208";a="277907918"
Received: from alln-core-1.cisco.com ([173.36.13.131])
 by alln-iport-3.cisco.com with ESMTP/TLS/DHE-RSA-SEED-SHA;
 16 May 2019 22:33:19 +0000
Received: from XCH-RCD-006.cisco.com (xch-rcd-006.cisco.com [173.37.102.16])
 by alln-core-1.cisco.com (8.15.2/8.15.2) with ESMTPS id x4GMXIdm030427
 (version=TLSv1.2 cipher=AES256-SHA bits=256 verify=FAIL);
 Thu, 16 May 2019 22:33:19 GMT
Received: from xhs-aln-003.cisco.com (173.37.135.120) by XCH-RCD-006.cisco.com
 (173.37.102.16) with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Thu, 16 May 2019 17:33:18 -0500
Received: from xhs-rcd-002.cisco.com (173.37.227.247) by xhs-aln-003.cisco.com
 (173.37.135.120) with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Thu, 16 May 2019 17:33:17 -0500
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (72.163.14.9) by
 xhs-rcd-002.cisco.com (173.37.227.247) with Microsoft SMTP Server
 (TLS) id
 15.0.1473.3 via Frontend Transport; Thu, 16 May 2019 17:33:17 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cisco.onmicrosoft.com; 
 s=selector1-cisco-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=z7LebGJsPnYpWy/gR9XMGSu5NumicmBU891SEomATj4=;
 b=cae1X6dmAJk5qLR/MaoIEDaeVbi150XEZMmR4thEFo4mrV+b7qDhPfeClKLTK9gzaZmIiLxXHqPE1De5Oy07aKN++5MZjYW0RWnKw4gg5oAIj17kBYG2apxa27svS6t5V44biPe2HQFLUlNEmg7+wxI583txr7KxLPnLOfpIraQ=
Received: from BYAPR11MB2744.namprd11.prod.outlook.com (52.135.228.10) by
 BYAPR11MB3448.namprd11.prod.outlook.com (20.177.186.217) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1878.26; Thu, 16 May 2019 22:33:15 +0000
Received: from BYAPR11MB2744.namprd11.prod.outlook.com
 ([fe80::e43c:3a2a:b70b:beaf]) by BYAPR11MB2744.namprd11.prod.outlook.com
 ([fe80::e43c:3a2a:b70b:beaf%5]) with mapi id 15.20.1878.024; Thu, 16 May 2019
 22:33:15 +0000
From: "Nikunj Kela (nkela)" <nkela@cisco.com>
To: Florian Fainelli <f.fainelli@gmail.com>, "jeffrey.t.kirsher@intel.com"
 <jeffrey.t.kirsher@intel.com>
Thread-Topic: [PATCH] igb: add parameter to ignore nvm checksum validation
Thread-Index: AQHVBfPQmilbvj7AIk6HX7/hQr0aSqZuMR+AgAAFiICAACN/AIAACKaA
Date: Thu, 16 May 2019 22:33:15 +0000
Message-ID: <F028ADDC-EA02-46C3-AC7A-A1A6606BC3F5@cisco.com>
References: <1557357269-9498-1-git-send-email-nkela@cisco.com>
 <9be117dc6e818ab83376cd8e0f79dbfaaf193aa9.camel@intel.com>
 <76B41175-0CEE-466C-91BF-89A1CA857061@cisco.com>
 <4469196a-0705-5459-8aca-3f08e9889d61@gmail.com>
In-Reply-To: <4469196a-0705-5459-8aca-3f08e9889d61@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, OOF, AutoReply
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=nkela@cisco.com; 
x-originating-ip: [2001:420:30a:4d04:34de:1b8a:9315:481d]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: fdea4004-a1f7-4662-fb07-08d6da4e7cea
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:BYAPR11MB3448; 
x-ms-traffictypediagnostic: BYAPR11MB3448:
x-ld-processed: 5ae1af62-9505-4097-a69a-c1553ef7840e,ExtAddr
x-microsoft-antispam-prvs: <BYAPR11MB344831EB028C07682F7790B1AD0A0@BYAPR11MB3448.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0039C6E5C5
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(396003)(136003)(376002)(39860400002)(366004)(199004)(189003)(86362001)(186003)(446003)(6506007)(8936002)(6246003)(11346002)(102836004)(7736002)(14454004)(2501003)(2906002)(4326008)(46003)(68736007)(478600001)(316002)(76176011)(305945005)(5660300002)(229853002)(66556008)(66946007)(76116006)(73956011)(66446008)(64756008)(66476007)(71200400001)(83716004)(71190400001)(6512007)(6436002)(6486002)(6116002)(25786009)(36756003)(33656002)(54906003)(256004)(81156014)(82746002)(2616005)(110136005)(81166006)(53546011)(99286004)(476003)(486006)(53936002)(8676002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR11MB3448;
 H:BYAPR11MB2744.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: cisco.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 88vJQG/TBJlVTDkrwecfPbbQjK/PjKHkkLw1B4GXXsxbMY5IYOSBk1haVRk80U6h0y+j82KbGNMdFMuyKYFDbQo3nis0pW8ZVRFN/Jts0kwPjWGxARzbrcMM8Fq3eerrYhJk8lXKKzP0KjB+P59Ub7edkOIGqfq5cjlFEOW+7Tf7qtaPx/j998OQGLeFCdL+8wzHxW7cvAW/Pftv03u7NDRfaEVRjROJK+AK4R39x2uilBgYjMBx4r8iDVNZrc3AMpbIDoh/mnA9qrfg81Z3tTmYW01B5Q1RceJKBgkDsl2tYugJh8Sar3ifIzoL4+rPxbQUYdfrEQZ/F8s7cYrvO+gblD9yI6mMSZ5ESzAp2fZECcWXkhKSACgWfWu8eotMSeibQbCnVD3hnGyRVwQtrePNfYoRDzvVw1EOkDRMgkY=
Content-ID: <B1FB4C5C63BF63408351084027178CDA@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: fdea4004-a1f7-4662-fb07-08d6da4e7cea
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 May 2019 22:33:15.5993 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 5ae1af62-9505-4097-a69a-c1553ef7840e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3448
X-OriginatorOrg: cisco.com
X-Outbound-SMTP-Client: 173.37.102.16, xch-rcd-006.cisco.com
X-Outbound-Node: alln-core-1.cisco.com
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



On 5/16/19, 3:02 PM, "Florian Fainelli" <f.fainelli@gmail.com> wrote:

    On 5/16/19 12:55 PM, Nikunj Kela (nkela) wrote:
    >> 
    >> 
    >> On 5/16/19, 12:35 PM, "Jeff Kirsher" <jeffrey.t.kirsher@intel.com> wrote:
    >> 
    >>     On Wed, 2019-05-08 at 23:14 +0000, Nikunj Kela wrote:
    >>    >> Some of the broken NICs don't have EEPROM programmed correctly. It
    >>    >> results
    >>    >> in probe to fail. This change adds a module parameter that can be
    >>    >> used to
    >>    >> ignore nvm checksum validation.
    >>    >> 
    >>    >> Cc: xe-linux-external@cisco.com
    >>    >> Signed-off-by: Nikunj Kela <nkela@cisco.com>
    >>    >> ---
    >>    >>  drivers/net/ethernet/intel/igb/igb_main.c | 28
    >>    >> ++++++++++++++++++++++------
    >>    >>  1 file changed, 22 insertions(+), 6 deletions(-)
    >>     
    >>     >NAK for two reasons.  First, module parameters are not desirable
    >>     >because their individual to one driver and a global solution should be
    >>     >found so that all networking device drivers can use the solution.  This
    >>     >will keep the interface to change/setup/modify networking drivers
    >>     >consistent for all drivers.
    >> 
    >>     
    >>     >Second and more importantly, if your NIC is broken, fix it.  Do not try
    >>     >and create a software workaround so that you can continue to use a
    >>     >broken NIC.  There are methods/tools available to properly reprogram
    >>     >the EEPROM on a NIC, which is the right solution for your issue.
    >> 
    >> I am proposing this as a debug parameter. Obviously, we need to fix EEPROM but this helps us continuing the development while manufacturing fixes NIC.
    
    >Then why even bother with sending this upstream?
    >-- 
    >Florian

My colleagues wanted me to upstream so if there is anyone else in the same situations, maybe there is a better solution. 
    

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
