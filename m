Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7024933D943
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Mar 2021 17:24:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9A38C431A9;
	Tue, 16 Mar 2021 16:24:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xgbMnT0wPI8C; Tue, 16 Mar 2021 16:24:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4B497431A8;
	Tue, 16 Mar 2021 16:24:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3DFE51BF97D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Mar 2021 16:24:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 386BE4AAFC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Mar 2021 16:24:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EZB1WfB5Ee2e for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 Mar 2021 16:24:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 81A714A1C0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Mar 2021 16:24:02 +0000 (UTC)
IronPort-SDR: jB9t6++CAKhJU8NCPbrafKhpqmMYK2N254UtjTlPiI9kgpu/1pC22x2kPm7vMUWjF89y7rqiSE
 zR38T5EHgpaA==
X-IronPort-AV: E=McAfee;i="6000,8403,9925"; a="186912901"
X-IronPort-AV: E=Sophos;i="5.81,254,1610438400"; d="scan'208";a="186912901"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2021 09:23:43 -0700
IronPort-SDR: Z5W00o4/aYkEUVhL6wjnzomGS0bUJ5Ohug7CUSIswyuXhd980yt/6voLKu6cQWHggMl5aVCX9U
 uo6geIexbQgA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,254,1610438400"; d="scan'208";a="440133553"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by FMSMGA003.fm.intel.com with ESMTP; 16 Mar 2021 09:23:42 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Tue, 16 Mar 2021 09:23:42 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Tue, 16 Mar 2021 09:23:42 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Tue, 16 Mar 2021 09:23:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Qw8n/hURskM5zjVhikRoyIjXE3sE3PD+A/WvczNNwHsjDhIE2QzprBkYB5jOgAsL+TqN3IzvbfX3GTNP/R2QSJZDo2WfK18Q0/VKt1CHPDM+bnVlGYAgPLPRW5zuAgJxqf5DWdGK6s0ZmLyQnQjOtNz4yjPRkmJTHGCunXls8hKWosBqe1sWf/mRa8muS/tEQ7vTz/fGkP1bIg281Jf5B+7Sco0vbQIFwLKV8tqHjKEGwMVj4REar4HXKBFuaTE/9JOsB9kYKq7hHGkIfo1TmCrwHCuv71CKI3pKcaB9dpGMv5HpuIS8T/Vd2qgCaeM1c7lWVNqoidmVFh+K9ogFNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=My8VMQ3yqeFDu741CaGwdz4iPwqij3ISOsFQkdS9UmI=;
 b=lFU9Ha+l5ywYxaoHjY9KgbQygP/LIJa2gvrBspcvoID2ZeB6eqILfwRC/FU2HxObhm8Ip9R3OGCghlRCZgJ9Ti5nbuQ1kJlATG8adlOGQhCjUfK/lg6bb5CCg+WX+3DRhrYX2kySU8c2n3m/9U7putX2Zvr6e/AxM2o1+kqLtmR5d3pJi6pZKuzH8wEjU2+Ravj1FdgwKt1dsjuRd39CVihn7ICLtXNDo+puLAKbEOIbrCYyEaqLYLnfv5RrSOlb+hAuIV4Xtj1bS3M3Y0fgGuI4yl3Mt39jeXyyeHgvEPdl/SNLbx+AN8D5Qij6iZM9K6seWEAPVwBTWYIX61+ucg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=My8VMQ3yqeFDu741CaGwdz4iPwqij3ISOsFQkdS9UmI=;
 b=lhjw8BH8ZMroQOcpHGFsAUZy9Pc8V/z/z43LuO3S+1WkFgz1ieWqlhgCeUhqTNG/vxAVYu72YIQn8Hxl4SZdgdj+SoIxrmiZk8/LiziEfdCGBKtsleloMB0n3F17yCM8oJ68/lCc8X65QkK8o2AH+ZroCQ0Stsk6sfJbWYZKORo=
Received: from DM5PR1101MB2074.namprd11.prod.outlook.com (2603:10b6:4:50::8)
 by DM6PR11MB3244.namprd11.prod.outlook.com (2603:10b6:5:8::22) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3933.32; Tue, 16 Mar 2021 16:23:37 +0000
Received: from DM5PR1101MB2074.namprd11.prod.outlook.com
 ([fe80::9c3f:8966:4849:9a08]) by DM5PR1101MB2074.namprd11.prod.outlook.com
 ([fe80::9c3f:8966:4849:9a08%12]) with mapi id 15.20.3933.032; Tue, 16 Mar
 2021 16:23:37 +0000
