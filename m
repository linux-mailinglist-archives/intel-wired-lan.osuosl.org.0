Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 23A0E24212D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Aug 2020 22:15:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D31CC87F04;
	Tue, 11 Aug 2020 20:15:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id u1lZBCad2h03; Tue, 11 Aug 2020 20:15:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1107887EEB;
	Tue, 11 Aug 2020 20:15:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5E0F91BF2A1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Aug 2020 20:14:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 58ECA87EB5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Aug 2020 20:14:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cxp4zGmnBhwp for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 Aug 2020 20:14:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 39A5A878D1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Aug 2020 20:14:56 +0000 (UTC)
IronPort-SDR: cr1nRvagtFmtfu8ew9+eTgPpoZnSPVG6zQlUFOiERSv1z4T/xBnzveSn9cV7gEy7z0YDdy6Dl+
 6vcQUdYtIlAA==
X-IronPort-AV: E=McAfee;i="6000,8403,9710"; a="141439788"
X-IronPort-AV: E=Sophos;i="5.76,301,1592895600"; d="scan'208";a="141439788"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2020 13:14:55 -0700
IronPort-SDR: 8kKdkjK5qlLzK+iF6mNiNGiYYy/TIbebRYMFDZ9ClLuYmnDw4hOqr1IPHe8yhmDaEHFbAlvPEq
 W0c23SF8MJDQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,301,1592895600"; d="scan'208";a="276383619"
Received: from orsmsx606-2.jf.intel.com (HELO ORSMSX606.amr.corp.intel.com)
 ([10.22.229.86])
 by fmsmga007.fm.intel.com with ESMTP; 11 Aug 2020 13:14:55 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 11 Aug 2020 13:14:54 -0700
Received: from orsmsx605.amr.corp.intel.com (10.22.229.18) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 11 Aug 2020 13:14:54 -0700
Received: from ORSEDG002.ED.cps.intel.com (10.7.248.5) by
 orsmsx605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 11 Aug 2020 13:14:54 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.105)
 by edgegateway.intel.com (134.134.137.101) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 11 Aug 2020 13:14:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JMFTJiIyct80g/ey00tztg8E/xmOPnnY3fe6tygf33/pxFFOBES3yXhrAxjXcwR/rIb3tMDOWwTbSH5AiGw6qxfiKbxH3hZBKx9cD36Ghi99kDtQxxV1KIzGpKbUOyBoF8Bf+81/SQKoPHKnaSjccok3ceibEvhH3Uwio30WWWTupX2JsvtPVm/oFLTanu/R6hvl/j/mvlIaOHsz0h5TfCQNBI0lx2lFbyP86cIYtYTjgvyUt1OAsArL6JlOPd9y5rYGOvTG+PHnwyUALUuassejqmYYjHsCg1Sfrh2linckG1HPhIyoTAjvGEg8gc7G9camH/uM9mbYSJMgUMhtVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HScwrFeAgcdMWxjWvcm1O+K4PV3PrxD22R1dc/K/iEk=;
 b=oRrapS3JpoKHAttkhS/9yAhqBSZEDhAvOhgtFITIcM+Os45pF67qdov6PHYIKcy/SxIqpntbtHQkYToVNyfdhPK13b03g4T+x/f5LQles46rbmVhib0OCh/+SmC9DkWpbA/0jeNieXoPFwuDEWGHbVw2r5yxGg7NxwlK7m9M+WQZv+tBz1YVpGKaqP+pwZrbQ4EFbBLWXb1pdK4ufOwlYhZfHAoI19iut5mZhJ+uIWWS2A73OpDzWUcZu8RxD0KwvC/RsFiZK5ieGetS3zIhiGYc8rcyPLS3frHlS5KAX05I5+4tirfTpVhzzqtKdQ8yAhmiZ5htkRN8JUjppJ6buw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HScwrFeAgcdMWxjWvcm1O+K4PV3PrxD22R1dc/K/iEk=;
 b=EUho8H9P8Ybd0Vjc2M3uL27K4tkOUREmX7P6pNktCCpgQqlkeotjtb3rOnFXbZB8nhow+ODo64l/iI1Vord4EtdexmdXiOakG7c/pyzqtKsLG6jrd+CIWX+V6CMTnGM6q6d9az8WEl9Bfe4WCqzTkDiIqNCdaTojv/vLqNseT1o=
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SN6PR11MB3136.namprd11.prod.outlook.com (2603:10b6:805:da::30)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3283.15; Tue, 11 Aug
 2020 20:14:50 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::f8e7:739a:a6ef:ce3b]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::f8e7:739a:a6ef:ce3b%3]) with mapi id 15.20.3261.024; Tue, 11 Aug 2020
 20:14:50 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "Kirsher, Jeffrey T" <jeffrey.t.kirsher@intel.com>, "Guedes, Andre"
 <andre.guedes@intel.com>, "alexander.duyck@gmail.com"
 <alexander.duyck@gmail.com>
