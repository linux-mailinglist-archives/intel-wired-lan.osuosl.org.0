Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B81EE234BD2
	for <lists+intel-wired-lan@lfdr.de>; Fri, 31 Jul 2020 21:58:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7372286BCF;
	Fri, 31 Jul 2020 19:58:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EUQ8tezCCH1h; Fri, 31 Jul 2020 19:58:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BAACF86C04;
	Fri, 31 Jul 2020 19:58:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 814BE1BF2A0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Jul 2020 19:58:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7A52A826E0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Jul 2020 19:58:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mwatXiPCD1nu for <intel-wired-lan@lists.osuosl.org>;
 Fri, 31 Jul 2020 19:58:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D19DA80CFA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Jul 2020 19:58:04 +0000 (UTC)
IronPort-SDR: Q0ogMy95jMw8n1WskhURypvpT0o06GFaaSvmgT9N7Ckzsvi770G6roqTRlkluGUd1ZpxBPFyL8
 qoezRdzBa5kA==
X-IronPort-AV: E=McAfee;i="6000,8403,9698"; a="149677615"
X-IronPort-AV: E=Sophos;i="5.75,419,1589266800"; d="scan'208";a="149677615"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2020 12:58:04 -0700
IronPort-SDR: 9x3K4sZh1SrNDiKPJuRp80NzHRKkQSgsrva+0+KAiqd3VsxuwQgpRP/oP09RLfZ7MueI9ueT48
 N/q8qVJktBlw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,419,1589266800"; d="scan'208";a="323336216"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by fmsmga002.fm.intel.com with ESMTP; 31 Jul 2020 12:58:04 -0700
Received: from fmsmsx604.amr.corp.intel.com (10.18.126.84) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 31 Jul 2020 12:58:03 -0700
Received: from fmsmsx106.amr.corp.intel.com (10.18.124.204) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 31 Jul 2020 12:58:03 -0700
Received: from FMSEDG002.ED.cps.intel.com (10.1.192.134) by
 FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 31 Jul 2020 12:58:03 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.103)
 by edgegateway.intel.com (192.55.55.69) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Fri, 31 Jul 2020 12:58:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=i7wkDxnZSqRzHJ1veQC2q3onb/drO7SV2PCTFrgOmk9u5lJYB7P3+a4Kwyr2x/8qp1xYtHybh4+LX+qs8fj3TvwkcB4ypQ2VxNRp5zQCoZuZM1Y54MPWhOwwRxdmcnWq0X44fbGYvMrbiY9Uw9O6BwuGjDjDmNKPJrYOrZMFDOhKA4VEVKcS5WdKav5i0MFeqeH7WzVnVa19J+1ehpoMz1JQKzVbdS7ltqv887K3+P+aHfcOQpKzeZcNG+/VpGq5fccSSHQ7MKLcqpSMxyeJHc5MVLfd0mSo08t1CeYAd62rjq5kSbI+EaKw0pg2UgPXseYCqHIptjBcxb+rxhYS0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=izd9I5pbljzuC0Gq5KZ/rS2lFIX5nee5Jo5aT6Kj/qs=;
 b=nDZ8T80jMNNpYxW6LRGEibiK70m5jM9L2xfTVM80DDu9W07WaYlzjRkrr/bKjsYSK1bUN3OGPbcFYTafgPQgfI6I1oLJAbxXhzajnZdLTPvOrxj1ALBADFuXe6YUfjbKu/CGCb8LOPZiSSa7bUK1Pt1BfiLSwWi7gqQbTfQVFe1gu2gkt5iX1//wCrQ3bLKjUxhp47JA8CzarwFjy3SJGI1por29A24NPjxhueVH8zntTo7i9FATgrzPs5TZ+/yOXMMPvyk7bW8N4RLieOJDSj8Sa4sF884K8GYTNCdCaWPGdIyQ2xNe7FdcUTPV7lOwmAR/LRNfWLdsh5roNMeBhQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=izd9I5pbljzuC0Gq5KZ/rS2lFIX5nee5Jo5aT6Kj/qs=;
 b=prUQF9Aj3rkF2H9Fb2x256mYLQxS8Gmgf6ICwpCJ7Pwat7CBBDL3jSnPatRIVTeVHMSi3d4X4m2IZ0rPZ2mQ4EJIoyvCbU/D5Yefl/vjN518cd/+0F0i76596UU3ih/MlcZDx3QJ+QrZegG/0jHrCb2fIFti+TD+lN5By6NPDvU=
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 (2603:10b6:405:51::10) by BN6PR11MB1329.namprd11.prod.outlook.com
 (2603:10b6:404:47::12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3216.23; Fri, 31 Jul
 2020 19:58:01 +0000
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3]) by BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3%9]) with mapi id 15.20.3216.034; Fri, 31 Jul 2020
 19:58:01 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S51 09/13] ice: Graceful error handling
 in HW table calloc failure
