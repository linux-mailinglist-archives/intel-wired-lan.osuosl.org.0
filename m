Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A297277B9C
	for <lists+intel-wired-lan@lfdr.de>; Fri, 25 Sep 2020 00:25:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id BA60586C6E;
	Thu, 24 Sep 2020 22:25:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4F-iSdLgZTcp; Thu, 24 Sep 2020 22:25:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8E52D86C61;
	Thu, 24 Sep 2020 22:25:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4C3141BF33B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Sep 2020 22:25:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 47C8F87475
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Sep 2020 22:25:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8GAeYsPNLWk8 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 24 Sep 2020 22:25:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 0A3A487466
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Sep 2020 22:25:51 +0000 (UTC)
IronPort-SDR: 88BQMJsNvRQhVpRvbM0S9hci6+qHl14RMheihF0hmW96XIkySXX7REkrExzQAEk8EU47a+ONtZ
 qoyxvNxGPoMQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9754"; a="149026545"
X-IronPort-AV: E=Sophos;i="5.77,299,1596524400"; d="scan'208";a="149026545"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2020 15:25:51 -0700
IronPort-SDR: yVzTD6RnuerYGGG6tMwy5JuFcUFbGtdv2VtC9RKqmb1ypB8bPWc65Q0DG4yQEm7Gy10k5nH36C
 Vi7lnOAabZgw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,299,1596524400"; d="scan'208";a="348011840"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by FMSMGA003.fm.intel.com with ESMTP; 24 Sep 2020 15:25:50 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 24 Sep 2020 15:25:50 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 24 Sep 2020 15:25:49 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 24 Sep 2020 15:25:49 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.177)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Thu, 24 Sep 2020 15:25:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fprtVAYb7+xkWk3pvGLdaR6s8ZDfuTvC2yAaVTy34iZNTlr7tY4A6jJ1eQikLNOHfzWoC3ukZZaHY2+Niifz6ILx6kGj2MhVrbedMKz3TPtUusmICgpJmvX+w51bcPQdDAoXHRfbm06CUqnFfJgHKZChlv+zcPXhJXvoGo34bpfjElmRNXM2F7ChwTeYQXUXcIoLG3ue13GyECjVD0m2ojQ+xkNyIsfMv7aEvd4bajdMjLEAQ/isRepa8zvcXZ8sMv4JSnhZ6W661doVnCM9aSPhwA55xGW46gACYmlHAKBxmX84hVNrTA9ekRaQ/13rVWPstUeXq5yrF5xucpuS9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PkNf4mS2ESGXnU0w2ss6/AGQKLHCJ0B8lcn9PNg7f1w=;
 b=F4IG32vRLxu1hx7fZwX+VxhxoiQv6rWY+aTBa3UM5jEm5UyK1utHYLXvcCVQMyLLkmQmdZEWi6y5pydHsCZYGCe0nb6ft3EhpZq4SiIGxEySBCvTXqeC0VjGKairywRzyu/uetBn9DKvjoV+sgrMDegiZMQyKP9DeXrr7aLJ22tm2O3VkcziOm+9XXIZQ6YuX33rnikryAEcnH4JxNdfhk4oeaILJqtOLt8iujoqW8if7TjgW+85MHswFaKs2o/QsmgQlcAD6mxpbTUQLNHTYqZhwvyMkgKGP3mmHacykTUiFD5uZrDkPaZS/5Oe3rbGc22so0YeQ9LlDB0RU5enDA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PkNf4mS2ESGXnU0w2ss6/AGQKLHCJ0B8lcn9PNg7f1w=;
 b=gn9DpCVmxrScoO/CE7Gc2MDI/VGcc2IxKgKdJ6JxG3/ELlOrBIHkX2lEndY4j7Cr9rDDUCfU5NuG9rLHMj30EsFrYiKPSD/dtIWebyawxAtKGV8x+cAQAHXQvX2GgGUy+dkO04JrAJcOfg8sjXEbnT/gXj1MNNGezQy3GLsWk6E=
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SN6PR11MB3518.namprd11.prod.outlook.com (2603:10b6:805:da::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3391.14; Thu, 24 Sep
 2020 22:25:46 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::acc4:9465:7e88:506e]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::acc4:9465:7e88:506e%7]) with mapi id 15.20.3412.021; Thu, 24 Sep 2020
 22:25:46 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "kuba@kernel.org" <kuba@kernel.org>, "Brown, Aaron F"
 <aaron.f.brown@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v1 4/7] selftests: net: add a
 test for shared UDP tunnel info tables
Thread-Index: AQHWX8dIyTC1OJpR7UuWkn2gfn3JT6lv7B4AgAQU/gCABMKfgA==
Date: Thu, 24 Sep 2020 22:25:46 +0000
Message-ID: <808d485e3d63a2e10f1fba75c0cac968d8f844aa.camel@intel.com>
References: <20200722012716.2814777-1-kuba@kernel.org>
 <20200722012716.2814777-5-kuba@kernel.org>
 <SN6PR11MB2896F5ACC5A59F7F330183FFBC3C0@SN6PR11MB2896.namprd11.prod.outlook.com>
 <20200921144408.19624164@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <20200921144408.19624164@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.28.5 (3.28.5-3.fc28) 
