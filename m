Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 16A286DC3BB
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Apr 2023 09:02:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A961741D8A;
	Mon, 10 Apr 2023 07:02:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A961741D8A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681110132;
	bh=w0F7F/5QBXUNVUsd1fClxzwNr5nH2zkqnTn1wvx3/8o=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=UX4VMFKvUw5OPAXXKnxyfBglur6yeQhyp8MWVSxH4nArgT3vX+NSecyX3ZAHLR/W6
	 Jls5vk+PtWdKErg+Yn+1FH3KKwAhrDoooN0LogytMKFbYTulHabnjoAzACmoCWTBWu
	 wmlAHsYVag+rxLTDR57M6uT8ny7QdOKXK4SJQicN9s2DZwsrbk16jcOztfBD+YNt2u
	 4lljRLSdZB1VtD86Wgs9FtmCetFKU6TjOIOT0s1advo0n1M0Tl5JseMDCsdZpblxI6
	 OCF4ExVnFEyXPRPx2ZQNwboP6K7jZ+8mSaoGLF2XTUlolrWY081wR3FkRdVt7XAP39
	 0Um28I/DQwYsg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vhw48-twbUnJ; Mon, 10 Apr 2023 07:02:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 75FCA4167F;
	Mon, 10 Apr 2023 07:02:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 75FCA4167F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DA7521BF20B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Apr 2023 07:02:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id AE5184167F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Apr 2023 07:02:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AE5184167F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HNAVVDtr9Gyn for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Apr 2023 07:02:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EBBA84148B
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EBBA84148B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Apr 2023 07:02:03 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10675"; a="343308300"
X-IronPort-AV: E=Sophos;i="5.98,333,1673942400"; d="scan'208";a="343308300"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2023 00:02:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10675"; a="638383038"
X-IronPort-AV: E=Sophos;i="5.98,333,1673942400"; d="scan'208";a="638383038"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga003.jf.intel.com with ESMTP; 10 Apr 2023 00:02:00 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 10 Apr 2023 00:01:56 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Mon, 10 Apr 2023 00:01:56 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Mon, 10 Apr 2023 00:01:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ny2PI0M36epBRYt7qf4DgNFITkG/H8OjwsX77kCtWhGkQ+NWx+vKL3NF/yrZb5dPYWwjPenom23c+JiYVX2wQGL1zTmIR7JvCgRCfGeg2o1jgBL9GBhjEA1zCzqMxXh74ZgWxfYfMl8wVcyd4YUxzjH3xbLBOq/k38azBMZTO7asnFRuh0IbwyLdxYuWVzjJdzzm0B40hd24ok6ocV2lYR6DrisBQk/YAMa0jJAt2yQjJhfYkb/wKULAftzmLCXRAO5kbJHBG0NATkzBx9cPfdxGWVfH5cJ8lPHnCgZdGSPIiHiS9QQ3NgPVdfuzqw+1yUpfgGO91meHCNJs/rAE3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kqAEo91O7o2KAcVMwlTLXl5IcMnMlI0rL1ZWTnbcZOM=;
 b=ZES/+QMtsQ4dFTx1wtkz6F0d2xDn9N9Fzf0rZKXLxST1KBaR+g4hUwYtpOr/xKr4UG5FMcY8GC1ucAV7ilhHGtBMMn7/n0R/xpnz6WIzQJ3Zqw2Fzb9rvx4593X7DSmlHI8uTyDnVJvnlNEz5qYJVyhTi1/TOojdzSuAGko0SuATN85IyZE6k8azKnsJPCs3TSlteZIKgRCwrAP3tUzSQ/beA3qfBIoCpT/FeS0j7K4l/Ii04W8q0Sq5WwOHke+dY9rgML9h+5PqIZsOWuPx6oD77+3+pwciX7+qQhGtSREKaDi0mOitC5h0gFgawORh3uOiJMUwmQFpZsDwu5jE7Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6180.namprd11.prod.outlook.com (2603:10b6:a03:459::14)
 by DS7PR11MB7836.namprd11.prod.outlook.com (2603:10b6:8:e3::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6277.35; Mon, 10 Apr
 2023 07:01:52 +0000
Received: from SJ1PR11MB6180.namprd11.prod.outlook.com
 ([fe80::1977:c45:c8b3:b5bc]) by SJ1PR11MB6180.namprd11.prod.outlook.com
 ([fe80::1977:c45:c8b3:b5bc%3]) with mapi id 15.20.6277.036; Mon, 10 Apr 2023
 07:01:52 +0000
From: "Zulkifli, Muhammad Husaini" <muhammad.husaini.zulkifli@intel.com>
To: Kyle Sanderson <kyle.leet@gmail.com>, "Neftin, Sasha"
 <sasha.neftin@intel.com>, "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Brandeburg, Jesse" <jesse.brandeburg@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>
Thread-Topic: igc: 5.15.98 Kernel PANIC on igc_down
Thread-Index: AQHZa3pTdkGGLPmnzUO3aJQ289Vb/g==
X-CallingTelephoneNumber: IPM.Note
X-VoiceMessageDuration: 1
X-FaxNumberOfPages: 0
Date: Mon, 10 Apr 2023 07:01:51 +0000
Message-ID: <SJ1PR11MB6180DE234AB5B2170FD5BD1FB8959@SJ1PR11MB6180.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6180:EE_|DS7PR11MB7836:EE_
x-ms-office365-filtering-correlation-id: 1331befd-b900-44e4-669d-08db39917604
x-ms-exchange-recallreportgenerated: true
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-recallreportcfmgenerated: true
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: CJudyKPle8ZXUlFnTuITNizAtnMWMu4QlTx7VpCnMhA2vJF+bJdo6jHvSvxyd/5f40Ulc/Unkifv5/T41ipnnszkzeH3PW9amQ+CQkj8CeKzJoudouIlGFqaUowUTfPx+YWdkOQc/67w7kBqxw+G0sTmYQvPfcnJZw4bIwJVF0z7+MjzRVZB0BMNgW48z6YxGEmzrlTGPQNsod5pQtoGB7GUV8yL8rulZbzvCuRGKIkBGBi7VrWWLusdqm3LKbBleTsbSBtdvxzXHvlRTktaIfEzF3Xmo9S2Mx96n8iR+DBRSE122CV2uV7ntDltJlDuTwq7GiZ/RHLAAVOJkBWnKNK0hpqQRjAy0lRrXCeSh9RmE/f4dGu3j+Y2ywH5ZKkHrqjcEV3KQmihOLWOywDH/mLJs73VdoURfexl7Q+8BkiMz+yLdT020HBz+fdRKp/ZlefWTtH5yaozp3sLfURS2LEUTPNFXm/g7AbHyG7Q8qEHTP/itxocP2eKcFkAaUYZClW/thzNUL3Km/so6YK6nmWmap0oyX7/JTnRGLOtuv9u11QgLHDyOBeBTFFl/a4ID12vPEi7ihn843N+CroheVjrGwViqnObCyHtqNePndTXtwH9Uu0uKFbv6sCEduN/
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6180.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(136003)(376002)(39860400002)(396003)(366004)(451199021)(86362001)(33656002)(558084003)(316002)(76116006)(110136005)(41300700001)(66476007)(66446008)(64756008)(8676002)(66556008)(6636002)(4326008)(7696005)(66946007)(54906003)(478600001)(71200400001)(55016003)(5660300002)(52536014)(2906002)(8936002)(38070700005)(38100700002)(82960400001)(122000001)(186003)(6506007)(26005)(9686003)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?p3dcRS4zppiJxbaoqoERztBKPQXLkanAn0kJNXomFHs2PlBskgKR5VzBRKY/?=
 =?us-ascii?Q?0yO7TFTyAw4nNuygftwrtIhonVJWQ/3O7eo5fwkC94jiNo0DiqhL9gYzjMw/?=
 =?us-ascii?Q?nZoySC8MPyAtBprDiMxnQEP88GyISvO0Lm1GeanqJjOTWCz1nWYBnCdo4uUj?=
 =?us-ascii?Q?gf8fiXoWCQjI7kOyjsZ2qYCOenxKq+fdTpBox22eRFyezTLhZcV8m3i2cFO2?=
 =?us-ascii?Q?TSen3+bNexvXC6WAhPWVXYDg0064CPjSzkYbTlfDrCrkrXT0HFN3W3sj/Yv8?=
 =?us-ascii?Q?EfWxA1Qt0e9Dz3Av9GTtdDJ3i8KCb1jxwuiOAunR9/frpAhUCKDRuoIzUtv2?=
 =?us-ascii?Q?Xhwpxanf2c0BBmEjZiTLcpsLLSUeofD1B4PU4RrXUfkHgCT8a3ocQkCrOTAa?=
 =?us-ascii?Q?HD1K36xuKbj743jJSrpjZ5ei8475hNBsblpEdRu2qzUDLqShs1euVkQUrr94?=
 =?us-ascii?Q?2VVckzE1C44wuCCWa2sPFKlTCmIGYTNHdGnvm09ZwTTpJCxmBnhZu2M75zCH?=
 =?us-ascii?Q?FK03K8PLfHJmzujtuNoFSFQfE+evnL2s3POIdCy1wnJueLOBpanJK5W2m/G2?=
 =?us-ascii?Q?JGPkBFIzT6isz4dETE/DD2CjlRMu143jhTQebbw6IQTlzDDX00VNEI1BvQ7W?=
 =?us-ascii?Q?tT5cGSTh8X6WTo7lRSwOEqKjvRXzZVTqo3TTPRBZN+dMQo0yN9SAVQPdXCmY?=
 =?us-ascii?Q?Gd58tllQY0pyJXBBfCJNse3PwTEwea4n7AhoOfdCSpobCHUWVieGdo4EqVAU?=
 =?us-ascii?Q?elieJF00+rBGJyNR8xA6ULFGHonpl1jPjDtkmjj9fV7DUlURQvunIKkrYnpI?=
 =?us-ascii?Q?pFxwiO2WO05UAtFF08Bj2zyGuMATPxP9PDcYctzKD2v7DoUIL6cCVkWq1ey+?=
 =?us-ascii?Q?ovlU+ssEY/d1z5J6PCds2sQC0EJ2hIAsiam5zuQL1kuz7UXpwvfwElY0gaNf?=
 =?us-ascii?Q?IVA4wm3lhu/8cr0rQTc7RRoW5ysSkjnFAkuSVeqiBcOAjoLhpxkro1IOz/PF?=
 =?us-ascii?Q?baHeMmvlNxnGZAB1c8NvnF47jdSbSA6yl/YKZ48BTwajdKuvaj209HtExkAX?=
 =?us-ascii?Q?0i3/MF5sNOcAe70S/Pcuqkjz7zgsSKIJ0FcQVGkrICTkO7JI4zfLVbL+qp02?=
 =?us-ascii?Q?W/i4SFFT0N0FlOf2Egk17rOkH++sIoHctTwv4p8TMzl3F3IEGn1Y8TXpliHY?=
 =?us-ascii?Q?64w4cI1aY/MBszs17CjV7pDqQcZet8T7EviEXPHliTdYZHJq6y4jzn+2nkPv?=
 =?us-ascii?Q?3m4UM2PshiwRYHZk1nRP9zgSDgDMp5+gum2A+uxk+tFb9nEPR60Jiy4kXKxh?=
 =?us-ascii?Q?k6IGgKNbh3GEMFV9uOxQfHMRYsYWOX0+leWav63An+9Xq6kFWjt+XHAwFWJe?=
 =?us-ascii?Q?1ar/MbFjwsYoPeTmkKObfzWzivC2UDzJUoRx2afZiBSabErFDOMafPX4+P7n?=
 =?us-ascii?Q?g/FdHD2PnKA+CR+XFijEDQ2h71xXLbsX409JeU/aU//1NnsVMl79/BE641HB?=
 =?us-ascii?Q?+ei3LqXd7u4+5/yDhTK2O5j/Vo5IBS0juHXqB2llgtQAbaE4RpRZFtEGAOC6?=
 =?us-ascii?Q?leCjHOykiMOUnwI5MG4C9svE8puFriVUQG00XWQJDtapXTMxBKR584N001s6?=
 =?us-ascii?Q?9efHOyGa96+hky7AzWQ4iV0=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6180.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1331befd-b900-44e4-669d-08db39917604
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Apr 2023 07:01:51.5644 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TO7G7zppazeLHWXOOuBfSh2DBRXsh7nJ3vhpB4EP2t1q+6Y5CyRJJfTV3Bp0ixi0qTYk9eKvBlfu2vMDOHU5tUEs6/YegMl6bk0shP6QeaqsXd5GBzJ84yTDwMwyomrw
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7836
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681110123; x=1712646123;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=kqAEo91O7o2KAcVMwlTLXl5IcMnMlI0rL1ZWTnbcZOM=;
 b=hWiH5cjCLXABYLR/P8QJzwas/+5BAeYab7N/B4mb76ktpwv9J0DTEQK8
 qRd9duQd9jtqOI6h+In8iay94YdIwcjuH5uBOy4X7oBjZgURrTLGPBbwW
 nDOMwKe6FwcGFgCq16+qM9Q2EZ+5jddKiOPlqvcST10FxY/3Fj7JHK4a1
 P/WOwoWQ7qYIxMPOxXVvEg6RciOeErBWnvZ2I4usbJXe74FlnkF906Phg
 +npSQ6qftR+slMRSqU4WCL0UnL2bgoPYbJOxYNmkE8c1AAfxGalz+KJaq
 YJkcIlGED6h237PEmSCItDdajyqsZkMhsDBUIfsYJjF2qE8RfFJLiZBOK
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=hWiH5cjC
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: [Intel-wired-lan] Recall: igc: 5.15.98 Kernel PANIC on igc_down
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
Cc: "MP,
 Sureshkumar" <sureshkumar.mp@intel.com>, Greg KH <gregkh@linuxfoundation.org>,
 Linux-Kernel <linux-kernel@vger.kernel.org>, "Ruinskiy,
 Dima" <dima.ruinskiy@intel.com>, "Torvalds,
 Linus" <torvalds@linux-foundation.org>, "Avivi, Amir" <amir.avivi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Zulkifli, Muhammad Husaini would like to recall the message, "igc: 5.15.98 Kernel PANIC on igc_down".
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