From: "Nunley, Nicholas D" <nicholas.d.nunley@intel.com>
To: Stefan Assmann <sassmann@redhat.com>
Thread-Topic: [Intel-wired-lan] [PATCH net v2] iavf: Fix asynchronous tasks
 during driver remove
Thread-Index: AQHXFyLOAFQgfHWGJEq3fGs4Mk9LDaqASk+AgAVjT8CAAJFYgIAAih1w
Date: Tue, 16 Mar 2021 16:23:37 +0000
Message-ID: <DM5PR1101MB2074AA792E3C0D732A204C30B36B9@DM5PR1101MB2074.namprd11.prod.outlook.com>
References: <20210312093337.68364-1-eryk.roch.rybak@intel.com>
 <20210312123615.7fcvoayobcslko74@p50.fritz.box>
 <DM5PR1101MB20742AB907C04D1B6A6C6A4FB36C9@DM5PR1101MB2074.namprd11.prod.outlook.com>
 <20210316073311.xbssn43q3r52e2e7@p50.fritz.box>
In-Reply-To: <20210316073311.xbssn43q3r52e2e7@p50.fritz.box>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: redhat.com; dkim=none (message not signed)
 header.d=none;redhat.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [73.67.140.177]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8f6e426d-9f3f-4a44-cf41-08d8e897da9d
