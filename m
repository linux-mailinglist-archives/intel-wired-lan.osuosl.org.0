Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E2C71E6DFD
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 May 2020 23:44:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1682A86D20;
	Thu, 28 May 2020 21:44:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ntQ2LNGs04zD; Thu, 28 May 2020 21:44:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7310B86D6A;
	Thu, 28 May 2020 21:44:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5654B1BF39A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 May 2020 21:44:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 51C5A86CF8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 May 2020 21:44:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bI1C4tlB1k9C for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 May 2020 21:44:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id CCE3686CF6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 May 2020 21:44:41 +0000 (UTC)
IronPort-SDR: Edm7WobSbAw04QPIPUU5NWqMGEpaPB51t5I9JisYn7HJQTkcwX59zjSGibOxYrjw/un4BERGX4
 gumoAhyQhr5w==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2020 14:44:41 -0700
IronPort-SDR: bg93dcZ0EsKoCqReuqFeJ9glFplRVE/QYiqPlwi5x8FSsJYAUu7+D55I7vR3kHuduPLAxWe8Zy
 HyMrgUxWSJ0Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,446,1583222400"; d="scan'208";a="256303147"
Received: from orsmsx107.amr.corp.intel.com ([10.22.240.5])
 by orsmga007.jf.intel.com with ESMTP; 28 May 2020 14:44:41 -0700
Received: from orsmsx155.amr.corp.intel.com (10.22.240.21) by
 ORSMSX107.amr.corp.intel.com (10.22.240.5) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 28 May 2020 14:44:40 -0700
Received: from ORSEDG002.ED.cps.intel.com (10.7.248.5) by
 ORSMSX155.amr.corp.intel.com (10.22.240.21) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 28 May 2020 14:44:40 -0700
Received: from NAM02-BL2-obe.outbound.protection.outlook.com (104.47.38.54) by
 edgegateway.intel.com (134.134.137.101) with Microsoft SMTP Server
 (TLS) id 14.3.439.0; Thu, 28 May 2020 14:44:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LMizeAp4qD8JgPgjPSEVjzLZSALE1EyixkIffj79nrD3VyFYdOCnXhsgdjHyuywUBEOEgz7eIJWhB4RRdfFMoks7mIBGcST61f2xzXkBkgMq5IMMocE8lZ/cGM6NpiW4rQ6w1of7HKv7RUe2qD/Wa6cXOLo5Z/0lLr1/VB/WCW/vT2ci0Kuqg83gfTN0Qp1HUyIb5QaD+HCn3Ws3OqHnJxUBBlZugnHJPuJ+DQIMMq40/iJRBjc89sgbOMpGmZ+fcocqUEWx4pqg1Ta3MNCAQhbYU4XdczeKn45wxfo3+53hrXVxnlw9dcfvBsZY4+obzfXjI4utKKswV8ilPxGeRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JBkqfme074EqYNLUKW0f/eNcZlyhHTa4nFqY8ZcvM98=;
 b=VlU+2pubD5egVkXhOmnZ4Z2Ldh8nuqmSrdu7tJFdmoIs0KrUe7bEolZl2Mw1vuJvWKuVoJL98l07llBtWg16OdXe05pU/zt+Htj7oO6Re2o+cBc1Pj5UeXRv/XmQyIJcyAp4CQ6QlQZvCPZ/dp59kYDAKRo0VsP/KJabZjhqoLV9A67DoE8XEVHkNU6TQ8rqb8jmPgmFxC1ay3htFCgLDx++5e61RRzlSMtfbRoDJUO2GM4MCu8FLRrwTSgUGWKHOZJY+yrR3lUJXRbBkjppd12N6A0/cseIE1f9lsr5Px5FTU7wPjJValTyAkGF1fwOf9hglkybOfOm5U97zxQpig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JBkqfme074EqYNLUKW0f/eNcZlyhHTa4nFqY8ZcvM98=;
 b=rKs82d+JmB39UJ4KZEJ97lhW/90x9kPF1usGzUK3TDTtZo+befRZtHA2VqJND7/HDjN05ZJoHA94NmLYfYjWVwTs+Ms/65aH+FHEYhtdzv3EnSwe1wbh5h/iXfyjvE0v26Eguexe7aCiPFnJjpU1GOCI+k61H1nyA8U9mWIojKg=
Received: from DM5PR11MB1659.namprd11.prod.outlook.com (2603:10b6:4:6::20) by
 DM5PR11MB2043.namprd11.prod.outlook.com (2603:10b6:3:e::21) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3045.19; Thu, 28 May 2020 21:44:39 +0000