authentication-results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.204]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1672bb73-8fa4-41d3-9296-08d860d8c892
x-ms-traffictypediagnostic: SN6PR11MB3518:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SN6PR11MB351820CA611F106F0E9E9EEAC6390@SN6PR11MB3518.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: sFSsr8mytXmXAC7U8UkdFPsJdbT7ks5Xli97Bd3lchXuCjPHfp7dJ1u8g4kOypfvWlRywEb0fOE2shxRNEr9WFv30ugMK0M3taI6RJZAp7jDMKLsx9FsuYdt15TwjBhQTbr9kiv2U60E8kC2Kx/kbL+hX9rVsAqRcTiAdWM0sTbWPyDsXb7CIkKWd8m5yuEJRdH9Dorwhwp350QnMn5Kb0I6WxRiXNNbON++b/3pekZQq31HY1eg1DIG8/l/KjpoN8RAKRwADA1lA5RJ6cYTgtDu4AtWZ8v1R5YZ/KivsdXYzGSlzSkyYg2Q5NyG2c5WP7ZUEAREc3ho3hzQg5iLEIik/82nCKDcdQ49wdT56FdBcRryG4tSJZ83jPRfrtvA
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(396003)(366004)(136003)(346002)(376002)(39860400002)(76116006)(2616005)(2906002)(6512007)(71200400001)(6636002)(8676002)(6486002)(8936002)(54906003)(4326008)(110136005)(6506007)(66946007)(478600001)(66446008)(64756008)(91956017)(66556008)(66476007)(186003)(26005)(36756003)(86362001)(5660300002)(53546011)(316002)(99106002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: xDXH4cDq/6jtRxlfCtAO/+zV0I7sIbeASqGWIM92d0P35uWDk5PZBKkkfMrCCclqHljT9nlRnPY5d43oM1Dl4+Ex4A4qb7oUFIfiZZ6nKVPkAOLenAeJqvMs6SVWEG26Fh64SF0jXFE2kVy28xqIXh5NqMZO4ODtZxX4fcid1Pf0/2d2WaDOqkyw+N0hfbTuXYxFyR7oKDtP1wwPT+/qVq2VQvSdurTHVwBECcNBkjhueGKvbVrMPLIuduckWnY6JwXdOryVLN0+m48wS48LAu647+NIX3BjvXTXe+PH0G2BFhHQxf2oMbwRSILHRQWtdn+j+ocO0fLJiYdpbPK3CXcASap8wRMYi+FIhx3vF0YrHP+E5f442CG9CXtnPJq5kOE5jOsOY5y4BR5iEibcerzLQW7sOJV/EJnBEMPP5kuLSiM88bVMPqwgznADNU08kg131LTCTSsPiXw2v+Q46LK0MFar1F1CrwmMIKQWJwKWgWclzW6UrcT4atl+VDxVxb2Wlq8TIxH7jow+7Ip+a5WJdoCAmVkHpCnqpKG9NOerU2/c2fkOpd4kfbSyFdCAsR4cltN8p9EzEzyTSPTPgbIlvIP+jK9D+ILZg+EVEEt4H2T5Yycdm6yd1NtpR68c+7WVfhDi8n18oErwd0CxTQ==
Content-ID: <13E02808B9C5364794BF7EEB07BCC59F@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1672bb73-8fa4-41d3-9296-08d860d8c892
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Sep 2020 22:25:46.6117 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WwNmCT5FBs0FoL32kJRV08BB/AISHK6ao5HwTWiLLRJV2VfdpO9NjAvUB7KC3VRLLPOdgiVRLffRf87+2r8597dAJtUa5h5f0wxSCF/uBYE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB3518
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v1 4/7] selftests: net: add a
 test for shared UDP tunnel info tables
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
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, 2020-09-21 at 14:44 -0700, Jakub Kicinski wrote:
> On Sat, 19 Sep 2020 07:23:58 +0000 Brown, Aaron F wrote:
> > > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On
> > > Behalf Of Jakub
> > > Kicinski
> > > Sent: Tuesday, July 21, 2020 6:27 PM
> > > To: davem@davemloft.net
> > > Cc: netdev@vger.kernel.org; intel-wired-lan@lists.osuosl.org;
> > > Jakub Kicinski
> > > <kuba@kernel.org>
> > > Subject: [Intel-wired-lan] [PATCH net-next v1 4/7] selftests:
> > > net: add a test for
> > > shared UDP tunnel info tables
> > > 
> > > Add a test run of checks validating the shared UDP tunnel port
> > > tables function as we expect.
> > > 
> > > Signed-off-by: Jakub Kicinski <kuba@kernel.org>
> > > ---
> > >  .../drivers/net/netdevsim/udp_tunnel_nic.sh   | 109
> > > ++++++++++++++++++
> > >  1 file changed, 109 insertions(+)
> > >   
> > 
> > I ran into two things while running this script.
> > 1. The script as it exists in the git tree (Jeff Kirshers next-
> > queue) is not executable.  I don't know if that's a patch issue or
> > translation into the tree.  Easy enough to get around, but should
> > probably be executable to start.
> 
> Ah, good catch, thanks! Please adjust in your tree or I can send a
> follow up with other patches I still have queued.

Hi Jakub,

It'd be great if you could adjust and resend the series. As we're still
working through our email server issue, I don't know if everything
would make it here.

Thanks,
Tony
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