Thread-Topic: [Intel-wired-lan] [PATCH 3/3] igc: Fix SRRCTL register setup
Thread-Index: AQHWb1qC8PlSO49EhUuLxnPlOI0hHKkx9ESAgAAdggCAABCkgIABAJaAgAASHACAAAlmAIAAGumA
Date: Tue, 11 Aug 2020 20:14:50 +0000
Message-ID: <e8c785a4a9913075a9f20235d9d0497de099fb31.camel@intel.com>
References: <20200810210832.34699-1-andre.guedes@intel.com>
 <20200810210832.34699-3-andre.guedes@intel.com>
 <CAKgT0UdvyU+xkESA5HaqS2acbXQMJDUGdchRM2J6QExEcjiSkQ@mail.gmail.com>
 <159710652891.38166.5470520112400402456@gwclark-mobl2.amr.corp.intel.com>
 <CAKgT0UfujXBhZX8WeM_YrtZyCxZpP10zfARH6x4HdmjLbaFJvw@mail.gmail.com>
 <159716520324.40621.12578308745578598418@awandler-mobl.amr.corp.intel.com>
 <CAKgT0UfDs1VUo3zkgC_5m=ZTD_gTWaVEm5GuCqjxhw99agjjkg@mail.gmail.com>
 <159717111018.50137.11060973058927014942@astreet-mobl1.amr.corp.intel.com>
