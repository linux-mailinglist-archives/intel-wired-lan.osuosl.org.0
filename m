Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CA81559C544
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Aug 2022 19:44:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B5A0981455;
	Mon, 22 Aug 2022 17:44:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B5A0981455
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1661190282;
	bh=SQj5r1mkINIsETwCVHJQb1WxdwMwffp8B9eGSMQlXiY=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=rCb3lTYyqFDzmaeCKxALiSr4aaQbrJ0oKaBhekbutdFy2HEqK67NNfE1/fB0bdVqu
	 pv151b6EcdOL1JTNiJ8nAhbQ/LWB+XQEAcYIqQaUXubcZj9PcgK7Io1q6AkHdAJ4zo
	 a3wu9tAVutuA0HTCYEopomiveXuYw0sB2rl8/3s/NqiQyIZAtocvB2FqGH9umZrS8j
	 QlsPYysJElSNL8F08D933I46H3gp62ooER4RLpAX8vvJflwtDzQkZvB3YzbE0m6HKG
	 ySjm0tUF5Tc0A3dHOpEcrItXVxsiZaBXGz2vNZKtrS6QVlpJdF0roQuDSmRH1HjLXA
	 GyZilzsrWwArA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id puMnMF6NHQA9; Mon, 22 Aug 2022 17:44:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5FF8E81404;
	Mon, 22 Aug 2022 17:44:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5FF8E81404
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8E0221BF370
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Aug 2022 17:42:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 664628264A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Aug 2022 17:42:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 664628264A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zHVBgZEotYmA for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 Aug 2022 17:42:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5D82F80B76
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5D82F80B76
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Aug 2022 17:42:50 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10447"; a="379770218"
X-IronPort-AV: E=Sophos;i="5.93,255,1654585200"; d="scan'208";a="379770218"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2022 10:42:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,255,1654585200"; d="scan'208";a="751374322"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga001.fm.intel.com with ESMTP; 22 Aug 2022 10:42:49 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 22 Aug 2022 10:42:49 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 22 Aug 2022 10:42:48 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 22 Aug 2022 10:42:48 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.101)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 22 Aug 2022 10:42:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fgXW0+1t1sGWfSAFwcfH68/x9/ERcX0wQtw5spItJr9tNIVEA6918r6WEFaSm+AKW3IX084+aXKq7YPgEvVlxdJQCWD4yrje7gzZP0XDiycKuijOHT6jp1TNpFFVQnOaM4xVNT9HjBV2SoaPPMOGVR7fPU6AA3vsymUSqP967c1oSp2f8PeWyuJnGBdX1Ioyw5tNZGV90xrSXAM7l1TRxLXEZAm/wo+PwJ5+V9jm/L/UejZIgi2v0tmQBthBHBVErNuy+excRA+JukSMmK4p25dO0sxeUIYN0NtxWVW9bIUKVw9aIbAmULHj40sp1Qmxjyozc7wTQjLZCSAaHfMpvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PTuO1zrhewXfjxuciBika8cG5aV5+pYkf0ZvYYll8c8=;
 b=Z3Bx87ctRlV2YzR2J7F/jl+A4Ct8d6NUtBXpr2EOafmwT+u5v3/ABKL26Qwnf7MUe48Y79FDFt8zRcn+8otBaF4uyMTMQ3zL2ppFL6dj2jsbkjcFw0uE5ypgo7jTCY9CHIpR679hz0+KoUIvPxI0TpnKkS511BL4jkZWMR8P+oNF+/iK/OBM9RltmhLkwDSoXhpWtCnlxhmnA37WOAXBbV5r+34iFq35UwQQQuigtlSqcceVUnHcjjP+sIMCpzJb0cAWYfEXZUtP0mqve6x2rqNTQ6mmGEL5OCN7WR/3wGvkkjxhqEFfgwZ3N9HjahEoyzQYXeD9ZtqTeO5DaVrBVQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3113.namprd11.prod.outlook.com (2603:10b6:5:69::19) by
 SJ0PR11MB4831.namprd11.prod.outlook.com (2603:10b6:a03:2d2::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5546.16; Mon, 22 Aug
 2022 17:42:45 +0000
Received: from DM6PR11MB3113.namprd11.prod.outlook.com
 ([fe80::9c27:edae:2e08:8874]) by DM6PR11MB3113.namprd11.prod.outlook.com
 ([fe80::9c27:edae:2e08:8874%7]) with mapi id 15.20.5546.023; Mon, 22 Aug 2022
 17:42:45 +0000
From: "Laba, SlawomirX" <slawomirx.laba@intel.com>
To: ivecera <ivecera@redhat.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
Thread-Topic: [PATCH net] iavf: Detach device during reset task
Thread-Index: AQHYsyNwOjkGMXAyxk6WhUnxS4n8Aq27MxGw
Date: Mon, 22 Aug 2022 17:42:44 +0000
Message-ID: <DM6PR11MB311314DD438AE5A5AA4F5ED687719@DM6PR11MB3113.namprd11.prod.outlook.com>
References: <20220818165558.997984-1-ivecera@redhat.com>
In-Reply-To: <20220818165558.997984-1-ivecera@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
dlp-reaction: no-action
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b5311416-8d49-4e2f-71ab-08da8465b88f
x-ms-traffictypediagnostic: SJ0PR11MB4831:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: SJtIML5FzQ9qwiMunCiX7wiRGAEzEyhztORLnJT/E/MXW1mH0CczcdnjpskTnFTEieG1suxl22oJZuJY3EejoxHrU01jegmPJ0PDb/CwkqO/lagFBU1/TgT1vDpvRAOeq2BF9SM0iR+p9G15alul/PFjXRr7TaGgmngPVm/4fMmQWVX9sAMDwlMHoua5O3bs4LgVQAY5544gRTXHrjvas1StfUw3DVmPutla999MAUVACKnHOG4Xc0dr+ZhVO1kWkyZxhjPa70kJpPHbXWL2iGsgssh8P+fRk4tNPvS27wae3Z2yespfWBSiQRbmXgRl1AHg2tKScXBqg+W5M3p2Rq5gJkNAy9jOkHc1K0W5eXtwzTDJl+thY+113ZcBGGLbIpMFLR7ipe9wU2xg4LzsZkthDQ0vvrSMV/jr9jGWwcUxijh9UJHQWUcy4eXybD/cPYUExKXezuyxJEAaVRvfydINLZYaJdoDGf5MrJtMOj9a+oV+WsMr+vCIq44c39JFdmCiMNX1AdHW/LmO/DZoBEPqLTD6iRU0W9vHFeIg5H0bX2qvE++RLXqt4T/d+93ecPn/DBlFA4JuWR1OpU/Dmc+kVLLLIPhGWYUtH3kmbAY4peTw6KdgMhmLu5blBrLdU93YGIDnOfq1TV6lWNX5OjjY5xE+q+X1Oqlv6cRuZDX1gAjuNeYwWBsFA6vG2Dtw1+37Ely3wuIuDbOz2Gsie/EkyQwBjs8Z92PODwoMDQGIaS1GvQFT4JbPaM9tVJPV
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3113.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(136003)(39860400002)(376002)(396003)(346002)(366004)(64756008)(66446008)(66476007)(66556008)(4326008)(8676002)(66946007)(76116006)(122000001)(38100700002)(38070700005)(86362001)(82960400001)(5660300002)(52536014)(8936002)(2906002)(53546011)(7696005)(6506007)(41300700001)(9686003)(26005)(55016003)(478600001)(71200400001)(316002)(83380400001)(186003)(110136005)(54906003)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?SoD2MV7J+yDeaB8nAzSmgmOtJ9YUGG5kLdbrqP9JK8XmYQE/QyRj4RoGLAyL?=
 =?us-ascii?Q?dSemDjU4bnMWBjLzXAJicLHO+iYgipQYm+XayZs/WkYIoTESpi2S8+EckQIS?=
 =?us-ascii?Q?vDwMMpeKHtHSvfqMo3jt5zAHs/2lXS47EgTitHvWEP2UaXbiTBWytwgIvr3t?=
 =?us-ascii?Q?rFnrXD+zHyfNBtDBNG46Uf1n/NrGg0R62bzxME02bbNVmno88bXItrUD8nR1?=
 =?us-ascii?Q?jHiKQCkKeSY2vQ1sv5DXazKiIBXBvmqeiR+JymauN45G9vtjcf7hZXm+VVlc?=
 =?us-ascii?Q?BfZcLxQY/mSd8okejwcmzqPHUJi/JH1d1s3WjRzSKWamfps6cVagAb0jFw1H?=
 =?us-ascii?Q?tatzgAUPFC7y6ELSYs+zRAENc2P41AVft5xFh+lIIQgChaRp5QXvCRf0Qwhh?=
 =?us-ascii?Q?kDWa6DadvWm6vzncG/tLtaWerQZan7x9xCRhXEPosw49Qnhk8p1wG8HBF+mU?=
 =?us-ascii?Q?WjPij4mF+DfrU6BgBo2MP/4XDS4z6vpstVBgAR6Z+qTjmk0a5onSG0QgQByZ?=
 =?us-ascii?Q?4sew3KiG/GoRNnHlsFNyIu3P36zysVyylo2cJgr5bUJKOzU1rU9Tn3g9FrjR?=
 =?us-ascii?Q?qY0eYmHe8ignPLVgVMjVUQgz67fgLZf9YH1JGyCxNAvT0SBwpVxyWQGU8Zxj?=
 =?us-ascii?Q?N7B+PqwwAY4xg4VQg8iXLUOzA4I2dMZONZcirHpiIf23Wfy9V9fLaoyttK99?=
 =?us-ascii?Q?LFjA5MLev420W92rhoFntD/x/tTLj2sTn7DVp7HJWPOi9ick0wrgXZW5fieQ?=
 =?us-ascii?Q?i+/ONeXdHNPYND50rSZqDimCdia/XK+lL7MzRwai3PqUD0Puo188NQ2FqOf9?=
 =?us-ascii?Q?w7cwvELxLEJmi+N7UdSkS0wtd3VDLjc1w9FjPFPhjSJy2rHEqkAXlnmpeX3t?=
 =?us-ascii?Q?qGIbEd89z0b9RSsNq9ONfzBUt2uTn/DVNKGcv+6jluz1ZWsMOSP8CJsf3X1L?=
 =?us-ascii?Q?9XR1avY7PUTiT/Ttg64enHmLNe9B5h9AEVdtCRvpPgxIWQ2lrgNiWCp0QD19?=
 =?us-ascii?Q?qUYFp4wD+5VfxyDBbQQOZf7/HW+tdonDFUtos0eE5eMpzUSgnoau+uRpfsuU?=
 =?us-ascii?Q?cc6iPLtgdEb4pgI9RZ3ipJqMjwAOCM+WDb0N8PpL9DI9M/KPiJgBQ33R+6VD?=
 =?us-ascii?Q?kPWVk0NywR5Vlvx+9ytP69ZpSZpAqLixZkxd4U37WjAcYei0cNKe5HlROF2A?=
 =?us-ascii?Q?91/RIPt7RlbH0jQuC6LOopKKcn3KnJvesQd0KQz6NOYXcpePQp7l3VNsTdaE?=
 =?us-ascii?Q?vCdmqALkynmKmgaUgAX0dokhkp9pdtAxoX8YPI5rYdnWoY/shdeqRLKmBw/u?=
 =?us-ascii?Q?s7SW9yD80taZhfSqQCa/RnffHFFaLJ82BAKAxoYeBsivX22qsFM4WiJVCVJU?=
 =?us-ascii?Q?RJP57YbXvCHY0z6LVaFe6oihTNWGqb+k8yzeFdPlNCJwSLTzqL6JfZJGKwkO?=
 =?us-ascii?Q?4x57pyXEcX8dW/xyDPe/IO6kwO4bEEjrYsIc88qAfulTmFyCgFHLlA1tDYVV?=
 =?us-ascii?Q?zPhGfGP7fzv/Z6FDHVAsoPGvSNYDi55BggQfNH3sr8GDPlewuBbAcpRB8NC+?=
 =?us-ascii?Q?ZRnYPEKt6QKSanwxJANSMF+Hf4nwDOT1TpGb/G1Y?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3113.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b5311416-8d49-4e2f-71ab-08da8465b88f
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Aug 2022 17:42:44.9005 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yI6K8dyYN3lU1B4phSD7MamQ5rK41K9oRv7yv/hoZTPYYbD+8soF9bp1lvzcVct1RQzmfPyyRwbzZQTybHbrLDmFyYPa8TN4QNSIEFJg0JY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4831
X-OriginatorOrg: intel.com
X-Mailman-Approved-At: Mon, 22 Aug 2022 17:44:36 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661190170; x=1692726170;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Y53/KudNdbIzmX5QqtH/lR6gjek3SwZONNfF08ZSfqI=;
 b=hM+6poNcEjAdUHvoHtU+HmHOH1ZFQb1cXeBMILV7kkfDfXgdjH8v19BW
 4sLsOypv+FIXG2RG80sJdZjR5xEfT0W5sEMSCFnetQKmv9lSP/PWQoELZ
 mUX/7ZX05VsMObAdzOodeOc4akZa5tdT0S/4/no0us9dmOyWkgyMnY+wx
 gwUqhe70DK1a3skvh/plT+vrgM0ERBzggzrWj/B/5DbDoB8yfGATEN/yu
 oR2MD12SweMQvYROV3UI2ndVB0LYim3+wKxeV3qgzCURKBaus+4xsfVIp
 RyL7gxpRVpLCeoqOs2IR9y0VhamWSr75sD0OwieosQP/JCxQ27o6B7P2n
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=hM+6poNc
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] iavf: Detach device during reset
 task
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
Cc: Paolo Abeni <pabeni@redhat.com>, Eric
 Dumazet <edumazet@google.com>, "moderated
 list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 open list <linux-kernel@vger.kernel.org>, "Piotrowski,
 Patryk" <patryk.piotrowski@intel.com>,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Vitaly Grinberg <vgrinber@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: ivecera <ivecera@redhat.com>
