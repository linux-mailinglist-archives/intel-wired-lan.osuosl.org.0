Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 859C77936BD
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Sep 2023 10:02:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7C47F414BF;
	Wed,  6 Sep 2023 08:02:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7C47F414BF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1693987352;
	bh=l95i1XCQDUm1ubT3MtufwyE0H3snRzi3mfsU/t4Hcxw=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=s4P1ko1etRJQTqjtaE/0lU+upFMW4obu1fdWTmCcoiwjWMExUJNJGHsmFHgC/AxaO
	 DaauG/9TUDtM6q4zoUOL2wqUztS1pa08ktos7BxCOapnVNxeX0CeTydqkuQj/VZ2+L
	 gnrx2Af33a6TcznGpl2PcbRDL54NMSgCBnGmLT/UcGBeFSEedhO1p+15O2FzB9CLrk
	 lRLUSI44Pelsx672++BzPkRx/Vm0S6FjFwUSJZRAhsUHosTMaSYFnnuqrvY2bFpFz/
	 iWM7AWbYjrFVrvcI9qxy47YHEu65FvpykmohOngiYJNlscYS/N6Noyl597vCYA1O/v
	 Xwqr+5AjO7sCQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WR7E3_D7Ils6; Wed,  6 Sep 2023 08:02:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E966640459;
	Wed,  6 Sep 2023 08:02:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E966640459
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BCF691BF32B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Sep 2023 08:02:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A16AE81F6D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Sep 2023 08:02:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A16AE81F6D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OOUNeJMxwS7x for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 Sep 2023 08:02:24 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6E3FF81F6B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Sep 2023 08:02:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6E3FF81F6B
X-IronPort-AV: E=McAfee;i="6600,9927,10824"; a="374394853"
X-IronPort-AV: E=Sophos;i="6.02,231,1688454000"; d="scan'208";a="374394853"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2023 01:02:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10824"; a="718178697"
X-IronPort-AV: E=Sophos;i="6.02,231,1688454000"; d="scan'208";a="718178697"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Sep 2023 01:02:22 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 6 Sep 2023 01:02:22 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 6 Sep 2023 01:02:22 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.103)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 6 Sep 2023 01:02:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IWaEvviuR9IjHASMxoQNCNaSnBQ4T6KOKMIyO7S4o0BepJNN/1vu/dEYtJvTEi/X2OjewORzOOErxYcoggjKpQsxdowDbZWGWYymwIlJq8kuTsbJMsQXC6AnqwCmvLJXpEYEjqddai0epz5Iwrv1RFSLJxCxUYsmTyEzRwXpc6JRQy0mF8RbXwRpKKoiV3d+ix7QCVVDB+PnmfeOoWB99t6D8yN60aUvXtKj5XtnQsHfNcEGlKMuYs5oHgJvqwk4LT1Yb1alcEc40Yrh66n/oCBgu284G8ZfKqC2OYDqlW4x+5deiK8tyRZsg7KPLGOELcuzdhP9PrraA7uLkFeRew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BjsgFuI6OE1jpUeSbq8l9LIdw4V8P2RirfYbhY0o3XA=;
 b=NaBE4csrs4j4U20Q/wGGFVjkcLOR5ivVyJDi/SkoEDp6tI0cCFoHg7LBnPey/5K+lv7MNDEoVJRJKjjdrg3CNQGQDL55cJ7Ki2V9jDWIV7pl84SJDKyDbWr4CYiztv60Kp2rTXQkqCFWgUVR+1wfb+NH46euhEqCXAFTR0FuZA41X7VvZUF0BmxwmTmbnWOYz1OERQlhAI+jVnzVNsKN3OvnP2y85fhfz1FNZNs5ittx/WBm91aym29YXZt6xcbFnXl0ylKg16aRmUHuUO7eOY2tOwwC/ukN/nc8HtIVnM1+gshzD6V/XTF6jiiM69iEglGqkYY9n8EzMddmucygTg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5776.namprd11.prod.outlook.com (2603:10b6:303:183::9)
 by PH8PR11MB7968.namprd11.prod.outlook.com (2603:10b6:510:25f::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6745.34; Wed, 6 Sep
 2023 08:02:19 +0000
Received: from MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::2ec0:108e:7afe:f1a4]) by MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::2ec0:108e:7afe:f1a4%5]) with mapi id 15.20.6745.030; Wed, 6 Sep 2023
 08:02:19 +0000
