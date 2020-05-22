Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A9AB1DF057
	for <lists+intel-wired-lan@lfdr.de>; Fri, 22 May 2020 22:06:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 354B9884A1;
	Fri, 22 May 2020 20:06:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NWpEHRcZpUST; Fri, 22 May 2020 20:06:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 849D9885DF;
	Fri, 22 May 2020 20:06:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 122041BF2A0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 May 2020 20:06:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 0D4B3885DE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 May 2020 20:06:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xugzlVvAfz0G for <intel-wired-lan@lists.osuosl.org>;
 Fri, 22 May 2020 20:06:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 24990884A1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 May 2020 20:06:39 +0000 (UTC)
IronPort-SDR: P1rJqFQRrxTXEsWdcRCsul9EjUaZINof6n27Eoim7zHw2A4I3+6K2obMocQvjrOIYJwUoIJfbL
 UPFTiB2kGrHw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2020 13:06:38 -0700
IronPort-SDR: 7GNBw5Nxdm+8SDBh8ZgxQiV0gbQJzvFwvMeNWTMrlAA6UnkP43Q9uNcS8P+Br4743uygejzHFw
 8AsoysiDmfxg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,422,1583222400"; d="scan'208";a="300772559"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by fmsmga002.fm.intel.com with ESMTP; 22 May 2020 13:06:38 -0700
Received: from fmsmsx605.amr.corp.intel.com (10.18.126.85) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 22 May 2020 13:06:37 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 22 May 2020 13:06:37 -0700
Received: from FMSEDG001.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 22 May 2020 13:06:37 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Fri, 22 May 2020 13:06:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Q4Sr8DL/Z6+IKiQ3WeS9DElp0lz3cCs8oS3QMb6yyRZTfKOVDvPeQhyEUl2mDdXUoPQScHKHwyBW8M4npGYixQKlfsBKNRrHtkgSiaazh1EhASBUsU7ZX16itv+rSAq79EzaTnkYVdlDJgbugohRbjRe6aFqwYsM8D5yE9ExqUDK1vEWEAcBIigw5dijU0alHIYfILjZBzODds9uq1rjyDE/YHn7WVTNKbpNPzNkz7KEFg1bPUn8mDN6rmcpyfm/A5kjTDi7K5ZVy7dgMY1cTRALFRHaiXctx/VCkx0YblSpTzG7v248fMk+mrTo1eSvJjtkPnIT1Na0yCE6rcWPag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oAJwWdcq1tUAyGWGAlAMHQLc2DPnuTOyz5upve7B2+c=;
 b=fz4JpLd63pkVODSeoiES9TXDJjRprLtAfSvKWCUTtbKXBPGMYVRnimWxobKqYRc9HNXeCbnBtEjrv+HxMt7E5g8kFrK2y4KC+7NF2Y4dSFlJKHH6a8xCJMHRKnVJ09mC9tchmZ8Z1/0krrb4z6qPnPZ39BZoJ8ZD9+rCgcepqyxh8oLbjnNECTD1EpyRJjQltZ4H1R7TiKtKlJtQKWBdMjnWmK2gAYjbJB0rjqfpbYX2qVDKWtQyPsl5GoGFXSohwxdF9FTkL1xx9VLW8Sp/ofU5ulV1jbJSmPEEOsE8y84jhs6v5Mxu44jHZ5UO132jXbShCHLQJEmzp3weeMJWXw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oAJwWdcq1tUAyGWGAlAMHQLc2DPnuTOyz5upve7B2+c=;
 b=gWq2x/dUbDcsM7r4kaEtLiahlX8Xa9AV7/69dtGvh2NoerEZaSHF0raPOT4hJMxfQjMCUKm7OyfVbBfX+J3dHPP2bqr94GYc5y7+S41a8BjX14G2gn7sat9mahsPspu7A1rZnfDXtW73bSq/kZ7+4J86TSNTECxWFL1M5QSwUdg=
Received: from DM5PR11MB1659.namprd11.prod.outlook.com (2603:10b6:4:6::20) by
 DM5PR11MB1242.namprd11.prod.outlook.com (2603:10b6:3:14::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3021.27; Fri, 22 May 2020 20:06:35 +0000
Received: from DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66]) by DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66%9]) with mapi id 15.20.3021.027; Fri, 22 May 2020
 20:06:35 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S43 10/15] ice: remove unused macro
