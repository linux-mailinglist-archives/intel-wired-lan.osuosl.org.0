Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0072253ABB
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 Aug 2020 01:48:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id CE9D588400;
	Wed, 26 Aug 2020 23:48:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id U1zmamAVxWr2; Wed, 26 Aug 2020 23:48:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 47A05883F8;
	Wed, 26 Aug 2020 23:48:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B1CA81BF5F6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Aug 2020 23:48:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id AAB64883F8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Aug 2020 23:48:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vhv+ea-66q0B for <intel-wired-lan@lists.osuosl.org>;
 Wed, 26 Aug 2020 23:48:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D0BDD88400
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Aug 2020 23:48:19 +0000 (UTC)
IronPort-SDR: S2+pPzqb+Tny5EsmKnA2vSCXEnBUhjNr4vx1HdAPC/sz2XMmvG3Dgln3NIFnVkOQdCjZIeFXuW
 AOqk5dLUahnw==
X-IronPort-AV: E=McAfee;i="6000,8403,9725"; a="174450453"
X-IronPort-AV: E=Sophos;i="5.76,357,1592895600"; d="scan'208";a="174450453"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2020 16:48:18 -0700
IronPort-SDR: ZgZCWs0adWyR7NkkWxkUnfxQYMoU4+7eGXbvGvOZP1+pcsar+rCZHkpIzuo5oG8Ly1lDY8wWUo
 3redxFdTEdkA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,357,1592895600"; d="scan'208";a="323389527"
Received: from orsmsx601-2.jf.intel.com (HELO ORSMSX601.amr.corp.intel.com)
 ([10.22.229.81])
 by fmsmga004.fm.intel.com with ESMTP; 26 Aug 2020 16:48:18 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 26 Aug 2020 16:48:07 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 26 Aug 2020 16:48:07 -0700
Received: from NAM04-BN3-obe.outbound.protection.outlook.com (104.47.46.54) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Wed, 26 Aug 2020 16:48:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LLMViu5e8zyMaU0fUpeUU93yZIpYURYYQKtNij9Nt4Y7zTtahn0V6ShuT2oLiNDjfBR2Ay8wS+d2P2ZY/OJLAPL4NEWN39cVny7NwhWWHqJqAZB+PlMnNnAVYFngivz0XwZZEVgllKOqvndCiUUF15ahlDNMO8GevplGiDrCU+pBFDb0h2Rr7KWZuxmFA5EdUQYkvdYncpoEBulCQQiWV56LN8A7g7/3xX+1w5bceglBneFT//lVo9sODBkAODm/tH1LLQtP3EyHmmhfW84Daft0hbHZyvnydRjqdrr8KtnVN0wZPMQ5N4MYCxwxQ7oRBj8uxUhSOZo9BPnMqkTFjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=02ua2DPyoPe/8V2z5I+AEkBi1Kt7CUNzKjpcbjQnO5w=;
 b=QEVSl+rCT44eVErT394XAc7avO3iBX3TzAMHFZH2hcDDZZ5UIu6eLW3fx1YRk2A7OQYBDJUXDMLvuQs8yB8rqrQ9gj/u98/os0olgJJI3oKq1OjmA63aj2ZmVTDypdRgrctUaY2kmd1EgY50DKAv/UoA6jC/TXfHT6KDbhm07SqRP8OW0wMXdYGqwwAp6Bp3JwvOu/zgTI4W/vOnwXldy5eUOqnv2/S4BsZ4Z2OpTEZxkPRoiY858FBGxqq+1HbOy9qzsOaswaAcDMuHERjmHhC6NdsOvKS5jp4fWrNhFn8Uh+J6nwweTA8l9KYrnbf8+TsNq+PaWHjGGFykTILjlw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=02ua2DPyoPe/8V2z5I+AEkBi1Kt7CUNzKjpcbjQnO5w=;
 b=x0kaKEZ8sdCQZv4r2qsF/XZdwVDrBrAUzlfQa8fnkipi4ihwhfx31jdqdoEVZVd9NFZzpTwisssQ63a/t6hktM8saTb0Tm4J2qGCr6AiMq/KqERn+MgmlZVGyrLnsdkife3OeZlrdAqaevz/BjE5kzPEDt7677LAZVbMOifjp7E=
Received: from DM6PR11MB2890.namprd11.prod.outlook.com (2603:10b6:5:63::20) by
 DM5PR1101MB2073.namprd11.prod.outlook.com (2603:10b6:4:52::21) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3305.26; Wed, 26 Aug 2020 23:48:05 +0000
Received: from DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::25c4:e65e:4d75:f45f]) by DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::25c4:e65e:4d75:f45f%7]) with mapi id 15.20.3305.031; Wed, 26 Aug 2020
 23:48:05 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v3] ice: remove repeated words