> Sent: Thursday, August 18, 2022 6:56 PM
> To: netdev@vger.kernel.org
> Cc: Keller, Jacob E <jacob.e.keller@intel.com>; Piotrowski, Patryk
> <patryk.piotrowski@intel.com>; Vitaly Grinberg <vgrinber@redhat.com>;
> Brandeburg, Jesse <jesse.brandeburg@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; David S. Miller <davem@davemloft.net>; Eric
> Dumazet <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo
> Abeni <pabeni@redhat.com>; Jeff Kirsher <jeffrey.t.kirsher@intel.com>;
> moderated list:INTEL ETHERNET DRIVERS <intel-wired-lan@lists.osuosl.org>;
> open list <linux-kernel@vger.kernel.org>
> Subject: [PATCH net] iavf: Detach device during reset task
> 
> iavf_reset_task() takes crit_lock at the beginning and holds it during whole call.
> The function subsequently calls
> iavf_init_interrupt_scheme() that grabs RTNL. Problem occurs when userspace
> initiates during the reset task any ndo callback that runs under RTNL like
> iavf_open() because some of that functions tries to take crit_lock. This leads to
> classic A-B B-A deadlock scenario.
> 
> To resolve this situation the device should be detached in
> iavf_reset_task() prior taking crit_lock to avoid subsequent ndos running under
> RTNL and reattach the device at the end.
> 
> Fixes: 62fe2a865e6d ("i40evf: add missing rtnl_lock() around
> i40evf_set_interrupt_capability")
> Cc: Jacob Keller <jacob.e.keller@intel.com>
> Cc: Patryk Piotrowski <patryk.piotrowski@intel.com>
> Tested-by: Vitaly Grinberg <vgrinber@redhat.com>
> Signed-off-by: Ivan Vecera <ivecera@redhat.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf_main.c | 22 +++++++++++++++------
>  1 file changed, 16 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c
> b/drivers/net/ethernet/intel/iavf/iavf_main.c
> index f39440ad5c50..ee8f911b57ea 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
> @@ -2877,6 +2877,13 @@ static void iavf_reset_task(struct work_struct
> *work)
>  	int i = 0, err;
>  	bool running;
> 
> +	/*
> +	 * Detach interface to avoid subsequent NDO callbacks
> +	 */

nit:
The comment should start this way: /* Detach ...

> +	rtnl_lock();
> +	netif_device_detach(netdev);
> +	rtnl_unlock();
> +
>  	/* When device is being removed it doesn't make sense to run the reset
>  	 * task, just return in such a case.
>  	 */
> @@ -2884,7 +2891,7 @@ static void iavf_reset_task(struct work_struct *work)
>  		if (adapter->state != __IAVF_REMOVE)
>  			queue_work(iavf_wq, &adapter->reset_task);
> 
> -		return;
> +		goto reset_finish;

Correct me if I'm wrong.
In case when you fail to grab a crit_lock you'd jump to the reset_finish label and unlock the locks you didn't lock.

>  	}
> 
>  	while (!mutex_trylock(&adapter->client_lock))
> @@ -2954,7 +2961,6 @@ static void iavf_reset_task(struct work_struct *work)
> 
>  	if (running) {
>  		netif_carrier_off(netdev);
> -		netif_tx_stop_all_queues(netdev);
>  		adapter->link_up = false;
>  		iavf_napi_disable_all(adapter);
>  	}
> @@ -3081,10 +3087,8 @@ static void iavf_reset_task(struct work_struct
> *work)
> 
>  	adapter->flags &= ~IAVF_FLAG_REINIT_ITR_NEEDED;
> 
> -	mutex_unlock(&adapter->client_lock);
> -	mutex_unlock(&adapter->crit_lock);
> +	goto reset_finish;
> 
> -	return;
>  reset_err:
>  	if (running) {
>  		set_bit(__IAVF_VSI_DOWN, adapter->vsi.state); @@ -3092,9
> +3096,15 @@ static void iavf_reset_task(struct work_struct *work)
>  	}
>  	iavf_disable_vf(adapter);
> 
> +	dev_err(&adapter->pdev->dev, "failed to allocate resources during
> +reinit\n");
> +
> +reset_finish:
>  	mutex_unlock(&adapter->client_lock);
>  	mutex_unlock(&adapter->crit_lock);
> -	dev_err(&adapter->pdev->dev, "failed to allocate resources during
> reinit\n");
> +
> +	rtnl_lock();
> +	netif_device_attach(netdev);
> +	rtnl_unlock();
>  }
> 
>  /**
> --
> 2.35.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