From: "Drewek, Wojciech" <wojciech.drewek@intel.com>
To: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>,
 "kuba@kernel.org" <kuba@kernel.org>, "jiri@resnulli.us" <jiri@resnulli.us>,
 "jonathan.lemon@gmail.com" <jonathan.lemon@gmail.com>, "pabeni@redhat.com"
 <pabeni@redhat.com>, "vadim.fedorenko@linux.dev" <vadim.fedorenko@linux.dev>
Thread-Topic: [Intel-wired-lan] [PATCH net-next 3/4] dpll: netlink/core: add
 support for pin-dpll signal phase offset/adjust
Thread-Index: AQHZ4FDbAU6bLbq+B0WxNbnyGXMdhLANb0xQ
Date: Wed, 6 Sep 2023 08:02:19 +0000
Message-ID: <MW4PR11MB577647EAF2272B22A73131D4FDEFA@MW4PR11MB5776.namprd11.prod.outlook.com>
References: <20230905232610.1403647-1-arkadiusz.kubalewski@intel.com>
 <20230905232610.1403647-4-arkadiusz.kubalewski@intel.com>
In-Reply-To: <20230905232610.1403647-4-arkadiusz.kubalewski@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB5776:EE_|PH8PR11MB7968:EE_
x-ms-office365-filtering-correlation-id: 4d6913fb-edbe-4596-9af5-08dbaeaf97ff
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: UKTjP1qURc8t/Bcsn4kAHsG7HmJpuUp1/iWYWDSg2zAEXczUjzS65uwylLzSYb17ciXilEYz2scAnXmkLR/poz3A99dVNY4rzR/VpcQBXm6QUG/b07SbjzLb7Lf9ZhkAY7zd36rUOFsYj9u5S9wJWni+4bPZ4eyUzvq5OiOzNy46u8F8dfkekoLq7t2pwWtE+bfnEzYKfVb+sXaBDXZP2mZPPhAUvVEG8OviOqkS0fZr96anMq2Ipeq9gJVnern4UasPxA7T7ZeURHgzTwSrGznTfjieaREVGrUIIZK5fKA6LC/YzSEEWSnyXYMrIePOvUvt1JjM+qYn/5SmPu3V11vIVcOcUVah5YitxYFLUrWE/TSPg0XE8nFXFlnWfDfEEp20QWkwugUf0FXQN/FndirsANSM9ZyQBiGMiyM+MMr4M+Oypuzh9nGJXK9N0BeQ/xrL4IwZIQFgiJX2d9uuE/5Bswx/FBPp7HoI/OwFSdwN/uvrJ6ugmIMEWwdLCpJcNQFeXUjgiU4489mxmOovW5LS/H0BEE8UElq7kZcbkMYAFkonBzoyqz0cqHwwoNiWfPk66TDog3fjZaDyxG7bNWWTm3mVvc7xi3vn57N3uxI=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5776.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(366004)(136003)(376002)(346002)(39860400002)(1800799009)(186009)(451199024)(55016003)(8676002)(8936002)(4326008)(41300700001)(26005)(52536014)(5660300002)(83380400001)(7416002)(2906002)(71200400001)(478600001)(966005)(316002)(9686003)(6506007)(110136005)(54906003)(64756008)(66446008)(66476007)(66556008)(66946007)(76116006)(53546011)(7696005)(33656002)(86362001)(82960400001)(38070700005)(38100700002)(122000001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?jp+/WgFB76YoxrlJo74rjGyQPsVv2/qHU2lI62bJxfWnqT9g4ykfl39Bvtj5?=
 =?us-ascii?Q?XDUINFDM4YwKdKZqUHN+6JqAdYSHKMrQNZaDsY2mySLkvsQzR95YGbTFBNnH?=
 =?us-ascii?Q?P2Rnuz82GpE2jjKVc+3FqRnVS3eI44af9ewuqPF/nYHgWs7fYJ90dK98HLJ5?=
 =?us-ascii?Q?1hTBUzDUlMtNKXMJrWOeKrzu8kEHorBLfz4b7wJdBdEcJD6VVPWep/ICsCrr?=
 =?us-ascii?Q?SGFHWIW9CAQnRhK6wnqpAqFa35qp3f/g3k/jfpSchamGQFVf9iNrMUU2uNGD?=
 =?us-ascii?Q?csnP3BjSIX06IzXIdp+rm2L5vxhnA3wJzDnx8XKV0M4RCb1Z4qmjBmDmIMj6?=
 =?us-ascii?Q?ebNqCY75Pz7OETzhphuktKALxp91gQVe9JWCeZYYir/fuXDSlC8e1OovfwFR?=
 =?us-ascii?Q?7Q0sN8YM1usKz+WHVmF2MKC1p2ggMzI57rGCkFjkLiC3AqOrn/seg6gVS73p?=
 =?us-ascii?Q?aS8O5xWl+FtjPJ7i3ljZwJf3DnG3LMiq8dPoXmphMfOdFJI4Pq2xv675jceQ?=
 =?us-ascii?Q?9jUSbjCcnOkIxErmCFeWHnqbeJL8zhZ82PacI8FjFU5Wgv/zYO9bXA8ZSIoV?=
 =?us-ascii?Q?6RA8CJd20mJGQZVE0SOAMZiCgyC7nIQAYM25SqKER8b+2llhwRh41AAqz+vq?=
 =?us-ascii?Q?uQ7uUo0qi1PN/IRodyc/DSd4s5NeTGpRdfiErnLWZmppU7xoQhMFH5uh/nF6?=
 =?us-ascii?Q?g+jrL1VHJfRtF+SZiwrLu/WnAwIM3X34gMQT0zDOCQn6+OK1xSs1kDYab9PR?=
 =?us-ascii?Q?dLhuFOIZQRx3k43mb9vzWWtvq2xVhBFsf7zTH1ZSL9Cew2gRLQt0Bw9WvL+G?=
 =?us-ascii?Q?gFjaTTk4u5O3TvCC7NvFtb8xHMWp0gCXJ+tYYEsOJFM+F3wbr385gSK1Wpam?=
 =?us-ascii?Q?N+u+z9FdA4ry4hL5nmFcMuvqGCAtjpNk0LvGPEMG2dc44P6dfPxJ2ox283ie?=
 =?us-ascii?Q?k7K9J2B+lbGRT4/Z0bRUyNGZjYMDK3/z2tECbwpUqcSZeXk2j6Pzxc73+ajW?=
 =?us-ascii?Q?/HMVjvFELA76Pwgn4RMahB3CiLL7Xxj2lHGMmHt7kRpgXcA8veTT7oPKtMfO?=
 =?us-ascii?Q?w0CDKZrS5iRhce2mnCoySi3+GWr8OzcHmGNOK+ikPTKiim4sj/KWuEyp8QeY?=
 =?us-ascii?Q?dAZNsnCGgKOQI+KTmU87MPxA7x2y6O3Tb+vJtihDnEsfi7IVWKNiUiVRzJkv?=
 =?us-ascii?Q?t4hTQLha133AVFzYHBgC+V6TwQHrzIt4YLrUlyn2g+tePJ0ROQlNGoYmDTS+?=
 =?us-ascii?Q?mKIb1Q/bOLfPnVUkp1TdzZQOfNtw+asjFqMdnHzVhXSyYon+BQKbCc3Mny3S?=
 =?us-ascii?Q?wETlv9Zfp0GCqmbAck2mre2XVTvL60uSkm6IWTSFs9LqpOiF8YKvL4ZUBmH4?=
 =?us-ascii?Q?30Om/VF7iZqNQsVSt1fpB6XQ2DwtrcbZ/Dub8d6YiC29PJXFvfJD5p/aJgOK?=
 =?us-ascii?Q?Ji+uBQdIgQYQgvdofEhcBOMy/FzRHKqVlUK7gG7Ou1vjprzF7YF+BOFNQAzB?=
 =?us-ascii?Q?rOpBNNP00+yNQlGUEoa3lTj6K1e7ieaPIYTloSOVnlcJISipdkFM/z/I52yH?=
 =?us-ascii?Q?zfATvqS6h80t4UAY+Y2GJpjC7W15XpgRTS4DX9F4?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5776.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4d6913fb-edbe-4596-9af5-08dbaeaf97ff
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Sep 2023 08:02:19.5118 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PreY0dtkEiCL5zJx2FeX2bRMhFQUVnoCft70BkVk4A/C7c/7bvcxAAdgg9Maiy+pFUugumEsdMKgPw+REd6a9BI542k2aPY7ABvOC/MRz1A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7968
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693987344; x=1725523344;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=g6kr8NNbDQ1Xcz+3HsBVvdHIRhf6kwNzEo0cHh9fEOM=;
 b=bZYW1QmEKwqAlvm6uhvp3Ck1/p5zd9/GbW2SCBFl52nJ+53Oln2Eyk7+
 gyZQkfsaVS2YC0hilgSgEMhQ8ne2b1ABHpyk1O2bFkhYi1a8rQCS/vlP/
 R9Z0N/j7+I8wLXOhwmSbZsqYGvKL47R16CDKo6KDw72Z4DmXy6dgWkVUW
 kKf7PS/dNVZASL40jAwvmgERJoHL0JYCydyWO9pQbpCejEx/TBftxAQvA
 RW+X4wtJpGLqZS5JEpv4Sm1TGXYoa9kzovOoNpGX7WPpLbA3QGpmfQabP
 LbaDa4hEG9TYZup8gGhjiJ2rvPL1D+epxU5C3ue1I3q/B6NbESBeMA1bl
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=bZYW1QmE
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 3/4] dpll: netlink/core: add
 support for pin-dpll signal phase offset/adjust
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
 "bvanassche@acm.org" <bvanassche@acm.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Arkadiusz Kubalewski
