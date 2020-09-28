Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EDCD27B409
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Sep 2020 20:04:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7894A847FE;
	Mon, 28 Sep 2020 18:04:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 88Fm6k0iM5RD; Mon, 28 Sep 2020 18:04:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 399BF84F48;
	Mon, 28 Sep 2020 18:04:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B0F261BF2BE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Sep 2020 18:04:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id AC37E86FA2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Sep 2020 18:04:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iAUeBKMmGY2P for <intel-wired-lan@lists.osuosl.org>;
 Mon, 28 Sep 2020 18:04:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 983A486F9C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Sep 2020 18:04:24 +0000 (UTC)
IronPort-SDR: l0POkA/PvPX4IdIKnsmiyH+NJ2Lp6fhvIM357TC3OT1JCTJh+Hl8UyHEl3sIA/6GnJwBvHkpcR
 vc6OCX+z/swA==
X-IronPort-AV: E=McAfee;i="6000,8403,9758"; a="226185650"
X-IronPort-AV: E=Sophos;i="5.77,313,1596524400"; d="scan'208";a="226185650"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2020 11:04:22 -0700
IronPort-SDR: 1N9k8ovZh50wPJL8pSpNfZpUY4C2hgf5i2nrLe93aYFIAzoGigte/4Pr2eWVn0U7+GBRoPhPFD
 t4EghvsVvewA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,313,1596524400"; d="scan'208";a="384498016"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by orsmga001.jf.intel.com with ESMTP; 28 Sep 2020 11:04:22 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 28 Sep 2020 11:04:22 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 28 Sep 2020 11:04:22 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.106)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Mon, 28 Sep 2020 11:04:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=G2fqvGLvBuOv96x1q7ocEgHh0GUJxFl+FVpP+uaghz7NZter6uUYFoVWghpGZUvIekT6YOmlpFA6V7rFYmkRAYr97vAB07aRp2kXCLJD7/T+czOElDUWtc5BaV6wvaGekwceFIJqibrdXl+emM7K9tWMij9Ncw5dwZNZUCflPueEG0OCvrmKf9l4e2Z2EEcQrPOH0VRq+bp/PO0qV9xLAy966Efxo3V9/HTCZ2MsZ7OENtu4sxVgS8NGu/crhSbq8k3wlJjyBoY8ENNkrsiRTA0dRJUmVHpmK03eRpBOMsWR7rBeMUodPQD5OVaW+M/ALhFXOytaMg/EkefyFLTimA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HqGTM3b490tlAbBsVXaP3i0aGu9orWd/nzrdPBNW6vE=;
 b=h6GyyxDo827zGQWoam3vI3U498jYr1NCjGI94Q4C1YBvf3z6UsGn9JSWgGT966o+GKeLHNrziQ2cEMPpEU21XfgM3TW550Flxiurtl3hPxmA77ISWw20PRirndO16bWmzYK8UYJ0VZhWCVgulQvCWynkxO7NaXogWD8/n/xp3WoVAOF7vwfScw5DerU7cv19rjIJS+rKotEMS+vbBjG+p50ZfdieqrnspGA7b+syB0OZOYuEyUMgQHnMb3YSgtxTADfG24EmW7etNvHKwomeVasoQhSAltG6NviszjuM0cNybbC9ZN0qd85gNLuXSljHZkJaTEGlb6XaUZ9/7t1ZjQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HqGTM3b490tlAbBsVXaP3i0aGu9orWd/nzrdPBNW6vE=;
 b=kxiogR9ZfIpdYZezQLeLz6CU5opxxSKZ7jP8+Z9VIP0MG1Uu0nmwO5DByI+v6WIqHMix2dZGXcO3cRz0bbE9oDQSnaGvTeb50nJYoZVA1+zIH8Jdc4xPnimecERvMc0W6p4yJsTnTz5SragYkfK74hQ40u3iDIsOgmZnaDx4qSk=
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SA0PR11MB4560.namprd11.prod.outlook.com (2603:10b6:806:93::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3412.23; Mon, 28 Sep
 2020 18:04:14 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::acc4:9465:7e88:506e]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::acc4:9465:7e88:506e%7]) with mapi id 15.20.3412.026; Mon, 28 Sep 2020
 18:04:14 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "sven.auhagen@voleatech.de" <sven.auhagen@voleatech.de>,
 "brouer@redhat.com" <brouer@redhat.com>
