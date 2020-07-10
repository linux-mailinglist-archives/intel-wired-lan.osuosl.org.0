Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A2D721BF33
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Jul 2020 23:29:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B840189E91;
	Fri, 10 Jul 2020 21:29:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CplBethIj2k1; Fri, 10 Jul 2020 21:29:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 39BDF89E8D;
	Fri, 10 Jul 2020 21:29:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 56E621BF3ED
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jul 2020 21:29:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 513AD8491C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jul 2020 21:29:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wr+9MFkiNCGW for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Jul 2020 21:29:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A942689C12
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jul 2020 21:29:04 +0000 (UTC)
IronPort-SDR: txGrMOTubTC4xYbVzrzXpKY7TRKxB/KjT33MF9u/Mc8zE8OoRdVfYQOvof2yQEvDQBJEpLCPlw
 iAvTmtrjK/Hg==
X-IronPort-AV: E=McAfee;i="6000,8403,9678"; a="135772083"
X-IronPort-AV: E=Sophos;i="5.75,336,1589266800"; d="scan'208";a="135772083"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2020 14:29:04 -0700
IronPort-SDR: P6SAQZsv+4Jc/bImeHC4R7NIfKLrpFRfINJ2pDkorczl1rKdlXN985sWuIUyuvQDbnMpFbe7q1
 jhJvs4+uHfrA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,336,1589266800"; d="scan'208";a="284628600"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
 by orsmga006.jf.intel.com with ESMTP; 10 Jul 2020 14:29:03 -0700
Received: from FMSEDG001.ED.cps.intel.com (10.1.192.133) by
 FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 10 Jul 2020 14:29:03 -0700
Received: from NAM02-BL2-obe.outbound.protection.outlook.com (104.47.38.58) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (TLS) id 14.3.439.0; Fri, 10 Jul 2020 14:29:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SdnPCE5IlkRGLBqAEg3JYtI/ZMYxd1BGy3K5JUA+Zh+gKEPb8M2HHGg2Nl5KFIfxhWB5zpZFla3zI1+fMw54idAuxGRRFUEQTj+EUJOpjBB1zmLAoOfnLOCiF4GJomIFJg7OqEx9PCpQJg9KVD5FZeQ0SAwE+q1Q66T+mVdkVamkkGNDwBcqGf9GEPkZnZuOFUKpdm1IUKFqRLrUVArNObUaA/l4A9oJEbfsWdSWOMVGbQdCGkFuPg9NwoexjXsL3TxMbYT+v+n91xfu6uyxSbjKCyqFoZvPjOnTOk1mvdY3KdQ8FF6ZE0mA6hODn8qUKTdDIePUDXwlhx0o6hRwDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YS/S+oD7BUXsxkerOZSZCcvqWW9EDum1zQANxKSff7w=;
 b=Vjm8VdWppGJCK7w7GNBbYbJtBx/2TOwO313nafRguepSn44FzzA0oH0EhRzAZ9QgmU39a2EwapBdNqXGDR2w5KvndRDDl4KR5uEzt7TJPjXmWNOsZSHPA39X1eep91EdLCSXkHEk4ql59oBe7osczmCG4BWnG7NZNvrOkOfe6Da7E5bK2O5RtxiJa22ZYjY6lWpjuAwph+P9f4TM+RpGjvnNFK9sQNOJzvgz87fuibfnpF1hMbnK2mfpWcTk4gGv3wWalgM5WExRhZAT8HvSrrJjkB6NsLXK5ExoimLaPowrjUJ5DXAka1glQwA/lp6EGzjLPpDAa810BVgT+tvBQg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YS/S+oD7BUXsxkerOZSZCcvqWW9EDum1zQANxKSff7w=;
 b=vA3BEf655Eclmc9JtljEyZOabwB9j1hfbdoXZBl920VNGjrAncgO6n78qst5IgfeXzlQ/+mxI52A8/2qVJ1eXXXxVNRQUr6NCO5fE0+l4aWUMyx7ww/OdouvZMQNgu1gZv+D3Nwu7KcyZCgH+WlNL0W/Qj/dyJjvstezkAGEf/Q=
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 (2603:10b6:405:51::10) by BN8PR11MB3699.namprd11.prod.outlook.com
 (2603:10b6:408:83::16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3174.23; Fri, 10 Jul
 2020 21:29:01 +0000
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3]) by BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3%9]) with mapi id 15.20.3174.022; Fri, 10 Jul 2020
 21:29:01 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S48 v5 12/16] ice: Add new actions
 support for VF FDIR