Thread-Index: AQHWdaoZQXZzAXYu+0iXqH5pHJhBValLGziQ
Date: Wed, 26 Aug 2020 23:48:05 +0000
Message-ID: <DM6PR11MB2890BEE1E4C99C6EAD674F0ABC540@DM6PR11MB2890.namprd11.prod.outlook.com>
References: <20200818214900.35776-1-anthony.l.nguyen@intel.com>
In-Reply-To: <20200818214900.35776-1-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [97.120.215.99]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 33ed8441-2e86-4b3a-bfb3-08d84a1a7a96
x-ms-traffictypediagnostic: DM5PR1101MB2073:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR1101MB20738D90A20F520D286D5B8ABC540@DM5PR1101MB2073.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:792;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: a6ih2vM06uuWKGaSmgh1rL6OvYQNPb0kn5EFMUXBPm4w8+qgVw6MCRTE4RO0bgGfXHal4x3paWjizVcTyTB7RkWrfDxdbfmM8IOPQLfBHOORv+V/LO9SSep90LJNHEuvKpbnFpgV5OBfI9GXPvcvJ8R4dWCxuT5ZH9h5d7U7zPTDeISUO6PIdW3TWfjwg5CC8F0svbj9ohPX3eh7iPZobTmrMfM4hgM50OVE7JURWGN/48h3a9fgxFPfHIOZm8YJ1ZmQyu82eDj1bbkHqo6GgB15jiOxH5OdEwowSstnmSWhJWQl4SI3YkeV8HtSZ72P
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(396003)(366004)(136003)(376002)(39860400002)(346002)(86362001)(66476007)(66556008)(64756008)(7696005)(71200400001)(33656002)(53546011)(83380400001)(316002)(26005)(186003)(66446008)(110136005)(6506007)(76116006)(8676002)(9686003)(5660300002)(478600001)(2906002)(8936002)(55016002)(4744005)(52536014)(66946007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: qt0SICimlGcVGN44fJwA4+b3CtSi7bR/sZpGKdN7v+V3cQROiakvkLsvEPMj91NWk25LQVbViicMKya/SajdUNSfcNROWrkeOQewiv4J2mqvSum872bSnE74QKk3i3Wzb53Co5POsTKDV5QFdG9NnwB4nTHE4fRKw0bziJ9E0mOcyUau2AVI/qQoOnv7InGxZE8a2zOQ/JsmhxEiqOuiMMZU1BFgi4DP0ag9jomWibDvkjz2Jn6s1OGLp/FB03oNKskhOksYqrXQ6lbGk8n8j0zQes8EOF5Em47H9YH9UIvEzTPvKYaeosYbQ5Bmwmuge6hH+qWZjLhp5z+I8q9+W5lKpaeLkfvl7Q1KlDtQi4jswsrgPJNEvH9JbQAt1ueMUtiE/+ugWlTPeHcEiZ/rSHkNRp2FUJ+OmzeoRRunF1A8iOIKiosWb6wfGO2qIYfTOL8jF4OKdIP4+QFOGI0OmIDiDj7w2G5OPQOIsWXodw+Wz0tmpk+X3lhubNLx+I24TTZfjYurU44uSR0khyAgO4YpKGlU07eMfuKnNMLVhgbiujk6SYLp6v6GChQqbSbPlX9DnOn66p0CMFPCsPqcohhPZCzc2mWEfD8krFYxlhXU3xqsjjhxdjlazN0Xmpo0FD3nekVocpMhrybytubGOg==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2890.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 33ed8441-2e86-4b3a-bfb3-08d84a1a7a96
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Aug 2020 23:48:05.8530 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ocK38uhmZ4uUrwwgqsIHPQpOqhGzvXtDCoL9Fkj3J5v7eqYCPQTWG11x3N2kN6q2dTs5B0TZyM4IuTkmINmQ0Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR1101MB2073
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v3] ice: remove repeated words
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

> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Tony
> Nguyen
> Sent: Tuesday, August 18, 2020 2:49 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH v3] ice: remove repeated words
> 
> From: Bruce Allan <bruce.w.allan@intel.com>
> 
> A new test in checkpatch detects repeated words; cleanup all pre-existing
> occurrences of those now.
> 
> Signed-off-by: Bruce Allan <bruce.w.allan@intel.com>
> Co-developed-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
> v3:
> - Resolve checkpatch warning on ordering of Co-developed-by and Signed-off-
> by
> v2:
> - Add Co-developed-by
> ---
>  drivers/net/ethernet/intel/ice/ice_flex_pipe.c   | 2 +-
>  drivers/net/ethernet/intel/ice/ice_flow.c        | 4 ++--
>  drivers/net/ethernet/intel/ice/ice_main.c        | 2 +-
>  drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c | 2 +-
>  4 files changed, 5 insertions(+), 5 deletions(-)
> 
Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