Thread-Index: AQHWZgfAD8IZ7ogOZkyT73XTZqIUqKkiHagQ
Date: Fri, 31 Jul 2020 19:58:01 +0000
Message-ID: <BN6PR1101MB2145BA3A9BC357CAA70C85948C4E0@BN6PR1101MB2145.namprd11.prod.outlook.com>
References: <20200730001922.52568-1-anthony.l.nguyen@intel.com>
 <20200730001922.52568-9-anthony.l.nguyen@intel.com>
In-Reply-To: <20200730001922.52568-9-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [71.59.183.208]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9a2252f5-01bb-4768-68cb-08d8358c07eb
x-ms-traffictypediagnostic: BN6PR11MB1329:
x-microsoft-antispam-prvs: <BN6PR11MB132952FA5C92C5D99AD4B9C78C4E0@BN6PR11MB1329.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4303;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: tCW1onpgpnkT9GrOR9pVWM4+h0ZV5h3ByEL2+BEMftCi4Qkig3qbGvZzDWFBQ2fT7GyvwBzMqN8JJcPdogUzbHV6OgxQLoJwys7FvksKP828O4cxzkumN2gtrWQBKLgKdJWNX8F7w4g5v1VRsJcxvI5bufQEV8p3AF5dIBgu71th2EHQlyWDqOWEh1yjmSmMGELzKxGP7trNodVjZmPxol5VdI1Uh679n5BCas8E4dpBKzVg0oX8QAdpqhmOo562NlbaapFNrlW/trDuGoxG+liuiPhYBNMmqdXRT/cLN9MqxkrBu7y8P9DVf6/yEDvo
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR1101MB2145.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(136003)(366004)(39860400002)(346002)(376002)(396003)(55016002)(83380400001)(478600001)(52536014)(86362001)(9686003)(5660300002)(64756008)(8676002)(26005)(33656002)(4744005)(71200400001)(316002)(53546011)(6506007)(8936002)(7696005)(186003)(6916009)(66946007)(76116006)(66556008)(66476007)(66446008)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: wPKmwQ/PytgTl2lCgChF9dFnZRaPBSOzy7V64lEIObSPml5s+7BaQH2P8UIGjSlQdQVIBXwdwpxGGTtUI+l6fZpIs6JLWR4EIPVQh2hFvK/xPYEo+Rrk7KmDdx0AqsXPktsZgrzym45/0rlsiICQjuV5bHlYZSOm7PNWq7xo5TqupaMONkaR4GHlk9cUpbRU2zBoyxCb3AiQVqdV8JEpIeX7WKBPYM6T98qAZpnfBEAQl68M+5AGGAFXwbOSOeOv2r9Z/niNpxGWE2UCQuN/UQCZ7wrGLia/dBjIinLKbE25tdXJfaEnCLtdOzHOS0PAYiGeATGkNmmKsTqAEth83TX/f9rVtHr538pb3XOYBjcFXqOLMQlQY7d+DBydkpLKy+Oxxj8+t1WMwRv4YfXFvYUtKsuHy33Kss2J39YghuzNU8JR5dE/WEoDXVI2vzuTN8WBmdFd5M9rN3ncRu/0eNLWoOQVlel1/0xRL461dhY=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN6PR1101MB2145.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9a2252f5-01bb-4768-68cb-08d8358c07eb
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jul 2020 19:58:01.5358 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3WYQLuysymfiLQtjBnUao7JfvNFqnZhPndy12lrXGNjaGmRwvgNjeoP0+kU5UfCeuCyZYCJ/jYFEFvft30HxTC2jxTxkJchpPuZVdWhMquI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1329
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S51 09/13] ice: Graceful error
 handling in HW table calloc failure
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
> Sent: Wednesday, July 29, 2020 5:19 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S51 09/13] ice: Graceful error handling in
> HW table calloc failure
> 
> From: Surabhi Boob <surabhi.boob@intel.com>
> 
> In the ice_init_hw_tbls, if the devm_kcalloc for es->written fails, catch that
> error and bail out gracefully, instead of continuing with a NULL pointer.
> 
> Fixes: 32d63fa1e9f3 ("ice: Initialize DDP package structures")
> Signed-off-by: Surabhi Boob <surabhi.boob@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_flex_pipe.c | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