Thread-Index: AQHWVlX0R+4eKF+t2UiBKebmxPFuDqkBVX/w
Date: Fri, 10 Jul 2020 21:29:01 +0000
Message-ID: <BN6PR1101MB2145393440A943943790D95E8C650@BN6PR1101MB2145.namprd11.prod.outlook.com>
References: <20200710010644.33817-1-qi.z.zhang@intel.com>
 <20200710010644.33817-13-qi.z.zhang@intel.com>
In-Reply-To: <20200710010644.33817-13-qi.z.zhang@intel.com>
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
x-ms-office365-filtering-correlation-id: 0ccc3c21-3451-4047-cd4b-08d8251843ad
x-ms-traffictypediagnostic: BN8PR11MB3699:
x-microsoft-antispam-prvs: <BN8PR11MB3699AB94BCC24132054E03698C650@BN8PR11MB3699.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ZZ1pCqqOOAZ0ytD9PeDiSm418e7GtRvSYLg27a/y3S/sUhq8G41KZhUKckWD5agsXhUiz/asoSW6NVWFuCtEihKFT9mPe5OSkighkN99ZSDL1UQklYBZkcLoEXXN2kT9NkASM6wuBYbJUqDzJp66OHMAQq4FBUw7FscNivQWsTHupPRM2Un0ni1QfVHEdt7hE8m+quvhvsWmI0wRXD4FfPk9LFfNRqD+NQsOalL6OmOfiA1RNNsvJxoniLb7BalHMKuLgxxiy2vZ5u57TsOIKj92ohXXAjtwNKnbRNN2JEW8BYyyWYWOebCmebhhDqwm
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR1101MB2145.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(39860400002)(376002)(396003)(346002)(136003)(366004)(316002)(66446008)(64756008)(66556008)(66476007)(71200400001)(76116006)(66946007)(2906002)(83380400001)(9686003)(7696005)(33656002)(86362001)(478600001)(53546011)(26005)(55016002)(5660300002)(52536014)(6916009)(8936002)(6506007)(4744005)(8676002)(186003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: 71TB71u3fcjMraS9KE+mAzwjYVOHTrEbwqSS6kSb7h0SQhu8NClvi/RsGeYKf2mD6VCfcJrsq6ld1RjWae8T7yqD0VOb8yk8MjfiMoCAgielBxo1BGfvxMQFELzNBYQW+KcZXfwAfjDvs6A2b5JgjBY35mywTizJ9XXJxtr+nkZbW2b/5dEOf+nn60ZfYtPMQQ4lSusq22AG1RbMtfLbuPVPAARgHRHlSgDJCcJkXKV3zuICVu9uQhxw82+iFPcZpPesdPpXCmjxwRCylKBSM8Wnwcuy4MB6vBPWeLpiJSJsCDplCKiBs5gH6TEc3359dTdbd7uepay8fV0qeqz1WKN8KiO3tw31u0xyYBWUzWfJZCBxiOVNPXvOtaTYHuIYZSxc8I7kbjav25HhmQILefSuov+xaTWhiWmCUi7qVn/WqsPrIz8PU0jaq1QR60sVzAGc8zcq/aYiAMR9yk6a3xYS+O2XH6uxqVGZ2yPuRuHw8SKK6jnIG8NIwU+EeJKg
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN6PR1101MB2145.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0ccc3c21-3451-4047-cd4b-08d8251843ad
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jul 2020 21:29:01.5692 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ygLALQedtr/h0nwzqiKdZBa8OdkXlpHlRAVXwqG8Fx79hrfmMmuNcEjj5GaJ4Jn7FumL2JWpB8Ynp2BWFZlaYIUD2disvnUGhYdzwdkENiY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR11MB3699
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S48 v5 12/16] ice: Add new actions
 support for VF FDIR
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Qi
> Zhang
> Sent: Thursday, July 9, 2020 6:07 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Zhang, Qi Z <qi.z.zhang@intel.com>
> Subject: [Intel-wired-lan] [PATCH S48 v5 12/16] ice: Add new actions support
> for VF FDIR
> 
> Add two new actions support for VF FDIR:
> 
> A passthrough action does not specify the destination queue, but just allow
> the packet go to next pipeline stage, a typical use cases is combined with a
> software mark (FDID) action.
> 
> Allow specify a 2^n continuous queues as the destination of a FDIR rule.
> Packet distribution is based on current RSS configure.
> 
> Signed-off-by: Yahui Cao <yahui.cao@intel.com>
> Signed-off-by: Qi Zhang <qi.z.zhang@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_fdir.c          | 12 +++++++++++-
>  drivers/net/ethernet/intel/ice/ice_fdir.h          |  4 ++++
>  drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c | 10 ++++++++++
>  include/linux/avf/virtchnl.h                       |  2 ++
>  4 files changed, 27 insertions(+), 1 deletion(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