x-ms-traffictypediagnostic: DM6PR11MB3244:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB32448297672F6AD641F66FB2B36B9@DM6PR11MB3244.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: WdgaaPuG/JH8FxFwGENFiLOrTYftz7HCEcB6L9btb62i+LrgtlZ5TysNDVJPCz0ArUM3IiIyC2Lxvmltndpy9K/IMhFI5h1eayXU3AkInhyuRl/pNdLrae620GuJqd0Gx5phvJO/iTQuETq18uMmUrqRJhmqw0cMXXacZzwRfrSI3GMP2VJxFt4/a+KsPkObq06l+f3pufZSBlWMyxolcNGPakoWT7HzirwXOcTs0ay66kEu0Nyw8rk/jjwWBZzhwh33Itjjiab/T7JU21Qpc4TNRUSnrG/KSUsr6fTzmfg4jgQMiLwFy5me4I8wtJXwDaTQGsefwFM2yxQfC72a4a+O+NkLCM1PVZhSbFBkTy7Se995C/o0jwIYEIqFda6A6PuYoBIKe/Rz2SpNSqsP0OJ+i2MS+io5dBjR+W0IvW922AuiDZMjZ9b9ajyfudinJSbn356RKhV4NgQebotnjNSxth+MPJkQL2nmD/01QxUYYEPAGvokhbyHjAl8FfFxFAPFJMibcvtn0WUbfh70/CkASUGBqKoBHD0Us838i0Y+xVKNBfD5ZsJLrBY2G7mNapOpt54SVSP6dtLvA0eTKKjyTXGze0ZZsoTgr8itjnnQrinCq1PW+v9ozEeN+CgBeI2tZTQnY3zHy9VLQ+1Ddg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR1101MB2074.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(346002)(396003)(376002)(366004)(136003)(39860400002)(86362001)(64756008)(66476007)(66556008)(4326008)(966005)(107886003)(186003)(316002)(33656002)(76116006)(8676002)(478600001)(9686003)(71200400001)(66946007)(83380400001)(54906003)(66446008)(2906002)(52536014)(55016002)(5660300002)(6916009)(7696005)(8936002)(26005)(6506007)(53546011);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?GU/T5hpXPjJKhIEmYDph7JOMtnrLf6l8Tkj1PRNOMkyR5xUgiaM+nz2d3oFw?=
 =?us-ascii?Q?Z+HZ2anjVEOAc/dhuCo2xVtQ1u7diTRN0zfKH5IVYaLSlaovD/pf/IUXlwaa?=
 =?us-ascii?Q?3CXQCzd9QCoxdRlZx0VQBn5mI6rK/L7WaplBkBmUbkHbMrE1r8pNCifzDO9o?=
 =?us-ascii?Q?ncMjyhDRNUzfZmSK3zXiRLFqavTejuu5+bAjth4Q3UVptNRTnh7s4TB6OA4P?=
 =?us-ascii?Q?xOwgSXqOvMxsCqyNoKlOvmHzs54Rimjg1nTFf41hlT7g7zIMXaxU5Xxd5LsL?=
 =?us-ascii?Q?WWHc2FseH//djtYv8CNZQwK+7WKt/vLF3ko5slS86ck4Xz7FDxi1oSmbbG4f?=
 =?us-ascii?Q?kcgTXSdzmC+XLCyPbSl1txBS4k2AA3a4n7rpWFl1lkoS+3tAYbZsn8QFvlTl?=
 =?us-ascii?Q?c47ziwmQ+zlRGdm4Xgdc6/kIwD09OS1m6Cs9Jtyt7l1sVnNjhBK0aVWQaXVx?=
 =?us-ascii?Q?uSUSYbacyNSN809+gdC+PMSuCNoOVGH+6OZpNDaU36+kBwlDQwAqn2FIZAX7?=
 =?us-ascii?Q?b9HC77Qr/GBPFJIA8vx399xSXJinHph/e5z/MC2ARSufSyZp5kMkkiJUyDZi?=
 =?us-ascii?Q?1En8wOz7MtoNpUf3jf6nRJKtpx/9o3+jrmTlgtTdtxEICB3SMOlchzLnXM9R?=
 =?us-ascii?Q?9rkw1CvhW6J+4BWoKgjw64SLufe8BGPCLmiC+6jfG3MbdrpTYDlrAc9+JbLb?=
 =?us-ascii?Q?Je1HqkhCtKX/OyErhjEsSFaMYqtfotn3INDvdxnxPZ3lkZbP2rhnEeV6/1Ym?=
 =?us-ascii?Q?uSYDwRuCafCJHQKXIAuS1bVewZVSQTLrFkcfELvdiytYvgHDVwsOgS9WQtFI?=
 =?us-ascii?Q?JSkgJO+aI28mnpqo0Ae7JEow8mPotTxLgi/33lgZobuvbU65l4Dax56HQ2bM?=
 =?us-ascii?Q?UCw28ol5YT9uY9tYUW0RXkELKB5oweWpXYr5aMx0fuM/BKdqgoFk1Nya39fK?=
 =?us-ascii?Q?5kwwXN/2z8xvpWsPRtMqAv3q8TAH3FYJGpc/X0BVI9eC3YKpingMAOC1Egkz?=
 =?us-ascii?Q?lJaAEAQaIQGAJtYmJWo/YuZFcAkt5VQGeZj0kZmQL+5QZ59lGmCMysVPKkyF?=
 =?us-ascii?Q?KSMizNarI0DTwhbCUM+D2h0XSAjXXBJzcOXmwgcym5lz30M+fBpnUHKYB+a+?=
 =?us-ascii?Q?WDuyETRCwUuSG6Fg2Ez7cTJeKG3z02TRk991vLf5iqS+BSS48HQqvBSinwmL?=
 =?us-ascii?Q?4V5Fo/fpBgiQnyNhbEvfMQhFvspycCgVKDBTHEHuehHHk/EDcRamPNbhgvmJ?=
 =?us-ascii?Q?I3TndxnoTbq3IU8+83y/oEBsfiKs0oFvTXNsCkdoT5uCXZERlImBkc0i/eMw?=
 =?us-ascii?Q?abLRw9nVZ5n1KmdXZKYMC5yx?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM5PR1101MB2074.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8f6e426d-9f3f-4a44-cf41-08d8e897da9d
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Mar 2021 16:23:37.6666 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wfn89bM08/qhLgtNJ2j0/zlJhA6HLH/x9MAufrfaxIAC+sv2zL539T8zaEgspLTKU66z/i1mFd7+5wylgUXdOkYyf0lJu156my2mtdVTi4A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3244
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v2] iavf: Fix asynchronous tasks
 during driver remove
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
Cc: "Rybak, Eryk Roch" <eryk.roch.rybak@intel.com>, "Loktionov,
 Aleksandr" <aleksandr.loktionov@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Stefan Assmann <sassmann@redhat.com>
