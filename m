Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7233222A60
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Jul 2020 19:49:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 75687894C0;
	Thu, 16 Jul 2020 17:48:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0wjeBXT4WZfT; Thu, 16 Jul 2020 17:48:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1A1768A919;
	Thu, 16 Jul 2020 17:48:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 38A561BF841
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jul 2020 17:48:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 34C3B89A90
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jul 2020 17:48:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KiQmjl5bGPHG for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 Jul 2020 17:48:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 5F839894C0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jul 2020 17:48:55 +0000 (UTC)
IronPort-SDR: hq9bBEpOYd6WtvT7ccqLl1Eh54NymKFJsYJLyWg8UwnUnnnx8vhK5xA5PuzDnrcnWhaTBTl3RY
 LLMwJfSxOlrg==
X-IronPort-AV: E=McAfee;i="6000,8403,9684"; a="137579872"
X-IronPort-AV: E=Sophos;i="5.75,360,1589266800"; d="scan'208";a="137579872"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2020 10:48:54 -0700
IronPort-SDR: qE0NlUOrtFxCqhgA6ZLvh9VmB74qhy/eaZXGHz7yqFQ4vjPf9ErJ5Y5flzCfuICSHOmB9GyOwQ
 pqMVok4AJ12A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,360,1589266800"; d="scan'208";a="308717128"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by fmsmga004.fm.intel.com with ESMTP; 16 Jul 2020 10:48:54 -0700
Received: from fmsmsx158.amr.corp.intel.com (10.18.116.75) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 16 Jul 2020 10:48:54 -0700
Received: from FMSEDG002.ED.cps.intel.com (10.1.192.134) by
 fmsmsx158.amr.corp.intel.com (10.18.116.75) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 16 Jul 2020 10:48:54 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.69) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Thu, 16 Jul 2020 10:48:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GRIvmxg6uNj0sEOPBxlmQ+dmAe6BYhLC+QF1ZZ063hMfVLV5PyjrhxvWbtGAQTAPTHjbA0I4YppkhYx8OG4sJJrSp8qfGyCe5OWN4oqOnaRuJkiCiOZynkwg+F4H6FwLzY72EDdWV+POlGnQwtgcZVcaOxUUVxHnF0JLlbtIumzfVrZrk4jdulC5BDm5ZLIYbwKxBDQs5QDyvcc4gJxkO8s1j6mUC2rsFFuxNmrQt7ZwtQdBh69t+uYtrFarG7f4DGuS7YWlKo9mz+5vbmHxoQQ/dujd//KOHo+aF5q1oToPGfZl6Zlf0lQYL37AnHlqUWWAYMzia7XIwpsDzECcIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PfUT/JZ05HQGcrvOMVu2a5uqWuPeI00T+uwK8dbiQfM=;
 b=byEYkV1okEqiFyv6T+W1nOHt900ulO86GwM9VWNdFMulUa+j4IIP6y04UhV/M9nqMY5sWXmSgtat/O/r8Iya+gR5dR1zTN5jcnAu7MsG0YkX+HM6iE/bsbl6stE1MmvqR39+oniMF6GP0qcepVgbqV640bWdHQl0xpdDo9yftxx3IeOAvInsysUZBIEpWxtHpJXeLItcPU1uxHrvysCKY35D51gHC4UYV3KMIAYU33aMkrcLuNVNfI4PV9blSjHavEUGKEtHDZxyyVDqJouSD5HsVf8QxLL3oqMlV5nClEgAI7NMFqiNfx4Y0a0F9HaRWv65SlZfNgwmHNqeMOPbVQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PfUT/JZ05HQGcrvOMVu2a5uqWuPeI00T+uwK8dbiQfM=;
 b=F5z2n93S/QqYLMEp6d2n2JRgl4aHHVcb7wQkun6hQURld92HfakkvskPkeJ3oExBIfIhfBKtCQ9mx4ty/AmLBRpWFtf3tbQEN2ooI2yvcaNmHfXQdrwZwFu94n/VGQxzgNK3VuW8lvxHCuwFgU/U0l8lr/lf4+3qv5P/xBNZa1M=
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 (2603:10b6:405:51::10) by BN6PR11MB1459.namprd11.prod.outlook.com
 (2603:10b6:405:a::22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3174.20; Thu, 16 Jul
 2020 17:48:52 +0000
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3]) by BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3%9]) with mapi id 15.20.3195.018; Thu, 16 Jul 2020
 17:48:52 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S50 02/15] ice: Fix link broken after
 GLOBR reset
