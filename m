Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B53D222A5B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Jul 2020 19:47:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 25C8189ABF;
	Thu, 16 Jul 2020 17:47:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7NyqYWAZrpqG; Thu, 16 Jul 2020 17:47:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C802C8A91D;
	Thu, 16 Jul 2020 17:47:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1EC8D1BF841
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jul 2020 17:47:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 1B2E18B163
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jul 2020 17:47:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id j47ZQjttskWK for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 Jul 2020 17:47:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 6C6808B15A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jul 2020 17:47:50 +0000 (UTC)
IronPort-SDR: mZ9csDeI4VcpUreA1InQ8MJARwNLgZk9WnK4sM1KapckjWn0/ipn+nomrdDkxUbn12CtLSBbl4
 WSPvERF1XAWQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9684"; a="234310506"
X-IronPort-AV: E=Sophos;i="5.75,360,1589266800"; d="scan'208";a="234310506"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2020 10:47:49 -0700
IronPort-SDR: eiYezh1J8ZRSmL2a0t6UhbXFQds+dEpvTxuxxo505/VRJtNusTu/rirkw+6NEVb0OPtMxgionI
 HtBJmJXBw2gg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,360,1589266800"; d="scan'208";a="326593446"
Received: from orsmsx107.amr.corp.intel.com ([10.22.240.5])
 by orsmga007.jf.intel.com with ESMTP; 16 Jul 2020 10:47:48 -0700
Received: from orsmsx111.amr.corp.intel.com (10.22.240.12) by
 ORSMSX107.amr.corp.intel.com (10.22.240.5) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 16 Jul 2020 10:47:48 -0700
Received: from ORSEDG002.ED.cps.intel.com (10.7.248.5) by
 ORSMSX111.amr.corp.intel.com (10.22.240.12) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 16 Jul 2020 10:47:47 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.171)
 by edgegateway.intel.com (134.134.137.101) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 16 Jul 2020 10:47:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RIKeym8BXJfhQiW9ywbF6K8uCPIjSMb0SbMOHwWtKN2FWGuSadkmaXpib2KdgPVQHDcQ4GKz4YB+N0AyCQ6JPEm7dyQkSpzTaTX4zcLF8I1YGeVkyALmDQNxQdh/D1Q4biRfJqWAnKmKnEIUA5JJSQDgqyqYOLSxUpNQUmhGIkkYBD5VUzdMJhsYkKGgl8MCRE328tP51/AZgxGtt2oH4c3CBrXmOL/S3RISacDx9fxjfl8YILc0HBoQ37lPPN9NwSsh6pqZ1JMhxGjiPiL10dcXCsMQbCMZQG1ijzqvypzuv2+FXny/kyEkqacOH3IiR6vQg7C1XPVUB8C/3zBCzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JVUKfSH8gThnqCidmEHdmJ9dsMu19WHnGOVmcC5JoY4=;
 b=mV8X+C12RzyY82QM8YTMJpAox2luAl09wl3wmgdOtx8TrL26Mu+CnCq+75HYvORfJ/S5u2DEEsdZvPBU4ZFQj6/SxpbC5cjIa03W3cfZMZehgKxEHdI9q/NYK/5upFi9AA7QWbKBG2zOKVHh+OGu7UCRbBmQhlTlsdTWVRaR3qL9eJtJF+p9TWgUhoI1leT24NJ2SLgcZgBE370UWYIrYxQROyrjrZLZl8c3jRl+me1qWZxsm0zisK0k5bf9rc8Ro4AQw62a4Xn/WxDOYIHEyU3LEsnQ3R6awqogTtUtFOiAEF0xv/sPj7PqN05zvBdJh/XE3jhe6JOfTXsrDozcsQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JVUKfSH8gThnqCidmEHdmJ9dsMu19WHnGOVmcC5JoY4=;
 b=PXf2gWcd5k5YnuwrMoQHR+Zu0rkDiRvSEAFOuEwZlewQsZfHz/lSIJowhAS9rGdtk4p4wbZJKo+3+QQ4TmEw25rfBQzxuLq2YEig0rirfFtEi23mnRKUilVGbI1BQyphoUMiF8oRnkXTfgvGswU/ZGAwVyGX7iz9NSnxzo4ARrA=
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 (2603:10b6:405:51::10) by BN6PR11MB1268.namprd11.prod.outlook.com
 (2603:10b6:404:47::17) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3174.23; Thu, 16 Jul
 2020 17:47:45 +0000
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3]) by BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3%9]) with mapi id 15.20.3195.018; Thu, 16 Jul 2020
 17:47:45 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S50 08/15] ice: Adjust scheduler
 default BW weight
