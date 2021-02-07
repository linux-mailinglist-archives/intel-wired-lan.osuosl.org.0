Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 928AE3120DF
	for <lists+intel-wired-lan@lfdr.de>; Sun,  7 Feb 2021 03:24:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4B69F86A16;
	Sun,  7 Feb 2021 02:24:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0VQIEHP1dZjy; Sun,  7 Feb 2021 02:24:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id AEC2486A0B;
	Sun,  7 Feb 2021 02:24:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 44A971BF47A
 for <intel-wired-lan@lists.osuosl.org>; Sun,  7 Feb 2021 02:24:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 3B7DF871ED
 for <intel-wired-lan@lists.osuosl.org>; Sun,  7 Feb 2021 02:24:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4FJw4cW9dYSV for <intel-wired-lan@lists.osuosl.org>;
 Sun,  7 Feb 2021 02:24:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A4402871E3
 for <intel-wired-lan@lists.osuosl.org>; Sun,  7 Feb 2021 02:24:45 +0000 (UTC)
IronPort-SDR: vwvc3Q+ZZGTHo6IVhwK7HBW+Wn0tC7NbIG7lCckci75sTp+zm2SN3rIgMK6hNarPSX8j08aQjD
 o+qj8lFOfBZg==
X-IronPort-AV: E=McAfee;i="6000,8403,9887"; a="168701519"
X-IronPort-AV: E=Sophos;i="5.81,158,1610438400"; d="scan'208";a="168701519"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2021 18:24:44 -0800
IronPort-SDR: WihjioeVagCpueqMM3NhL+XYVaIFSvK86KNAsznQmjbMR6/1g9D/on368hH9cJUsLOUM+eAinL
 zNB5hNSAw+RA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,158,1610438400"; d="scan'208";a="410229519"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by fmsmga004.fm.intel.com with ESMTP; 06 Feb 2021 18:24:44 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Sat, 6 Feb 2021 18:24:44 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Sat, 6 Feb 2021 18:24:43 -0800
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2106.002;
 Sat, 6 Feb 2021 18:24:43 -0800
From: "Brandeburg, Jesse" <jesse.brandeburg@intel.com>
To: "dan@coverfire.com" <dan@coverfire.com>
Thread-Topic: [Intel-wired-lan] 710/i40e, RSS and 802.1ad (double vlan)
Thread-Index: AQHW/D2D+EDy7QYzvEOs+Az41mNavapL+E9r
Date: Sun, 7 Feb 2021 02:24:43 +0000
Message-ID: <AB117487-C2C3-47EF-A3C4-FDCED9304282@intel.com>
References: <fc55ca6fb012c9e36e53d2ab80d47894c38e85a8.camel@coverfire.com>
In-Reply-To: <fc55ca6fb012c9e36e53d2ab80d47894c38e85a8.camel@coverfire.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] 710/i40e, RSS and 802.1ad (double vlan)
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

DQo+IE9uIEZlYiA1LCAyMDIxLCBhdCA4OjA2IFBNLCBkYW5AY292ZXJmaXJlLmNvbSB3cm90ZToN
Cj4gDQo+IO+7v1doZW4gcmVjZWl2aW5nIDgwMi4xYWQgdHJhZmZpYywgdGhlIDcxMCBwdXRzIGl0
IGFsbCBvbiBvbmUgcXVldWUgYnkNCj4gZGVmYXVsdCB3aGljaCBsaW1pdHMgdGhlIHNjYWxhYmls
aXR5Lg0KPiANCj4gVGhlIHVzZSBjYXNlIEkgY2FyZSBhYm91dCBpcyBzaW1wbHkgc2tpcHBpbmcg
Ym90aCBWTEFOIGhlYWRlcnMgdG8gZ2V0DQo+IHRoZSA1LXR1cGxlIGFuZCBzZWxlY3QgdGhlIFJT
UyBxdWV1ZSBiYXNlZCBvbiB0aGF0Lg0KPiANCj4gSSd2ZSB0cmllZCB0byBmaW5kIGEgd2F5IHRv
IGRvIHRoaXMgYnV0IGhhdmUgZmFpbGVkLg0KPiANCj4gQ2FuIHRoZSBoYXJkd2FyZSBkbyB0aGlz
PyBXb3VsZCBhIEREUCBwYWNrYWdlIGJlIGFibGUgdG8gZG8gdGhpcz8NCg0KSGkgRGFuLCBJIGFt
IGFza2luZyBhcm91bmQgdG8gc2VlIHdoYXQgd2UgY2FuIGRvLCB3aWxsIGdldCBiYWNrIHRvIHlv
dSBpbiB0aGUgY29taW5nIHdlZWsuIA0KDQotLQ0KSmVzc2UgQnJhbmRlYnVyZw0KDQpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4g
bWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1
b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