Thread-Topic: [Intel-wired-lan] bpf_redirect and xdpgeneric
Thread-Index: AQHWlautwx7HOxyUlU60IEBtWc0SXql+OyEAgAAdEoA=
Date: Mon, 28 Sep 2020 18:04:14 +0000
Message-ID: <f1a1a7c89fce4ba5c78da65700e02d353bb9e5d4.camel@intel.com>
References: <CANDGNvbX+BwA_ZUmw2rxH5FGLFsCVH33Tw3RCk3e3Qo69J+4qw@mail.gmail.com>
 <87lfh7fkqs.fsf@toke.dk>
 <CANDGNvbY=8XEJP=S3e+5V2RU6u0zjRE3YDo62bhV-Qaje=++2A@mail.gmail.com>
 <5f7f5056-d1de-737b-2d76-cd37e4a4db8e@gmail.com>
 <20200928172449.50a3e755@carbon>
 <20200928162010.wpv6ukqscuxaxtnj@svensmacbookair.sven.lan>
In-Reply-To: <20200928162010.wpv6ukqscuxaxtnj@svensmacbookair.sven.lan>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.28.5 (3.28.5-3.fc28) 
authentication-results: voleatech.de; dkim=none (message not signed)
 header.d=none;voleatech.de; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.204]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4c7494c5-5ce6-4200-7362-08d863d8e8cf