> Sent: Wednesday, September 6, 2023 1:26 AM
> To: kuba@kernel.org; jiri@resnulli.us; jonathan.lemon@gmail.com;
> pabeni@redhat.com; vadim.fedorenko@linux.dev
> Cc: bvanassche@acm.org; netdev@vger.kernel.org; intel-wired-
> lan@lists.osuosl.org; linux-clk@vger.kernel.org; linux-arm-
> kernel@lists.infradead.org
> Subject: [Intel-wired-lan] [PATCH net-next 3/4] dpll: netlink/core: add support
> for pin-dpll signal phase offset/adjust
> 
> Add callback ops for pin-dpll phase measurment.
> Add callback for pin signal phase adjustment.
> Add min and max phase adjustment values to pin proprties.
> Invoke callbacks in dpll_netlink.c when filling the pin details to
> provide user with phase related attribute values.
> 
> Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> ---
>  drivers/dpll/dpll_netlink.c | 99
> ++++++++++++++++++++++++++++++++++++-
>  include/linux/dpll.h        | 18 +++++++
>  2 files changed, 116 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/dpll/dpll_netlink.c b/drivers/dpll/dpll_netlink.c
> index 764437a0661b..548517d9ca4c 100644
> --- a/drivers/dpll/dpll_netlink.c
> +++ b/drivers/dpll/dpll_netlink.c
> @@ -212,6 +212,53 @@ dpll_msg_add_pin_direction(struct sk_buff *msg,
> struct dpll_pin *pin,
>  	return 0;
>  }
> 
> +static int
> +dpll_msg_add_pin_phase_adjust(struct sk_buff *msg, struct dpll_pin *pin,
> +			      struct dpll_pin_ref *ref,
> +			      struct netlink_ext_ack *extack)
> +{
> +	const struct dpll_pin_ops *ops = dpll_pin_ops(ref);
> +	struct dpll_device *dpll = ref->dpll;
> +	s32 phase_adjust;
> +	int ret;
> +
> +	if (!ops->phase_adjust_get)
> +		return 0;

Why 0 is returned here? If it's intended, I would put a comment stating why.
Same thing in dpll_msg_add_phase_offset.

> +	ret = ops->phase_adjust_get(pin, dpll_pin_on_dpll_priv(dpll, pin),
> +				    dpll, dpll_priv(dpll),
> +				    &phase_adjust, extack);
> +	if (ret)
> +		return ret;
> +	if (nla_put_s32(msg, DPLL_A_PIN_PHASE_ADJUST, phase_adjust))
> +		return -EMSGSIZE;
> +
> +	return 0;
> +}
> +
> +static int
> +dpll_msg_add_phase_offset(struct sk_buff *msg, struct dpll_pin *pin,
> +			  struct dpll_pin_ref *ref,
> +			  struct netlink_ext_ack *extack)
> +{
> +	const struct dpll_pin_ops *ops = dpll_pin_ops(ref);
> +	struct dpll_device *dpll = ref->dpll;
> +	s64 phase_offset;
> +	int ret;
> +
> +	if (!ops->phase_offset_get)
> +		return 0;
> +	ret = ops->phase_offset_get(pin, dpll_pin_on_dpll_priv(dpll, pin),
> +				    dpll, dpll_priv(dpll), &phase_offset,
> +				    extack);
> +	if (ret)
> +		return ret;
> +	if (nla_put_64bit(msg, DPLL_A_PIN_PHASE_OFFSET,
> sizeof(phase_offset),
> +			  &phase_offset, DPLL_A_PIN_PAD))
> +		return -EMSGSIZE;
> +
> +	return 0;
> +}
> +
>  static int
>  dpll_msg_add_pin_freq(struct sk_buff *msg, struct dpll_pin *pin,
>  		      struct dpll_pin_ref *ref, struct netlink_ext_ack *extack)
> @@ -330,6 +377,9 @@ dpll_msg_add_pin_dplls(struct sk_buff *msg, struct
> dpll_pin *pin,
>  		if (ret)
>  			goto nest_cancel;
>  		ret = dpll_msg_add_pin_direction(msg, pin, ref, extack);
> +		if (ret)
> +			goto nest_cancel;
> +		ret = dpll_msg_add_phase_offset(msg, pin, ref, extack);
>  		if (ret)
>  			goto nest_cancel;
>  		nla_nest_end(msg, attr);
> @@ -377,6 +427,15 @@ dpll_cmd_pin_get_one(struct sk_buff *msg, struct
> dpll_pin *pin,
>  	if (nla_put_u32(msg, DPLL_A_PIN_CAPABILITIES, prop->capabilities))
>  		return -EMSGSIZE;
>  	ret = dpll_msg_add_pin_freq(msg, pin, ref, extack);
> +	if (ret)
> +		return ret;
> +	if (nla_put_s32(msg, DPLL_A_PIN_PHASE_ADJUST_MIN,
> +			prop->phase_range.min))
> +		return -EMSGSIZE;
> +	if (nla_put_s32(msg, DPLL_A_PIN_PHASE_ADJUST_MAX,
> +			prop->phase_range.max))
> +		return -EMSGSIZE;
> +	ret = dpll_msg_add_pin_phase_adjust(msg, pin, ref, extack);
>  	if (ret)
>  		return ret;
>  	if (xa_empty(&pin->parent_refs))
> @@ -416,7 +475,7 @@ dpll_device_get_one(struct dpll_device *dpll, struct
> sk_buff *msg,
>  	if (nla_put_u32(msg, DPLL_A_TYPE, dpll->type))
>  		return -EMSGSIZE;
> 
> -	return ret;
> +	return 0;
>  }
> 
>  static int
> @@ -705,6 +764,39 @@ dpll_pin_direction_set(struct dpll_pin *pin, struct
> dpll_device *dpll,
>  	return 0;
>  }
> 
> +static int
> +dpll_pin_phase_adj_set(struct dpll_pin *pin, struct nlattr *phase_adj_attr,
> +		       struct netlink_ext_ack *extack)
> +{
> +	struct dpll_pin_ref *ref;
> +	unsigned long i;
> +	s32 phase_adj;
> +	int ret;
> +
> +	phase_adj = nla_get_s32(phase_adj_attr);
> +	if (phase_adj > pin->prop->phase_range.max ||
> +	    phase_adj < pin->prop->phase_range.min) {
> +		NL_SET_ERR_MSG(extack, "phase adjust value not
> supported");
> +		return -EINVAL;
> +	}
> +	xa_for_each(&pin->dpll_refs, i, ref) {
> +		const struct dpll_pin_ops *ops = dpll_pin_ops(ref);
> +		struct dpll_device *dpll = ref->dpll;
> +
> +		if (!ops->phase_adjust_set)
> +			return -EOPNOTSUPP;
> +		ret = ops->phase_adjust_set(pin,
> +					    dpll_pin_on_dpll_priv(dpll, pin),
> +					    dpll, dpll_priv(dpll), phase_adj,
> +					    extack);
> +		if (ret)
> +			return ret;
> +	}
> +	__dpll_pin_change_ntf(pin);
> +
> +	return 0;
> +}
> +
>  static int
>  dpll_pin_parent_device_set(struct dpll_pin *pin, struct nlattr *parent_nest,
>  			   struct netlink_ext_ack *extack)
> @@ -793,6 +885,11 @@ dpll_pin_set_from_nlattr(struct dpll_pin *pin, struct
> genl_info *info)
>  			if (ret)
>  				return ret;
>  			break;
> +		case DPLL_A_PIN_PHASE_ADJUST:
> +			ret = dpll_pin_phase_adj_set(pin, a, info->extack);
> +			if (ret)
> +				return ret;
> +			break;
>  		case DPLL_A_PIN_PARENT_DEVICE:
>  			ret = dpll_pin_parent_device_set(pin, a, info->extack);
>  			if (ret)
> diff --git a/include/linux/dpll.h b/include/linux/dpll.h
> index bbc480cd2932..578fc5fa3750 100644
> --- a/include/linux/dpll.h
> +++ b/include/linux/dpll.h
> @@ -68,6 +68,18 @@ struct dpll_pin_ops {
>  	int (*prio_set)(const struct dpll_pin *pin, void *pin_priv,
>  			const struct dpll_device *dpll, void *dpll_priv,
>  			const u32 prio, struct netlink_ext_ack *extack);
> +	int (*phase_offset_get)(const struct dpll_pin *pin, void *pin_priv,
> +				const struct dpll_device *dpll, void *dpll_priv,
> +				s64 *phase_offset,
> +				struct netlink_ext_ack *extack);
> +	int (*phase_adjust_get)(const struct dpll_pin *pin, void *pin_priv,
> +				const struct dpll_device *dpll, void *dpll_priv,
> +				s32 *phase_adjust,
> +				struct netlink_ext_ack *extack);
> +	int (*phase_adjust_set)(const struct dpll_pin *pin, void *pin_priv,
> +				const struct dpll_device *dpll, void *dpll_priv,
> +				const s32 phase_adjust,
> +				struct netlink_ext_ack *extack);
>  };
> 
>  struct dpll_pin_frequency {
> @@ -91,6 +103,11 @@ struct dpll_pin_frequency {
>  #define DPLL_PIN_FREQUENCY_DCF77 \
>  	DPLL_PIN_FREQUENCY(DPLL_PIN_FREQUENCY_77_5_KHZ)
> 
> +struct dpll_pin_phase_adjust_range {
> +	s32 min;
> +	s32 max;
> +};
> +
>  struct dpll_pin_properties {
>  	const char *board_label;
>  	const char *panel_label;
> @@ -99,6 +116,7 @@ struct dpll_pin_properties {
>  	unsigned long capabilities;
>  	u32 freq_supported_num;
>  	struct dpll_pin_frequency *freq_supported;
> +	struct dpll_pin_phase_adjust_range phase_range;
>  };
> 
>  #if IS_ENABLED(CONFIG_DPLL)
> --
> 2.38.1
> 
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