> Sent: Tuesday, March 16, 2021 12:33 AM
> To: Nunley, Nicholas D <nicholas.d.nunley@intel.com>
> Cc: Rybak, Eryk Roch <eryk.roch.rybak@intel.com>; Loktionov, Aleksandr
> <aleksandr.loktionov@intel.com>; intel-wired-lan@lists.osuosl.org; Nguyen,
> Anthony L <anthony.l.nguyen@intel.com>
> Subject: Re: [Intel-wired-lan] [PATCH net v2] iavf: Fix asynchronous tasks
> during driver remove
> 
> On 2021-03-15 23:31, Nunley, Nicholas D wrote:
> > Thanks for pointing this out. This was an accidental oversight, although I
> think part of my reason for not paying close enough attention is that the
> client code is never actually used. Since there aren't any plans to use the
> client code in the future, we discussed this here and the plan is to remove
> that code from the iavf driver. We'll be submitting a patch for that soon, but
> in the meantime I think we'll be all right if this patch goes in as-is, since the
> bug is purely hypothetical and has no real-world impact.
> 
> Hi Nick,
> 
> the other question I have here is. How do you properly communicate the
> device close to the PF if the watchdog and adminq tasks are already
> shutdown?
> 
> iavf_close() calls iavf_down() which queues these adminq commands
>                 adapter->aq_required = IAVF_FLAG_AQ_DEL_MAC_FILTER;
>                 adapter->aq_required |= IAVF_FLAG_AQ_DEL_VLAN_FILTER;
>                 adapter->aq_required |= IAVF_FLAG_AQ_DEL_CLOUD_FILTER;
>                 adapter->aq_required |= IAVF_FLAG_AQ_DISABLE_QUEUES; which
> can never be handled. IOW, is i40e still able to properly clean up in this case?

Hi Stefan,

This should be handled by the PF driver in response to the reset request later in iavf_remove(). As part of the VF reset handling process the PF driver needs to reinitialize the VF hardware (clear filters, stop queues, etc.) to put it back into a clean state, and the PF driver should be doing this already for VF resets, if it's not then that would be a bug. Note that although the VF watchdog and adminq tasks are shut down at the time it calls iavf_request_reset(), the admin send queue hardware/firmware mechanism is still operational and able to pass messages, so the PF driver will see the reset request and handle it.

Thanks,
Nick

