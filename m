Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A675D26E748
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Sep 2020 23:20:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5FB7187252;
	Thu, 17 Sep 2020 21:20:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QKMBBTkQ-sdE; Thu, 17 Sep 2020 21:20:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 28CE087268;
	Thu, 17 Sep 2020 21:20:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 77E4C1BF35E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Sep 2020 21:20:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 70A7087708
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Sep 2020 21:20:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lXqD6bAGWKuI for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Sep 2020 21:20:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E353587706
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Sep 2020 21:20:53 +0000 (UTC)
IronPort-SDR: vt61jkqc34dl2YjnvSEceIBPxxrPtzd5lw/4VlghMRFDk15MiGmZDXy5KswWtcItm6LPeZQisV
 zBcW4j1AK4SA==
X-IronPort-AV: E=McAfee;i="6000,8403,9747"; a="157182331"
X-IronPort-AV: E=Sophos;i="5.77,272,1596524400"; d="scan'208";a="157182331"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2020 14:20:52 -0700
IronPort-SDR: V6bNbl/R/Kzi4nJdZIXsqITzStWANphWwct/m+CEU84viGUwwIXok9wq2rmQs/GPqe1HtRX0A/
 aQZd7nGWlcYw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,272,1596524400"; d="scan'208";a="307625960"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga006.jf.intel.com with ESMTP; 17 Sep 2020 14:20:51 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 17 Sep 2020 14:09:16 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 17 Sep 2020 14:09:16 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.176)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Thu, 17 Sep 2020 14:09:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hfc05HQO0X1E4absgejhsT+/iGYlen/M3pngJ3Z6VPxcVfp+Qrp3xwNJmr+HROwrn8amP/H+vKyd7I0vaLpAha2BMeuZNhxNWF1Ed/7QmmYYN74HyiWrBr+Vzr6uqWrFVh5b3xLZ1loa/Dn4STATQ4+Nw5cVUa8rvNkVKw5AbkF+Q6Kob9qwkUdEL6X9YkoCgdi9VWrhcwFJ8YHfNCqQ6s+Sw5zJwDijSQ2fwVKS59boUxezRGOVbwit8rwJXKDgq+cLN7ESph8q59B9Dfn3rwr0o6EisxVXK7c3SiMBHvUli6KJjaRp7n6j72ZcSQf0jejYcXYy8g9KojgmKaicIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ijifg0Sd5htssKBRvvqQ3rQIShWR+QHSvSLRqbTDEMY=;
 b=lA+aHISr2LIw3vStNMNAGXXod7o5b/qKiI5P/r8Ta/ldJwwO/qvsx+eT1GDO9mUWBpm6wjoaaPQXeq3hoEf4XvFuLFh2AlpmEgqmH1O2wrshhe2E+1F9RPBl8SzI8NHY1laFQo4xI4B4SM0k3QrTpOSf5smVQRoGOKY7J7N8f38UiJGrLxY5lOGsNipwT8S11sVu2cBc88HxgnbdT7TBoRjPQyWZRYXPeh07h1hY72i0AMhw6P6PD24ag5SdMdmgV2WmF0oEDFU19OIRNOg+pqoT8w8mLSRNGwU8zbL3Pss4CBFE8v1aMnZn0SElmWKH7y9NnEk8qa8n6/RPbsLhIQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ijifg0Sd5htssKBRvvqQ3rQIShWR+QHSvSLRqbTDEMY=;
 b=vtNWhQ/CkQwLIhqrGzlPvX8iSon95NR4UoLtidZtzG1ZGYDd8WWbj5jwNJQf3fwuxnGjKGAuls2zJ4RSnKnY07C1t5GNc61Aeh90YNSrQMHsWq5KOLTsKvgHX6Kce3AsfGzZ4gWT0sdtpM9oi93jHwMeV43IJjEbh0KSpms64sA=
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SN6PR11MB2800.namprd11.prod.outlook.com (2603:10b6:805:5b::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3391.11; Thu, 17 Sep
 2020 21:09:11 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::7147:6b91:afe3:1579]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::7147:6b91:afe3:1579%3]) with mapi id 15.20.3370.019; Thu, 17 Sep 2020
 21:09:11 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "jhs@mojatatu.com" <jhs@mojatatu.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: i4oe/XXV710 suspect tx_dropped stats