Thread-Index: AQHWKxqFWzra2CB4mE+JCBXkyKBd5ai0krTg
Date: Fri, 22 May 2020 20:06:35 +0000
Message-ID: <DM5PR11MB1659A2D4F161340A0EE092328CB40@DM5PR11MB1659.namprd11.prod.outlook.com>
References: <20200516003644.4658-1-anthony.l.nguyen@intel.com>
 <20200516003644.4658-10-anthony.l.nguyen@intel.com>
In-Reply-To: <20200516003644.4658-10-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.2.0.6
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [192.55.52.201]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 51bd2ee8-58cb-4d74-7ff6-08d7fe8ba141
x-ms-traffictypediagnostic: DM5PR11MB1242:
x-microsoft-antispam-prvs: <DM5PR11MB1242917BF5B6D7EB7BADCBD38CB40@DM5PR11MB1242.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:590;
x-forefront-prvs: 04111BAC64
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: YlgPgOb85LIzThMt/0Ac7oyEie+i93sW9bKhYvpAd9t2zgkPuJfQcJPG2yndN5lLX/57yYNmuHETgyEcRZd11TJm+745C1qo+3T1GTm6SpW1T92RFGGf2OMAYabwgb/9ThfKcCrh4qEmT6CXKs4VDbMYcDsoDe+6ZxCFmUC2p9rHG6YKPe2caNUSqgLNcCYLOtu1IFMUgD76FVSjXG/Lq98rWTICslYdUsC+l9YaO+tTnaDmdzXOshkev1CtboiLcNXKQ1l5sTM3odOJJUND9IAReQuabHTC5iZLagsZfVCt8nobicIZZHrp+WEF07OL
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1659.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(346002)(396003)(136003)(366004)(39860400002)(376002)(7696005)(71200400001)(8676002)(64756008)(66476007)(66556008)(6916009)(53546011)(86362001)(66946007)(66446008)(52536014)(5660300002)(186003)(76116006)(2906002)(6506007)(26005)(478600001)(4744005)(316002)(9686003)(33656002)(8936002)(55016002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: jwCMVblCf88pZaxCGEFRzV6YBbovf/NTl9eze4S/wJqTQLT6ftQJCWPJyHmp9YiM0DtT2gUKt8Kbvw8GrOUbZZMcyPnmdm0/5mSpsZKrCNALq6/xje820jGOIqqKMM+10orsnsyNzB//uN2USmrMP4WK3w/BUWz1r3BK9hM3w7R3nGFahJO0zjufVUeXReSH7MfMO2dWtJN1XCQjfLQEk2p20BtBLqtUZ/vLAMj6gy6b7y7e1s1omxAhsGCrMdbUK8noXTqV3L6Ibj+EJdWPwAupjto0qr7hpejwQG1dlZ1PzSTbNPk/Wfi0z7ZSIGZGeUwu2FlW4+dNHChwoBc/GelKO9mkNFbrSB0Lh+L9HXxD6Jo/apNxX5seV9ce2fq4O69qBqhBcPABIewAipm8+hWMJHHRBcn1CgYRplXlz4IfWKzBz7uTHY9/SRi2S/p1zrrs4pJtP5ScyvFq3iZMAOkfshg/3gJMVD55wn5nlUk=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 51bd2ee8-58cb-4d74-7ff6-08d7fe8ba141
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 May 2020 20:06:35.4688 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LcOYqmgVT6zD8LIbp9bIWHfaNIvLJENwXrcXWFH+REnUWVfbJI9CSbNI/usi/4M4j0p2TLmywcQnRaWjGLIc7vSU2lxk6edqL4FlCOGm2qQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1242
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S43 10/15] ice: remove unused macro
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
> Sent: Friday, May 15, 2020 5:37 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S43 10/15] ice: remove unused macro
> 
> From: Jesse Brandeburg <jesse.brandeburg@intel.com>
> 
> The driver had an unused define that can be removed.  Found by compiler -
> Werror=unused-macros check.
> 
> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_dcb_nl.c | 2 --
>  1 file changed, 2 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