> > > -----Original Message-----
> > > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> > > Of Stefan Assmann
> > > Sent: Friday, March 12, 2021 4:36 AM
> > > To: Rybak, Eryk Roch <eryk.roch.rybak@intel.com>
> > > Cc: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>;
> > > intel-wired- lan@lists.osuosl.org
> > > Subject: Re: [Intel-wired-lan] [PATCH net v2] iavf: Fix asynchronous
> > > tasks during driver remove
> > >
> > > On 2021-03-12 10:33, Eryk Rybak wrote:
> > > > Although rare, is possible for unexpected driver watchdog or Admin
> > > > Queue tasks to run during the execution of iavf_remove function.
> > > > Then, is not possible to obtain the standard
> > > > __IAVF_IN_CRITICAL_TASK lock and difficult to ensure that the
> > > > driver state stays consistent during the full removal process.
> > >
> > > If you shutdown the watchdog task before closing the device, how do
> > > you ensure the client task is properly shutdown?
> > >
> > > Calling iavf_close() sets the IAVF_FLAG_CLIENT_NEEDS_CLOSE flag,
> > > which would call iavf_notify_client_close(&adapter->vsi, false); in
> > > the client task, but the client task does no longer get scheduled by
> > > the watchdog task because it has been shutdown already.
> > >
> > >   Stefan
> > >
> > > > Fully stops all asynchronous tasks in the beginning of
> > > > iavf_remove, and uses a single-threaded flow to shut down the driver.
> > > >
> > > > Fixes: fdd4044ffdc8("iavf: Remove timer for work triggering, use
> > > > delaying work instead")
> > > > Signed-off-by: Nick Nunley <nicholas.d.nunley@intel.com>
> > > > Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> > > > Signed-off-by: Eryk Rybak <eryk.roch.rybak@intel.com>
> > > > ---
> > > >  drivers/net/ethernet/intel/iavf/iavf_main.c | 31
> > > > +++++++++++++++++----
> > > >  1 file changed, 25 insertions(+), 6 deletions(-)
> > > >
> > > > diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c
> > > > b/drivers/net/ethernet/intel/iavf/iavf_main.c
> > > > index dc5b3c06d1e0..e752ecb7ad89 100644
> > > > --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> > > > +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
> > > > @@ -1887,6 +1887,12 @@ static void iavf_watchdog_task(struct
> > > work_struct *work)
> > > >  	struct iavf_hw *hw = &adapter->hw;
> > > >  	u32 reg_val;
> > > >
> > > > +	/* If the driver is in the process of being removed then don't run or
> > > > +	 * reschedule the watchdog task.
> > > > +	 */
> > > > +	if (test_bit(__IAVF_IN_REMOVE_TASK, &adapter->crit_section))
> > > > +		return;
> > > > +
> > > >  	if (test_and_set_bit(__IAVF_IN_CRITICAL_TASK, &adapter-
> > > >crit_section))
> > > >  		goto restart_watchdog;
> > > >
> > > > @@ -2267,6 +2273,12 @@ static void iavf_adminq_task(struct
> > > > work_struct
> > > *work)
> > > >  	u32 val, oldval;
> > > >  	u16 pending;
> > > >
> > > > +	/* If the driver is in the process of being removed then return
> > > > +	 * immediately and don't re-enable the Admin Queue interrupt.
> > > > +	 */
> > > > +	if (test_bit(__IAVF_IN_REMOVE_TASK, &adapter->crit_section))
> > > > +		return;
> > > > +
> > > >  	if (adapter->flags & IAVF_FLAG_PF_COMMS_FAILED)
> > > >  		goto out;
> > > >
> > > > @@ -3245,6 +3257,13 @@ static int iavf_close(struct net_device
> > > > *netdev)
> > > >
> > > >  	clear_bit(__IAVF_IN_CRITICAL_TASK, &adapter->crit_section);
> > > >
> > > > +	/* If the interface is closing as part of driver removal it doesn't
> > > > +	 * wait. The VF resources will be reinitialized when the hardware is
> > > > +	 * reset.
> > > > +	 */
> > > > +	if (test_bit(__IAVF_IN_REMOVE_TASK, &adapter->crit_section))
> > > > +		return 0;
> > > > +
> > > >  	/* We explicitly don't free resources here because the hardware is
> > > >  	 * still active and can DMA into memory. Resources are cleared in
> > > >  	 * iavf_virtchnl_completion() after we get confirmation from the
> > > > PF @@ -3850,11 +3869,16 @@ static void iavf_remove(struct pci_dev
> *pdev)
> > > >  	struct iavf_cloud_filter *cf, *cftmp;
> > > >  	struct iavf_hw *hw = &adapter->hw;
> > > >  	int err;
> > > > -	/* Indicate we are in remove and not to run reset_task */
> > > > +	/* Indicate that program driver is remove task and not
> > > > +	 * to run/schedule any driver tasks
> > > > +	 */
> > > >  	set_bit(__IAVF_IN_REMOVE_TASK, &adapter->crit_section);
> > > >  	cancel_delayed_work_sync(&adapter->init_task);
> > > >  	cancel_work_sync(&adapter->reset_task);
> > > >  	cancel_delayed_work_sync(&adapter->client_task);
> > > > +	cancel_work_sync(&adapter->adminq_task);
> > > > +	cancel_delayed_work_sync(&adapter->watchdog_task);
> > > > +	iavf_misc_irq_disable(adapter);
> > > >  	if (adapter->netdev_registered) {
> > > >  		unregister_netdev(netdev);
> > > >  		adapter->netdev_registered = false; @@ -3879,15 +3903,10
> > > @@ static
> > > > void iavf_remove(struct pci_dev *pdev)
> > > >  	}
> > > >  	iavf_free_all_tx_resources(adapter);
> > > >  	iavf_free_all_rx_resources(adapter);
> > > > -	iavf_misc_irq_disable(adapter);
> > > >  	iavf_free_misc_irq(adapter);
> > > >  	iavf_reset_interrupt_capability(adapter);
> > > >  	iavf_free_q_vectors(adapter);
> > > >
> > > > -	cancel_delayed_work_sync(&adapter->watchdog_task);
> > > > -
> > > > -	cancel_work_sync(&adapter->adminq_task);
> > > > -
> > > >  	iavf_free_rss(adapter);
> > > >
> > > >  	if (hw->aq.asq.count)
> > > >
> > > > base-commit: c1acda9807e2bbe1d2026b44f37d959d6d8266c8
> > > > --
> > > > 2.20.1
> > > >
> > > > _______________________________________________
> > > > Intel-wired-lan mailing list
> > > > Intel-wired-lan@osuosl.org
> > > > https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
> > > >
> > >
> > > _______________________________________________
> > > Intel-wired-lan mailing list
> > > Intel-wired-lan@osuosl.org
> > > https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
> >

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