Thread-Index: AQHWi2M9+X8hkmtRSk+2rwiRjP4GhqltVswA
Date: Thu, 17 Sep 2020 21:09:11 +0000
Message-ID: <55c3ab346c617027da96f5cc59410511ff94a092.camel@intel.com>
References: <81307012-3c76-51a9-95cb-2b14a7118467@mojatatu.com>
In-Reply-To: <81307012-3c76-51a9-95cb-2b14a7118467@mojatatu.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.28.5 (3.28.5-3.fc28) 
authentication-results: mojatatu.com; dkim=none (message not signed)
 header.d=none;mojatatu.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.204]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 290ca20d-f7c7-4d5c-16b9-08d85b4decb9
x-ms-traffictypediagnostic: SN6PR11MB2800:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SN6PR11MB28003EBAF4B825D5F9FD0FCAC63E0@SN6PR11MB2800.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ANMX5HoN46OpKCmrctqz6u7puHGi64vMTFqKH12CA7OzZNmp2lHrbZcHBn+iMNkK/9vJc2IJ19VCJ8/uSYt6kx35Ae0/Kz1SwQN/+ecTJYzp2poFLRlLby3s8XbFkJyuSUPgvR3dyR9q9ue2PgvTxsTnyq/shKFwUE7CDfEr5jyshm3VxS5it6bi4R7eL1/uFimQdhbFYGpnJ7kFEkh7GMepXqpbUfFK3cWu+4jjC+mH0KncrKDuBeUPzsDE5ARZJfXgRNXi+RZITNTyMqAhn+cVv1VpblbcH0DFd1BN2qLdYbGrEKJlb+6d2QlsLHAzGItSJcOa2WBJsRkkM3JhT+FP0bHUpkWh3pppYcjA7ZvnkjJsJKrbMY7WPwP1nLJax6X/T/XkLpqcCVn5eVKX3w==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(136003)(396003)(366004)(39860400002)(346002)(376002)(316002)(6506007)(8936002)(6486002)(478600001)(6512007)(26005)(186003)(2906002)(36756003)(5660300002)(2616005)(86362001)(558084003)(8676002)(4326008)(107886003)(66946007)(110136005)(66446008)(64756008)(66476007)(66556008)(71200400001)(54906003)(91956017)(76116006)(99106002)(32563001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: /UsiCPutNOoJEiPi2a7wxIaPF4gnS3DDULmhzuY8fNVzGTuPx84Zt/ur+B/2zMI8xaNslv3XLSvdWryLS0ffGbw5j04FPd0Jpn3/YmuafUiOG4qXZfgPOEwFrbJQXwgQQBxji7xf2XZNZJoDTcqMrMfZLqO922gs4qvQX9nTXjxvXpYPL3gm1tf3gpoLPslgNA+0gZnNBVvLRHZKLe2a+ydNAkDDeca8DBRBt+25vsBXTiklpzUBW/1l38R+CCI9slFFnnuG7HSYw8Mz5Fh/pTAqr3LuLvXlorKoz9isnx+KA3j+IwXt2f5phwUBxZYUtEFA56TvQmvrgN+PQeD/PQqOXf9UsN1+9DShN9lgWqOnPreBYn5fQYjoMGP9D3PTDumGxfvWvwDUpt4yKttdBxqk+5sf1q+3P4yzv4CBXRQZZxb/6qN0QtZ+CTv/r1MASmtbDJwswrlk/t3JrXWos72utGyVUkqnrCLU8F43iaEONGQ2IB5BLLhkYDaGHrhEWhXrOA9ibqUYd8ZvvWW9BVey1nDFHtDPx9P0gxQxk1ao2TXAdS5cjb8A3UB2bY0L9LTPt8AJb8KESrwzS4t28uFloxHyRVQyL9LJHUivq7JrF22FXdp52Pn11n+jqQ4sKUsMRu3fUC95I322hfYwIQ==
Content-ID: <70DEB1C6624A524CA47E226F8AE06F9A@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 290ca20d-f7c7-4d5c-16b9-08d85b4decb9
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Sep 2020 21:09:11.1319 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mPvoKJaeMn+zGFrTmwuuIa5pFsB6j1psK8/4M//v8QPHEvQhurnT1YFsRdDWir40V0PftVjODWtULsDQi/65blTDrPiEd+Fh8InGQn/55NU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB2800
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] i4oe/XXV710 suspect tx_dropped stats
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
Cc: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, 2020-09-15 at 09:22 -0400, Jamal Hadi Salim wrote:
> Ethtool reporting zero. ip -s reporting non-zero.
> Which is right? See attached for more details.
> 
I've asked the team responsible for the driver to look into this issue.
I will let you know what I hear back.

Thanks,
Tony
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