Thread-Index: AQHWWVg8dmuy1x3Dh0SJH+WAmLV5VakKf6uQ
Date: Thu, 16 Jul 2020 17:47:45 +0000
Message-ID: <BN6PR1101MB21450CF17F47943150D0F4B48C7F0@BN6PR1101MB2145.namprd11.prod.outlook.com>
References: <20200713205318.32425-1-anthony.l.nguyen@intel.com>
 <20200713205318.32425-8-anthony.l.nguyen@intel.com>
In-Reply-To: <20200713205318.32425-8-anthony.l.nguyen@intel.com>
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
x-ms-office365-filtering-correlation-id: d93cec12-d47b-47a9-1663-08d829b05922
x-ms-traffictypediagnostic: BN6PR11MB1268:
x-microsoft-antispam-prvs: <BN6PR11MB12689FFC23D8598281809F458C7F0@BN6PR11MB1268.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4941;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ROIBCHiMOecdaSryxL5g2+Czu0zp2g+ipWSxZhVxVdPUfDhFYcIvaIvnwYOd6mL3/63etjO7PoXGmX/pFTBwLkANI+vZJSVzJDBG6cbUYt0hheT8U8qjTKt1ZwZw4GQAzu5hz9Orr9bTJeqTfd/Ajc+VPs2BBD8oPC2RV+QuMuQoAaEKAWZ/wG5X7x/WhySj3qBViqy1S9ZRk6q6eZ99yrSKz7UZ1z53yoKbzVBzdVsz4cdBGpYPO5f7g0ruhqnUBSiw/0WwlMD7c8Af3T9Xk9lRCjVY4hkycjt5MUagGu+HcAOvFY/h+9RDDRWxforKYQc7Hlb53j5wni4Z0cijpPJoiaXTJVa7ktUGD8cXEl3rTOK/R1jCYA+bdwhho/Z5
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR1101MB2145.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(366004)(39860400002)(376002)(396003)(136003)(346002)(6916009)(2906002)(9686003)(4744005)(55016002)(478600001)(7696005)(186003)(64756008)(8936002)(316002)(66946007)(66556008)(66476007)(83380400001)(71200400001)(76116006)(26005)(5660300002)(53546011)(33656002)(52536014)(86362001)(8676002)(66446008)(6506007)(16393002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: WAKPSQ7DAakEvUU08T/oye9KAjIvQzzi8JcdfSBxEOftg1tIci2MOPdGBOLxLy2Krz1pmWuVxSGA3rTPS/7wKrnCPpSWYweg7vpHopB693jB5uwygGmrTeqCxseomX1Tp/89YwUys2QRqt6qKEIn+oIoED9/JbiJhNHGlfsMQuniL/MXqFQdCDUTMl/ogtwf00DzlCMpguLW1tCXQ80SY4ivmFC0EMz4vMeV1fc7q03kLYslntZWOB8Bs2F6YRFW51pTsG8zTeFfkL9SOGoUpxNnuW1X5Eb9nXoH3uh1CBVs7K/0mRk4dcBWuAw91/xrMs4rmI/7mhnaAfWH99J4gZA4K2nzlf84+VyQSkcF7hV9a7iW6sv0mnmxp73/F1yRl+mKLV2sAsTa34rkx+SuAnDpvWH2PNmP0TDD8iUEY65WGSIMI8tgA4joLu4O8UjZarFbpAAxpGh1jebRpnFI9MIeYmhTSZ3n6pBtUUH6Bqk=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN6PR1101MB2145.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d93cec12-d47b-47a9-1663-08d829b05922
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jul 2020 17:47:45.8234 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zAbj2w7FY5Hfw3b8aGQVeDyodNIZve7yfm7DUu4Wc4mgn+FTz5HXY2yvtCjA9JsFIz4rfdnJE+kR1rlgEtQK4z0tmzW8fUDeJFJw5v3X9A4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1268
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S50 08/15] ice: Adjust scheduler
 default BW weight
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
> Subject: [Intel-wired-lan] [PATCH S50 08/15] ice: Adjust scheduler default BW
> weight
> 
> From: Tarun Singh <tarun.k.singh@intel.com>
> 
> By default the queues are configured in legacy mode. The default BW
> settings for legacy/advanced modes are different. The existing code was
> using the advanced mode default value of 1 which was incorrect. This caused
> the unbalanced BW sharing among siblings.
> The recommneded default value is applied.
> 
> Signed-off-by: Tarun Singh <tarun.k.singh@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_common.c | 13 ++++++++++++-
>  drivers/net/ethernet/intel/ice/ice_type.h   |  2 +-
>  2 files changed, 13 insertions(+), 2 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