x-ms-traffictypediagnostic: SA0PR11MB4560:
x-microsoft-antispam-prvs: <SA0PR11MB45603446C7BE2E70B4BC6470C6350@SA0PR11MB4560.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: uFUxtOolvNj8jn2D8WeBDVHrX5cV+g/LO0NGA8fMqJXVaUOpsqXyNwmfdCtjywtpPe85sTwJ5abTBbrKnUOf9MNFfMdwMrHiSbZxfU4UQyXqbgZ58fruA6QGtHQQugwX+kjmryNcVuerATOFuX3RZDOVkrowsW1NoVTcn5EjcDJ7iWk0CKdqDAYTuW9UvJKmES7XKhIJc+SaSzyAK01m4lgD/9Usn0fvx/t2B5zKrRpD0a5MtjS08HH9kyQeeq/vnzQP/eYm+toXAL9COuJXWlWIF2P//QBF4oPYjIexIH1W752jRwUsZfEIxTuBp8y8H5LNa5ggoiDH6jcUFbXWhjAUR1BNM4f6ssC+D6QeNL8m4Su0oyJ32n3L3uJ9DmoSBmyXDqeq8MW6RmVwcmrbWvk2LmTqglr1BE2Hs7jDI04+uXDSAoMm9dj+mULT13fGcjlrGt6oS+icU+YoxEMBj3D1sgaVnennQS5T9RcnsbhsFCYWr7YKkpT0pWB9BiOH
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(39860400002)(376002)(396003)(346002)(136003)(6486002)(26005)(186003)(86362001)(36756003)(316002)(478600001)(110136005)(71200400001)(54906003)(2616005)(66574015)(45080400002)(2906002)(91956017)(76116006)(6512007)(66946007)(4326008)(5660300002)(966005)(53546011)(66446008)(8936002)(6506007)(66476007)(8676002)(66556008)(64756008)(99106002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: Vn2l6+nvYNS+7jYf+CbqidxhmNQI5ZHtUl1mEZJhbNg6DbvuyhnQYvuXy8DDYOLeWHV0yrgNzCzInysoNcwqaHZ5rhRKNg9j/9XitF8B0ugGPkbDXjVXiEhuNbU4ZoYZNNkpM91KnMpPerG0BBj3uyrJOUPIw6SKoy9fShiK9q5+/q5iq1w2pfZ0zTpaRLeOtbUJb8QDGJ/2fR231pwplVcjKnYS8LXA1s7mlcvnz0BVlXvLSCPPpMhBaFBwhJgCwi5TsSKQ5Dz9LkoWmrm07akExBkYWf1fUvrygc9rJQ75IKPDTZxJZJ5ckdAZ7l5DbtvVJSV09z400V9v+jqE23giAwDzRJy8sW+IPBLlUZRTpbVcwKDnKB9N/RZE+11xRFSvvJWqCD3oIp3tYquP/Gor5oyu4SkcPLXrOV69Gbk5NGDzegXRVBfqPz63smUmmyZTGZKIEoLnOREqa/WMdR+XCO3Tp0M6GRFCMM0AFz7SbftFT+AsxW/1sF9Fa24TSevON3YntFehIPm5wMsB3J4mWvgDOc5qu7G0C0JwbDCvFv9xB1NRWLYcRmQ4jMP3WZ/I12R4ZDRlVYE9A9sGr58se4Ca8Y5nEn1m2RoQru+2n1nrcdnot/M9YDfekmYKSi4BkEcqvSVxU65qtTpCAg==
x-ms-exchange-transport-forked: True
Content-ID: <8DDCDB3E6EADCA41BDD5503307BB68C2@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4c7494c5-5ce6-4200-7362-08d863d8e8cf
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Sep 2020 18:04:14.1491 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VMH7XSgThhVIKGu47VOMfTVuyMb3soHuAZ1tA4CSDnQU0cV+Xflp4douYN7H3h1iRgQxaljXCEMCoyIvLpK2W/MHjmzXNLmdEVhBaCCwTNU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4560
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] bpf_redirect and xdpgeneric
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
Cc: "xdp-newbies@vger.kernel.org" <xdp-newbies@vger.kernel.org>,
 "toke@redhat.com" <toke@redhat.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "ThomasPtacek@gmail.com" <ThomasPtacek@gmail.com>,
 "dsahern@gmail.com" <dsahern@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, 2020-09-28 at 18:20 +0200, Sven Auhagen wrote:
> On Mon, Sep 28, 2020 at 05:24:49PM +0200, Jesper Dangaard Brouer
> wrote:
> > On Fri, 18 Sep 2020 14:27:45 -0600
> > David Ahern <dsahern@gmail.com> wrote:
> > 
> > > On 9/18/20 12:42 PM, Thomas Ptacek wrote:
> > > > The setup is pretty simple. There's an eno1 (igb driver), to
> > > > which our
> > > > default route points. On the same box are several VMs. There's
> > > > a tap
> > > > interface (for each VM, call it tapX). Traffic for a VM flows
> > > > in from
> > > > the Internet on eno1 and is directed to tapX; the response
> > > > traffic
> > > > flows in the other direction.
> > > > 
> > > > I'm deliberately simplifying here:
> > > > 
> > > > eno1 runs an XDP program that does some lightweight IP
> > > > rewriting from
> > > > anycast addresses to internal VM addresses on ingress. eno1's
> > > > XDP
> > > > program currently XDP_PASS's rewritten packets to the IP stack,
> > > > where
> > > > they're routed to the VM's tap. This works fine.
> > > > 
> > > > tapX runs an XDP program that does the same rewriting in
> > > > reverse.
> > > > Right now, it also XDP_PASS's packets to the stack, which also
> > > > works
> > > > --- the stack routes response traffic out eno1.
> > > > 
> > > > I'm playing with XDP_REDIRECT'ing instead of XDP_PASS'ing.
> > > > 
> > > > I have the ifindexes and MAC addresses (and those of IP
> > > > neighbors) in
> > > > a map --- a normal HASH map, not a DEVMAP. Using that map, I
> > > > can
> > > > successfully redirect traffic from tapX to arbitrary other tap
> > > > interfaces. What I can't do is redirect packets from tapX to
> > > > eno1,
> > > > which is what the system actually needs to do.
> > > >   
> > > 
> > > XDP_REDIRECT sends the packet to a devices ndo_xdp_xmit function.
> > > tap
> > > implements it hence eno1 -> tap works; igb does not meaning tap
> > > -> eno1
> > > fails.
> > 
> > There is clearly a real-life use-case for adding native-XDP support
> > for
> > igb driver.  Sven (cc) have implemented this (v6[1]), but something
> > is
> > causing this patch to not move forward, what is stalling Intel
> > maintainers?
> 
> The holdup is from the Intel guys.
> There is a v7 with the changes for Kernel 5.9 but it was only posted
> on
> the Intel list:
> 
> 
https://patchwork.ozlabs.org/project/intel-wired-lan/patch/20200902203222.185141-1-anthony.l.nguyen@intel.com/
> 
> They tested it last week so it should hopefully be merged in the next
> window.

