Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id F36EC358F63
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 Apr 2021 23:41:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8952C60E0F;
	Thu,  8 Apr 2021 21:41:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YGAp2pBdx5dN; Thu,  8 Apr 2021 21:41:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 778BE6071D;
	Thu,  8 Apr 2021 21:41:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CA1411BF860
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Apr 2021 21:41:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B88C340144
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Apr 2021 21:41:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WnONztue1BUT for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 Apr 2021 21:41:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 16B1A40140
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Apr 2021 21:41:22 +0000 (UTC)
IronPort-SDR: toxLnAlUDy5leiaYm5XyUAWZzYMFHOJGnruJykdR28eNrnsB4ygWI5IoE4uKrcsj80QJhrXz+X
 Obdx+0nAm5Dw==
X-IronPort-AV: E=McAfee;i="6000,8403,9948"; a="173720693"
X-IronPort-AV: E=Sophos;i="5.82,207,1613462400"; d="scan'208";a="173720693"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2021 14:41:22 -0700
IronPort-SDR: HQj1dnvpuOqOHTDcWSgD+WelfUdedo9GXyHcrnGXoxZtJfHxpfccsQdd4L/oxhbfRWKY0WS9u5
 FjEsY6U8xeMw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,207,1613462400"; d="scan'208";a="458992795"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga001.jf.intel.com with ESMTP; 08 Apr 2021 14:41:22 -0700
Received: from fmsmsx606.amr.corp.intel.com (10.18.126.86) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Thu, 8 Apr 2021 14:41:21 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Thu, 8 Apr 2021 14:41:21 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.48) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Thu, 8 Apr 2021 14:41:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Y8fa8uhUgdLRosQd/GQH9vAbJx3PpFUo/nMkSKOIplBuba9z0eUJwvD2GoRDBcLUpGvjQPpPGsGPvrKxEAhRpsj9rUUCraYiufCn4kvmYIfeAr+rTVlS8DDk52NVsJuttEv0sxfin7Me+mibmcZOEM7TwKLKtGDs1fsQLSrHXX61lzxuETjXvDYat37go/r8eVPejrNHayo7xJMLLQhruk7CEIkhpKEe1KP1lyXVcpg69ckQOwFFmuuMnEKS9ZMC44D/8olV+yryAw9sg1LGVtqDKNE7UhwhN0FSy1pX6W7VqUptLfzIjbFKrNoGylfQSs9iB7ooVQjuoU5UdUcyNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TBVYWpl/5hbaamEDNI6ViUYYkUFeVb0diTsQISghpvo=;
 b=a7IWcigfcW4YOz5oihpcjOnjCxgkU5dPXJq2CTtDkXq0gKbVop3CsNBDraGho1aixHgKzZgG2uM5SfhB2bwdQr2VVLh4AlLj/rWtiesWKXjNkCGOyVepVTVCz427ysa2DFCskM52t+CBUkpCeVrG7D9qVMHQwjSM6Ko3omqCo+2MfKTAUCc8gMJ8lYjdSkzecW6cFJ6u6c4ymhXTzEL13gA/XhVe9PR3BdU4iwYGnOfhPLMBWO56oY7TAaAJ5AymIXsf3qHlBmbGRtC8L+Hu24at13OKQQYx/U4S7IIURuqZWVwmuwjzLkWgvqMBRsKPVHN5/rwEffCZ17W3yHnkEg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TBVYWpl/5hbaamEDNI6ViUYYkUFeVb0diTsQISghpvo=;
 b=Nu2yhEWCE1CqcPPDmPbuy0QHZDlsiQDS9RMwNsRvkpKhH1cBrND7q3yTe/U+WZ/OXyY2AzfczE8o/PfkY1sjikNyezqr6Mp+j2oSwIEpOrLAoNzw0NDVfTdoJ/pCqFRFgwzGya+das8A6MTFxWmvqDD5qeZZ/4dYd8hl17ThR08=
Received: from CO1PR11MB5105.namprd11.prod.outlook.com (2603:10b6:303:9f::7)
 by MWHPR11MB1567.namprd11.prod.outlook.com (2603:10b6:301:d::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4020.20; Thu, 8 Apr
 2021 21:41:20 +0000
Received: from CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::fc78:a58:d862:c366]) by CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::fc78:a58:d862:c366%3]) with mapi id 15.20.4020.016; Thu, 8 Apr 2021
 21:41:20 +0000