Thread-Index: AQHWWVg+uzYg1sAmYkGxw1EE29mDw6kKf/rQ
Date: Thu, 16 Jul 2020 17:48:52 +0000
Message-ID: <BN6PR1101MB2145D7BE47E619EFF0D74AEF8C7F0@BN6PR1101MB2145.namprd11.prod.outlook.com>
References: <20200713205318.32425-1-anthony.l.nguyen@intel.com>
 <20200713205318.32425-2-anthony.l.nguyen@intel.com>
In-Reply-To: <20200713205318.32425-2-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.2.0.6
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [71.59.183.208]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c169f94b-995c-406f-20b4-08d829b0810c
x-ms-traffictypediagnostic: BN6PR11MB1459:
x-microsoft-antispam-prvs: <BN6PR11MB145933059B7F719F11BA93C68C7F0@BN6PR11MB1459.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2150;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: eC6Xs2hD9c48UYq87YIyH0LkvJHdnA4iRgRBl1o4Yt4FzsbnP/4gu1qWIWbA+F1PXVUPapgxifP+9alMTlfoGbL9/s16gW2J89GNrBo5zHhkgxHTWOZCWYkZG4esEXAF002BsUdyWYz5ek+II9C7t4IO+w0zrNTBJKJe4s9f99AL4pkm0Iu75EfZVNOQ9Il0rqtuc5BFEEZ6PQPQ9NT0TdIGzgSsFyymVkR/d3yVtPvdBa9YGNT/lO6L9r/TJdv068qMs4bTgCXcL5cftTBnY5iE1VdwQy19QmMOFRXl69OQKgJ6FnBl3U8firAi0Axjsd6UEr4Su7j94AST3POkXg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR1101MB2145.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(39860400002)(136003)(366004)(376002)(396003)(346002)(26005)(7696005)(9686003)(55016002)(53546011)(316002)(71200400001)(2906002)(8936002)(8676002)(66476007)(5660300002)(64756008)(6916009)(66556008)(6506007)(186003)(83380400001)(86362001)(76116006)(66446008)(66946007)(4744005)(33656002)(478600001)(52536014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: ZWXvJ5YWqeUvd8p4yHhTEMXWcQYyfm5wyuWOXZOW6rvjcUpCLrgrb8OWv6eekKkSAp1L35kIi1IhenTu78IZDVSluRoT1bBKSU1QkRY9YMtpRDOnCnM2os2fwMpJrcmED6NhSc2gYi4dBcsfFA+uj1HBPqReqpfy69pa0dQty3FTv7kEJUzLGvpWEN1HryX7NCajWur7ngZzAzZDU3/lmrRc7W4uZLfixGk8NDgWsmXhQc9O2c0uWdwbTcSfOxmX/1+AL+bE3RHFPF0J8xDVjTWsdhVLStrzpqiOsvMxuuY6kU5fkoXS0HH7IXXwSvlpTrh/+ysFgIQm815Qazg7MW2l1Eevc1gKHS5i+6KS2FuCEvCGnJlRomHxvikyC0WLO4Z9iItDgIFOb9PahETvcqYZOj4J3KWuH05W1o4v4GafrH4nCDiHh69YfgEM+0VacBOtkYOS41F/60y7UZ4G5oaWkD4N8WM3lW3sM8yuMCN1XihfYQ3YHpeielUIO0Az
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN6PR1101MB2145.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c169f94b-995c-406f-20b4-08d829b0810c
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jul 2020 17:48:52.8204 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gkT+aaWFihBNRJJfMrMzLCZrHFPRc+zDkuCq2aodhkI2Yjrij9FAw7kBN6t7a+KHMmZAbCkz4xHxy6DkPAhnYvGO8HgBjnmzmIiTgTzoReo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1459
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S50 02/15] ice: Fix link broken after
 GLOBR reset
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Tony Nguyen
> Sent: Monday, July 13, 2020 1:53 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S50 02/15] ice: Fix link broken after GLOBR
> reset
> 
> From: Dave Ertman <david.m.ertman@intel.com>
> 
> After a GLOBR, the link was broken so that a link up situation was being seen
> as a link down.
> 
> The problem was that the rebuild process was updating the port_info link
> status without doing any of the other things that need to be done when link
> changes.
> 
> This was causing the port_info struct to have current "UP" information so
> that any further UP interrupts were skipped as redundant.
> 
> The rebuild flow should *not* be updating the port_info struct link
> information, so eliminate this and leave it to the link event handling code.
> 
> Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c | 4 ----
>  1 file changed, 4 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