There were some email issues which prevented us from sending it out
sooner (after it was tested). The issue was resolved Friday, I just
sent the patch to netdev:


https://patchwork.ozlabs.org/project/netdev/patch/20200928175908.318502-2-anthony.l.nguyen@intel.com/

Thanks,
Tony

> > 
> > To Thomas, you could try out the patch[2] and report back if it
> > works
> > for you?  (I think it will help moving patch forward...)
> > 
> 
> I would be interested if it works for you as well.
> 
> Best
> Sven
> 
> > [1] 
> > https://eur03.safelinks.protection.outlook.com/?url=https%3A%2F%2Flore.kernel.org%2Fnetdev%2F20200902054509.23jbv5fyj3otziq2%40svensmacbookair.sven.lan%2F&amp;data=02%7C01%7Csven.auhagen%40voleatech.de%7Ccbd762e5a024488f491b08d863c2b6cb%7Cb82a99f679814a7295344d35298f847b%7C0%7C0%7C637369035229290801&amp;sdata=Pv%2BTEQeY4lcPnIprg0n6K0nHOMMlMo2qlrcmxqWNuLY%3D&amp;reserved=0
> > [2] 
> > https://eur03.safelinks.protection.outlook.com/?url=http%3A%2F%2Fpatchwork.ozlabs.org%2Fproject%2Fnetdev%2Fpatch%2F20200902054509.23jbv5fyj3otziq2%40svensmacbookair.sven.lan%2F&amp;data=02%7C01%7Csven.auhagen%40voleatech.de%7Ccbd762e5a024488f491b08d863c2b6cb%7Cb82a99f679814a7295344d35298f847b%7C0%7C0%7C637369035229290801&amp;sdata=CmlEramL%2FHGz745N6HP%2FWRzPwZs0ERh3kQ8%2Bj%2FIUztw%3D&amp;reserved=0
> > -- 
> > Best regards,
> >   Jesper Dangaard Brouer
> >   MSc.CS, Principal Kernel Engineer at Red Hat
> >   LinkedIn: 
> > https://eur03.safelinks.protection.outlook.com/?url=http%3A%2F%2Fwww.linkedin.com%2Fin%2Fbrouer&amp;data=02%7C01%7Csven.auhagen%40voleatech.de%7Ccbd762e5a024488f491b08d863c2b6cb%7Cb82a99f679814a7295344d35298f847b%7C0%7C0%7C637369035229290801&amp;sdata=LJUt38GAkdXS2rW7WG%2BUS0d6eVxZfl3VJqyHvNsqLmY%3D&amp;reserved=0
> > 
> 
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