From: "Brelinski, TonyX" <tonyx.brelinski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S58 08/13] ice: remove unused struct
 member
Thread-Index: AQHXJnS3MJJw7xycLU2gr5rGlnSOTqqrMqFA
Date: Thu, 8 Apr 2021 21:41:20 +0000
Message-ID: <CO1PR11MB51056FE63B606BE52A507CE8FA749@CO1PR11MB5105.namprd11.prod.outlook.com>
References: <20210331211708.55205-1-anthony.l.nguyen@intel.com>
 <20210331211708.55205-8-anthony.l.nguyen@intel.com>
In-Reply-To: <20210331211708.55205-8-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.0.76
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.214]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e54acdfa-eb2f-45c2-7cec-08d8fad70c93
x-ms-traffictypediagnostic: MWHPR11MB1567:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR11MB15674A51EA479FCCB87CA173FA749@MWHPR11MB1567.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: loeeHcTlJMdPpzeuoCssJC/saZTTzcUn54DUmc497shUdzw9VHiwoMeaAa3vDGByDfszkmdDI2qacRlmqDtt2qvR/A5NjVMjFVSieouG9uw1c2KguMt00OCMxerKm0I+C3ql1CKHzm4bZKBecunxXaKevBuoe5YjwerIzJLyY6+JoghWpXWvqPJ/J1TfF4jsrT3qjJb7UIVPTcY6wzXuaYzTIuOhtgThjPMz8eSQooZghGQseD96PYOOzkS8TjcNsSZ51Pn4LlWHRLebmh6VOZhSAfQYk2r8pt/c+2v1Q7jWwwXVXcksOw2yi6vqakhinrXCTEUjhn1GP9gmyvOtdg0qt+OAE3ciZaIikktp/FKByLNzdGmqM0LuL82hD/AGcB/D16ZyW4XeHQpQ8Y5BoE1s7u30HvybAkT1YYwY/6K89atWp1wKsKxl+UFnG3QpF90h/3UowEgDNwTTVXsCoW20AvkO8VJffd2rWJ4NBObYhkDWuUmKinCbTTdfIbUV/tc+JN+7PNa2XVZbCmjH3suulEHUfuMSE4y7HgoBQoRqKl6dnBN7Uy/+ZNHRT4X/CGa/HsJCs3Ff/tQ4mDtM6DQOrCRmtj7mrCkfOQTiin4u6IudTL3WMrsPJMbPtKJFKgAIu/zKf1x3iqNGjzIAvILq9CtWOvk7jxkjVebLkd4=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5105.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(136003)(346002)(376002)(39860400002)(396003)(366004)(26005)(66946007)(64756008)(83380400001)(186003)(52536014)(4744005)(5660300002)(110136005)(2906002)(53546011)(38100700001)(33656002)(7696005)(316002)(478600001)(6506007)(9686003)(71200400001)(55016002)(86362001)(8676002)(76116006)(8936002)(66556008)(66476007)(66446008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?W168cLiJR0q6wjubFtRX2kRU8JSheP4wzzuMYxFJjAi/n+fW/5aWWCZUt49v?=
 =?us-ascii?Q?jTlNSKuh4oq3w3qmCBXiztAgTispkWVKwAAI2VwJJ+rvLsfXZX3uZJ+ySxFz?=
 =?us-ascii?Q?YOEoxvuY7a2uaBolfJH+WLFqgg8qGPJ0hNiuU9GyO2AdOduAFOlwzJvzIhSN?=
 =?us-ascii?Q?CV0VAjNc1ufyYAf1zfqIqEFlC9kpwJ1Zj9SH31OvJW1js5XWoCZ+kw5wVU3c?=
 =?us-ascii?Q?3c7TvrpiXsJBdjRlGnlWaaJNrLZc4dh2BX+eMxIXIT8eYtnZ38xxUKipCU4l?=
 =?us-ascii?Q?dLG+/aJF8eorng6dmAvFpr+wDA/OyJIzAunxOX7XizVlysrjero/EkaW0+LF?=
 =?us-ascii?Q?lpgleQvGiNdRYG912JP0z0zZizOs8u/O3QWM3fHKvdkYdg2TLokqKPEc6VeZ?=
 =?us-ascii?Q?PPNbzRggc2L/zNtA1oHqSSGxViZ+MDwpMuwJqytqYoJTYq7GbypCBiFXbtKY?=
 =?us-ascii?Q?tGPP419ByI1LZ40M1KNmLsrD+7sRY9qOs9kn4SKUm/6SWF0/PKa8oUY5yYcS?=
 =?us-ascii?Q?II7FRzyTPsqTMrQGfY9imrf7UUouP7FdOgg40brbGuiiwUlK5xLpAfY6zyTG?=
 =?us-ascii?Q?t5/oMZMOWf0y3NRqj4Ft8qZOD9Mogz5JUuERyNWNpBCfQYXXp4v5Ufz6aIrE?=
 =?us-ascii?Q?wZIzI/2bXzR5tCbwaGEDV6VLcHBuZMgzJ5GV/miUN2eLM7dVFNp9lMMTcwKp?=
 =?us-ascii?Q?Mw8bPuT+ZfXiNC5DcId7xlYKF1cvepaw8TSNPgstJZTi3AS9ZMDs3aIKtSVZ?=
 =?us-ascii?Q?KQ2Ca7gmhzknT6CXKCIa9crsIsTCc2sxL3iqFwr3ikFcbbcGz1hIBvRWh1h7?=
 =?us-ascii?Q?t6X8Q+05AJo8zsOnNBJUGL110AbDa0O18y1Ns4plsCEb3du4syUL+DACiAnP?=
 =?us-ascii?Q?9Meu5sTf2/M/5vkvJKKN6erWes9U8uXPY/qBGLvgafahQlPL+d8r8krP3UrG?=
 =?us-ascii?Q?voIUfVNea0PB8r9OfqtvbSS1eWu+pimWg+jJeUI67omWw2+fHNzeYxr+u2hg?=
 =?us-ascii?Q?WEAx6i3cQHJkr/LMLtPmqR3hEXrMurymxFh+EnB9Gfba7gqmSWPEZosHVOp4?=
 =?us-ascii?Q?K03HBKg/wI82SKcDMZsZDUD5+4pzhKi3dwLR43bVLq1iU3HuSAZxde8VJu71?=
 =?us-ascii?Q?jAPsAg4yBrJcdA3ruMEWKWlzWdaQdpUG/UGl0iy0PugQmTH3k1BuqllT+wCm?=
 =?us-ascii?Q?qy/x4Eq7StK7+hDMw300ZoJrsa1Ok1wvrJSjUvU8fqGLlRURNieBU8zzOx4K?=
 =?us-ascii?Q?PqjlOgkokUu9YwF5yEkAaWS+Gnx86kqWXiOFKnmqn5Zcrxc3BW3t9hhmiFRt?=
 =?us-ascii?Q?ixoTqvpQIWe8vu3xTPmlenmr?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5105.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e54acdfa-eb2f-45c2-7cec-08d8fad70c93
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Apr 2021 21:41:20.7535 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +Xz3Wa1y4IZPXG+sIl752F+P1JfGqMWJ/VmuEvUfAuSIRa23YBmBFCh2e8fEXJurX8YgbgqqT0mNZBbMbt9v34XvN5f+ozw6qUzMouv18gc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1567
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S58 08/13] ice: remove unused struct
 member
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
> Sent: Wednesday, March 31, 2021 2:17 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S58 08/13] ice: remove unused struct
> member
> 
> From: Jesse Brandeburg <jesse.brandeburg@intel.com>
> 
> The only time you can ever have a rq_last_status is if a firmware event was
> somehow reporting a status on the receive queue, which are generally
> firmware initiated events or mailbox messages from a VF.  Mostly this struct
> member was unused.
> 
> Fix this problem by still printing the value of the field in a debug print, but
> don't store the value forever in a struct, potentially creating opportunities for
> callers to use the wrong struct member.
> 
> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_controlq.c | 6 +++---
> drivers/net/ethernet/intel/ice/ice_controlq.h | 1 -
>  2 files changed, 3 insertions(+), 4 deletions(-)

Tested-by: Tony Brelinski <tonyx.brelinski@intel.com> A Contingent Worker at Intel


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