Received: from DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66]) by DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66%9]) with mapi id 15.20.3045.018; Thu, 28 May 2020
 21:44:39 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S45 14/15] ice: Increase timeout after
 PFR
Thread-Index: AQHWKxyVm4ZhuO3QAkOsYhxD3psDmKi+HBQg
Date: Thu, 28 May 2020 21:44:39 +0000
Message-ID: <DM5PR11MB1659F54A101AC3882F3CC2C38C8E0@DM5PR11MB1659.namprd11.prod.outlook.com>
References: <20200516005121.4963-1-anthony.l.nguyen@intel.com>
 <20200516005121.4963-14-anthony.l.nguyen@intel.com>
In-Reply-To: <20200516005121.4963-14-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.2.0.6
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [192.55.52.219]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0464bd1a-7b16-46c2-5bd2-08d8035052a9
x-ms-traffictypediagnostic: DM5PR11MB2043:
x-microsoft-antispam-prvs: <DM5PR11MB20432A3874393905CC4CA3BC8C8E0@DM5PR11MB2043.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3826;
x-forefront-prvs: 0417A3FFD2
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: pGGIXWyp3l7fTRjcxOGLsJYdYiyIS1Z4Hvh67ZcKjSXH5oJyCQjMLYTzNq8JuyTZiTOgjF8+2GcdGnmD6tKqJo44YUt+nj3fsgKKopAW57FqbKyvo4frVlzyMHvhBYJR17S9BpShVc2pNkiz5iCWXFkNXNJhtSLkrZR1cCJwe3koiLHXgo+n8WAFi3ENeWXzuCciZprp0PfcDbm/iPqUakKmurczH5LqNzCgHrYyst0aKJ08IFwWLV3S+oOEZBtC+TR94QxrBHLcBnIAFD/+f5FLR+EqGNeofdQahbZMX1fmCcDzy+PRVSGUGctzoEJW
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1659.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(39860400002)(376002)(366004)(346002)(136003)(396003)(66946007)(66556008)(64756008)(66446008)(71200400001)(66476007)(2906002)(33656002)(316002)(86362001)(52536014)(6916009)(83380400001)(4744005)(55016002)(9686003)(76116006)(26005)(186003)(8936002)(7696005)(8676002)(6506007)(5660300002)(53546011)(478600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: CiYXPFsES0fcvkiMUzOjmkmCRBRzjcBf1WExnI5zr0RdUjR+aZOwubR7ci1IV8AcJr5nLURtYTZM+y0d1jZKBjCogWUeLC5JxzmqPAGkWtAGBw3mEzKjNJgrRSmdVVtZcrTYN9KYIfLGBBNLC80cvL9pUisECK4DwsG2XO47waOGjuep8DYkiUl2DkCRrntCTTHA6DbYyNy/c0GLqRvB1xrG7RPPrTkIacEBx7vTXqvtUVvlpn0r+3QXg/IvISBDsrC1Bof39rDZP2h3nbJycKc49bUIwVrTOniug41g8xU3qm+jBVHmsL+hzkcESR2Q8xgcAJxBmKBbTq+gPjuij6I54E3wRXXo5FsmyLFt6XBhUVWIn69q/NviVQY94vvrcof+OAWS5VR19q3NsjJwLfz26AjaRYdhG90awZ5HQ8haxQUl7pGMG9xybn6HmISw6cafutOthfy2n6tD7EpD9IAHWgUkhFaGamvBEiMcDJYsnPXLKCM3sOcnwkgvmmOq
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 0464bd1a-7b16-46c2-5bd2-08d8035052a9
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 May 2020 21:44:39.0823 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DpSlJjQvfUjX4zh6Guz8outS5kdweY6xqHGdLn3QrRmAqtPiB/4b8Lk5EnpHKVQmqTHiIkX1IW2ttPA0Pc7wAkO5OCvDTOJxeN+MI4r1l4A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB2043
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S45 14/15] ice: Increase timeout after
 PFR
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
> Sent: Friday, May 15, 2020 5:51 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S45 14/15] ice: Increase timeout after PFR
> 
> From: Dan Nowlin <dan.nowlin@intel.com>
> 
> To allow for resets during package download, increase the timeout period
> after performing a PFR. The time waited is the global config lock timeout plus
> the normal PFSWR timeout.
> 
> Signed-off-by: Dan Nowlin <dan.nowlin@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_common.c | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