In-Reply-To: <159717111018.50137.11060973058927014942@astreet-mobl1.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.215]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 99a61e71-ff74-46d0-a699-08d83e3333a7
x-ms-traffictypediagnostic: SN6PR11MB3136:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SN6PR11MB31365350442D1EFF08890B38C6450@SN6PR11MB3136.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 8aXxav+sQoO+rAL02oljeSBKaJy0UB1XhnFaMuv2RBAGVXUuQHzS6lTYJWTtBTnpXcoFvtoWggS2px2N6aRU2MzhxrHaRj0siM4uFir+ZZyl1JwZ1H4q4MsNDamspyNlLjPo1q6eoPemw2l8+YpuTK4T+FE1aE0PDJS4qMzwCSvhl/WpWwVtGs7LyJS64Uvx0MswsVUt5eyyiHi5Nzgeq1zR7mNN0sOV3SXsIZ5/ik+emsAqhAbtV6vBJpYlOiZB+kim2nn0bS+OMa55J/zAGxkZ1W56yM5VZa+i0LcKCv/rF3abC3i44dES8wKF5XLiVjLb+ZzSar5+E1fu36+zmQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(396003)(39860400002)(366004)(136003)(346002)(376002)(8676002)(71200400001)(36756003)(2616005)(6506007)(110136005)(8936002)(6512007)(53546011)(26005)(186003)(316002)(478600001)(91956017)(76116006)(66556008)(66946007)(66476007)(86362001)(2906002)(66446008)(6486002)(5660300002)(64756008)(4326008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: 5IKwXWUZUFlOcMlvnk5rq7LsOspm6Pl9TnAyFxKoStogQ15WfaoaHtLaFHpEpyWpfDVn5WIUxar6NsV8yRuGoGnDwcUQMiukTxA9XVswC0wHsCkXE43HA060YMi6xnlScvu4LslRD1uiL+YGlQX2led5WIa87KTTFj3+iRLkpk/PP/aXJQQQ7HY4izucC8kWxrAc42+05UU8WvNTpLQ+Da8xkI7455jFGo1BgzWlbS7ermZAHIOYlV6XzPGDg+Y7SfiJ+EjAovKlVFZ5sneuDqGe4eVTOFMJcSG/oJpuoSH/K4BPFNQrtMjOx0RC8zE1uSZe1GfXWLk2hHISJGlB2rsG4OgeidNm3RrV/B+igKmtoDQ9zLfJrj47ENSszY0NFS/GxblP7vsIpVJ3dyYrEgoE5p+8jvkH9a4XDgSzDRDjm1DT6k4rgUGxLuKvf0ASXPVtWtkOXBoxhcXHquWLdMYgNsiBDDP56WyuKS3ZrLv0tD22nxFNweUvWPynG7taQf+7ME4SeXOPvPsLry9BVjyMcilQP+5QV3T50hJX/JiMmqYfsxsAkRpamoiojBdsf4FIGvBAbJxxaWFDed9kFPj6NLU0bSalr3xprO3EcHjR8YF/VGhghgmSgyk7iiH3RPKAowU7JoXGqPHLqveUug==
Content-ID: <6FCD49BA8459334D9B658D4394CB9E42@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 99a61e71-ff74-46d0-a699-08d83e3333a7
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Aug 2020 20:14:50.2825 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hE2k9VEh5gXYMv3cQpJKWx1pGAww+q0j9CUTp4QfGT9XQ9yXhf5hwwmfvNF6EiA12qZ7aCjfyGEaoyK4evZbCoMrjGGw5Za5a4UVLQ+C0dw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB3136
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH 3/3] igc: Fix SRRCTL register setup
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
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, 2020-08-11 at 11:38 -0700, Andre Guedes wrote:
> Quoting Alexander Duyck (2020-08-11 11:04:52)
> > On Tue, Aug 11, 2020 at 10:00 AM Andre Guedes <
> > andre.guedes@intel.com> wrote:
> > > 
> > > Quoting Alexander Duyck (2020-08-10 18:41:41)
> > > > On Mon, Aug 10, 2020 at 5:42 PM Andre Guedes <
> > > > andre.guedes@intel.com> wrote:
> > > > > 
> > > > > Quoting Alexander Duyck (2020-08-10 15:56:31)
> > > > > > > @@ -1869,6 +1866,7 @@ static void
> > > > > > > igc_alloc_rx_buffers(struct igc_ring *rx_ring, u16
> > > > > > > cleaned_count)
> > > > > > >                  * because each write-back erases this
> > > > > > > info.
> > > > > > >                  */
> > > > > > >                 rx_desc->read.pkt_addr = cpu_to_le64(bi-
> > > > > > > >dma + bi->page_offset);
> > > > > > > +               rx_desc->read.hdr_addr = 0;
> > > > > > > 
> > > > > > >                 rx_desc++;
> > > > > > >                 bi++;
> > > > > > 
> > > > > > If you are going to do this it would be better to replace
> > > > > > the line
> > > > > > that is setting the length to zero instead of just adding
> > > > > > this line.
> > > > > > That way you can avoid having to rewrite it. I only had
> > > > > > bothered with
> > > > > > clearing the length field as it was a 32b field, however if
> > > > > > you are
> > > > > > wanting to flush the full 64b then I would recommend doing
> > > > > > it there
> > > > > > rather than here.
> > > > > 
> > > > > Just to make sure I'm on the same page, do you mean to move
> > > > > this line to
> > > > > patch 2/3, right?
> > > > 
> > > > No, I hadn't had a chance to take a look at patch 2 yet. I
> > > > think patch
> > > > 2 is ill advised as the patch is currently broken, and even if
> > > > done
> > > > correctly you don't get any benefit out of it that I can see.
> > > > From
> > > > what I can tell this patch was likely covering up some of the
> > > > errors
> > > > introduced in patch 2. Now that I see this in conjunction with
> > > > patch 2
> > > > I would say you should probably just drop patch 2 and this one
> > > > as well
> > > > since they aren't adding any real value other than removing a
> > > > redundant write which was just there to keep this mostly in
> > > > sync with
> > > > how we did it for ixgbe.
> > > 
> > > What about not setting BSIZEHEADER bits since 'one buffer
> > > descriptor' option
> > > is used in SRRCTL?
> > 
> > Does it cause some sort of problem to be populating it? If not I
> > would
> > say leave it. It isn't too different from just populating the field
> > with 0 and should have no effect since the field is unused when in
> > one
> > buffer mode.
> 
> No problem that I'm aware of. When I first came across that code I
> found it a
> bit misleading since no header buffer is actually allocated by the
> driver. That
> was the only motivation for this patch.
> 
> So Jeff/Tony please disregard patches 2 and 3 from this series. Let's
> move forward with
> patch 1 only.

I will apply patch 1 and drop the other 2.

Thanks,
Tony
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
