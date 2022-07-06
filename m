Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F02C56866E
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Jul 2022 13:09:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1E4B183E1D;
	Wed,  6 Jul 2022 11:09:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1E4B183E1D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1657105780;
	bh=xnjVMmZH5v/APmJdZyfImjRaEmvoyYaLbVdiKketbAE=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=3Ja7mxQlN79xNpUMKrHdXzjxjAlxavvEElGM02wTKUgCZSmRNfmo9KsMtOqpCFuIM
	 +3ThdRw7oI2BTfVGyCff7LQT5NskviB5o6fzT6zy0i9rXwNAy3kXVaRkpm8S+d2ZMR
	 HAg8UtRPfR2QyDissOImcOo2XPMGUk0r19jxDuK9gvRoz/v4QOpFQ2YaT8DW6T9CbN
	 +8lRZchMYEe3O8bdghQ9BVaU26D92XWuZ4r0HEjRIu8510XTcgbNP2xZNBUCrAykdO
	 GanVmCH/Fb959xW4PaYhCnibuiPJq7uzQF0G/vtpHiQ7WsDPa97Qx0pX4UQ1vzY5yO
	 0TF8wrcbm0a/A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QKIhWfpXZzda; Wed,  6 Jul 2022 11:09:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0B756833C6;
	Wed,  6 Jul 2022 11:09:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0B756833C6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C4A2A1BF44C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Jul 2022 11:09:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9CD0860D53
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Jul 2022 11:09:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9CD0860D53
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Hb_Mlth9nczi for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 Jul 2022 11:09:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C488460BC1
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C488460BC1
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Jul 2022 11:09:32 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10399"; a="309266035"
X-IronPort-AV: E=Sophos;i="5.92,249,1650956400"; d="scan'208";a="309266035"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2022 04:09:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,249,1650956400"; d="scan'208";a="625854019"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by orsmga001.jf.intel.com with ESMTP; 06 Jul 2022 04:09:28 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 6 Jul 2022 04:09:28 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 6 Jul 2022 04:09:27 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Wed, 6 Jul 2022 04:09:27 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.108)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Wed, 6 Jul 2022 04:09:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jnraoOOLZoD3rYpWRqVj7dUQgMbQdAOA1CGM4YLvygtSAcflT2z1rDMQfNH0Ad7dWuqo6p4OsGqJhocAlCMBN0Gc5Es2+3H6LCYD4E1h7pa9SwejePKdOusDS3xrugi/mqPBwHmEwAePrQDqoqx66tlPwQBIxJE3SjtVWdBog2VH8ulejZ1DgnCnfLrGBEq9+nAIHsjgxu4d2ZSMS1qdjU+GgtulrECaM/lkPb56vsuQlu7qk/Ib7wUfjs90j24AFMGehCVFE81cvD8TpuEfR9yIiLSOvyDbM79RDw/gwHPkNpGGGKOcIu12gII4UBDLUbWIvuVafLC0cj3FJZ7PcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ABbO51XGi+qcSfk8od9q5i59vI3uEXw9pRWtNfiVILg=;
 b=I1zurwVvJdnis2SjTpamlIfJZSn6iLrZmxbwVnBhFd6Ss6f7S7wGwB0UEEkHJHpDSpitU3tPkPB7jtg2qfteAEyxk0X0CuOp8TkY3D5v9NRUK6BtZNB0u/2RwUEGop+uQnL8HWIPUrWvRKTIycafrgRyVTJgP9XuMW4COkmjz11tpiayTDfm1npWNbrM8xx6YvQfj1rd+Kza3dI5W3wyqHNFgKIt7+APC/9Bs+sZgpr0GF8R1AIw52Jz5VBZGe+iZEXSTUolxzF9El15tH1HL5YXRxu4cOKLN7nSdKsfS3KCQuY2xX9Yf5Zax7R6VmxdL96eTsvHhPBEqbBYkVsGkw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY4PR11MB1624.namprd11.prod.outlook.com (2603:10b6:910:8::12)
 by BN8PR11MB3794.namprd11.prod.outlook.com (2603:10b6:408:8f::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5417.16; Wed, 6 Jul
 2022 11:09:26 +0000
Received: from CY4PR11MB1624.namprd11.prod.outlook.com
 ([fe80::6023:b392:54a4:a0a6]) by CY4PR11MB1624.namprd11.prod.outlook.com
 ([fe80::6023:b392:54a4:a0a6%12]) with mapi id 15.20.5395.021; Wed, 6 Jul 2022
 11:09:26 +0000
From: "Szlosek, Marek" <marek.szlosek@intel.com>
To: "Zhang, Xuejun" <xuejun.zhang@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v3] iavf: Disallow changing
 rx/tx-frames and rx/tx-frames-irq
Thread-Index: AQHYf3qAfy6r+nCQPk2wf5s7nXvteq1xUm5g
Date: Wed, 6 Jul 2022 11:09:26 +0000
Message-ID: <CY4PR11MB162462ACB1E4B95C171C9765E6809@CY4PR11MB1624.namprd11.prod.outlook.com>
References: <20220613230742.3979180-1-xuejun.zhang@intel.com>
In-Reply-To: <20220613230742.3979180-1-xuejun.zhang@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
dlp-reaction: no-action
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7bbb0aed-7ccf-44a7-2aea-08da5f3ffd31
x-ms-traffictypediagnostic: BN8PR11MB3794:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: nwGwzF2Eo10eGA5snrnIfAA6iuogK06tgGf9szg+Qho1fizSR2IbASb27603WUCqmZeOWPI22FN1bFJcceDSIF9IwsLrT++iYt3wWmV/m2qvSEhGbmuthBqmY/wdgRTsVOEvtaFo0kqBr8+w3OEZK+YPuqUFewFYdPraSN1Sf39pCSCy8boPWyZ5S1GPUAAjfj4cBt6oedpkR2WHeF0Nl7rYXdMPJ86JpMKnKEny1nPIuNe1srkV2l1XssdTpLq7pwVYig7b0rAZY1PrphU6MujENZnFSWyAdTb9UzARdOMlW65cEayzmOu1eqHDrHDdnr8iwv4XMduBqYwHMcxVIZwJ1J+/UKl4ylqzYMyLzYhLvflXLHVZ0hdQnTsMqAPdf0ZPN5nhyZrnTc4q6g5UWXDtk98ei7D68SOYOCzxJ62HWP6kGnLI4NmldML5r0cvANc1OFCx26GJggrsdMh5PRCuoDcCCbgLhOy3heHM2hUkAzVoAIgnKEJL2idsc64+/kwZFfjTTZQ38S5YEQt/27AUf87KvAU0/TtghYVywSYYfEsrjGRInWcI8sR8fKchod6E5mq36nHxa5IibJAFtMybh52KtnTGMtFWoRsBAJFQEL5KUWBVdav3OYlBvXSJBsaee1vVKqXq9AZbMMoa8aKzhNrkyEjt4UJ31Aw4Hh+lGzeqbWT7aBZxoSuicESOlV+Q9QeyX7OBabln+NHVyWe7q068vnKSDdLQ5D5Hchu1jUufqCzyQZ3Z5OXFnVHRkaf9V09WqKYp/7J5Zh1T4qYj7LgtPtNXitN/HSGkkrgIJCNeEs5iphNYN4hM1QPo
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY4PR11MB1624.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(136003)(39860400002)(376002)(366004)(396003)(346002)(2906002)(478600001)(55016003)(33656002)(38070700005)(82960400001)(122000001)(110136005)(316002)(66946007)(66556008)(66476007)(66446008)(64756008)(76116006)(8676002)(71200400001)(38100700002)(4326008)(86362001)(107886003)(53546011)(5660300002)(186003)(9686003)(7696005)(6506007)(26005)(8936002)(41300700001)(83380400001)(52536014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ythQv+4lSwWomfDdbgzh4PFxS4ZFBYtPKnqROGfzl0LiH6N7IKtJmAJg+fvR?=
 =?us-ascii?Q?uZZUZWB7ef4FOwOAmU/3SWnM0wGp763DY+BMMvBZaf9qwACAKyg0BZyRdG+n?=
 =?us-ascii?Q?C0bGUIXXD4wa+y8KurDZItw0D7/i+XiMz/vB4oRXR2i0CK6yrFxk2KQjlTsI?=
 =?us-ascii?Q?77ANMUCUtsjQblHk64kOZRaCb/31xcW9lw/BwvC0oPxe6vPHLYEO5nqVWmmD?=
 =?us-ascii?Q?cYOGsjD2Auauf5fw3KSup33Vt3jOXjn1negmhsRl/hXo9WLqP2q6kKBan4pK?=
 =?us-ascii?Q?O3sQInT+qUeIWQaiJAmHiVoPDpGOTlGKIoI823giE67FSLoaKBi4Av7gzF2C?=
 =?us-ascii?Q?F8wLHDEm/k9fk8EAIgdmPKQWLHSla/BrlCgC9GCgLO10W4PkgTgJ5K0sjBxd?=
 =?us-ascii?Q?L2wY0IKi0bHqYgeDlq4b4WWZlsT5iSrkUXO/CJmjLJH7PSLAGOK0vqNOJDWo?=
 =?us-ascii?Q?N9Ob30qJ4wtc8q1gMM0jBjFtDIQaXHpFnl5HOr38yq4WDsbVqENdhA9JvW7z?=
 =?us-ascii?Q?V6lfPfdIb9igHT223011Ao8KWvWhGw0OrNohkpSN21utnpg0fV4xuFtK8G1q?=
 =?us-ascii?Q?RtbNjXOoDVvs8/OeEmrKZjju7R7wcCJrqzlaqoGSUqBA7wS3TutmrKnzd2Dz?=
 =?us-ascii?Q?Q0nGthyJWReFS/Es0iakRYMizUHuAKLo1UG1yyvoQjoc/1tIsjCOH1DAZZno?=
 =?us-ascii?Q?27GHxmvovyMfNjaIdZlQefiSTzJiOstoNZ5O/xTRBtCRNhTQis9MGeJ+8PUn?=
 =?us-ascii?Q?ISGEw3AtoY5MyzsyC3KbEMGXIvV5h43hSTaKqGb7SNzP03GY1JhuDCy1O62q?=
 =?us-ascii?Q?6grmuncLOBGB/zrBSJ80iF/xnuP2n+71aVJjRvVFGVFxs/FijCmrgJF7aQYO?=
 =?us-ascii?Q?k+yAx+bPBT024qbDj2vvNZf80qWRNVl+sowXSqDtNAO+Xx/sUqeC0KQMnmUT?=
 =?us-ascii?Q?YTTESdya+r/CcJMHUK4+nRnYSrcGLp4bqyxsB+44tVou4BQBwiD3M+Nnh5qI?=
 =?us-ascii?Q?Pww4fwBMQYfetrzupCyBxwasQtRsuSpJ3H6zAE2cqFwltsmoaRFqVBJZeOIJ?=
 =?us-ascii?Q?N/GDQpaKrRgKwWLQV3+sCpm1mOpT3ER2s4mloVMvB+pcshHN8JiIjXc46tdj?=
 =?us-ascii?Q?7aRbyJ60719tdPUuAos/XdekYYreMMN1OFk4bQqGORLi893Hajk61dCFH7Nx?=
 =?us-ascii?Q?wBIn3tAZM8s5VX1j3HY12Hwz9wbMCgqeTdAyClHMbrrRtmsBX1uL39echJeh?=
 =?us-ascii?Q?93WM9JoN3iGGU9oFtGWDXius7qaYrfLGV1fNs08fTkeyCW350UyYSu6RVzpi?=
 =?us-ascii?Q?DcGgI67aA5b0qJCaSQkh3tGoueC77JjiraHAzxQl6euunuAPpzsJe5SGsO6e?=
 =?us-ascii?Q?uO/WgL0mGz8NvVST5JmDX3qmizZrp8E0dtQAX4GOI3a8lu63git+rAzQ7A+6?=
 =?us-ascii?Q?0oWg7PkbJOipJ6Oy2CnOBWPcTUKXw9nLWO64S+WOWAVJrmmXSLyE45YkkQZr?=
 =?us-ascii?Q?/ZGBo4Y66oddOEMEi0QSbMyvaNb1o0AcK8fJuZs/tde63DH+l05TRNyaT0pY?=
 =?us-ascii?Q?janmvkGisZPKMtV1+W153KQF64YFVqXTsyzQzikV?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY4PR11MB1624.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7bbb0aed-7ccf-44a7-2aea-08da5f3ffd31
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jul 2022 11:09:26.1157 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KZNDjwUBNg5qD2+CCC84zyHh9UQFwiUi9nwM0zMjlllvgBTO4+gZKRLaCXxlddN9U3tZssM0AKhZwb9/l1M9Ag==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR11MB3794
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657105772; x=1688641772;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=qi+FE4B4ZbU7/G8nrnlVs/hbMEOcXam7AnHmeMj2Yjo=;
 b=XjDaz6IfDnuPN3EAjs+/EEvnQWRhvditjS6YhkgaVmSWoXsH4TsOj5qv
 piL4oDC7SgIQA9ppnkom8OjUxWFlAmpjOY/Ah++cafkJyMDtd+ZiFi8zd
 ts5QaDg/9jEZCsptibisq71kB9dghwjobJjsLtbf0dabXtf12Y0ueH9jP
 k1XGtJUBHGxzMWGs2utcVL/a15VI4UgNnHXZrvR1KygHRZZZYjK4gDYnx
 ERxwxJTjXDMmGnAB//d/qc9QRGuUO62trynSUl1tIUx9Lc759Jn51Hn9n
 bBq5Jtz4u8Zb8oNXka9jVKJnw4lij9xJgGFyCFnWENPGuFmywICPf8YSO
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=XjDaz6If
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v3] iavf: Disallow changing
 rx/tx-frames and rx/tx-frames-irq
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
Cc: "Patynowski, PrzemyslawX" <przemyslawx.patynowski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



-----Original Message-----
From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Jun Zhang
Sent: wtorek, 14 czerwca 2022 01:08
To: intel-wired-lan@lists.osuosl.org
Cc: Patynowski, PrzemyslawX <przemyslawx.patynowski@intel.com>
Subject: [Intel-wired-lan] [PATCH net v3] iavf: Disallow changing rx/tx-frames and rx/tx-frames-irq

From: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>

Remove from supported_coalesce_params ETHTOOL_COALESCE_MAX_FRAMES and ETHTOOL_COALESCE_MAX_FRAMES_IRQ. As tx-frames-irq allowed user to change budget for iavf_clean_tx_irq, remove work_limit and use define for budget.

Without this patch there would be possiblity to change rx/tx-frames and rx/tx-frames-irq, which for rx/tx-frames did nothing, while for rx/tx-frames-irq it changed rx/tx-frames and only changed budget for cleaning NAPI poll.

Fixes: fbb7ddfef253 ("i40evf: core ethtool functionality")
Signed-off-by: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>
Signed-off-by: Jun Zhang <xuejun.zhang@intel.com>
---
v2: Change author to Przemyslaw Patynowski
v3: Omit Requirment Statement & Add Fixes Tag @ Commit Message
---
 drivers/net/ethernet/intel/iavf/iavf.h         |  1 -
 drivers/net/ethernet/intel/iavf/iavf_ethtool.c | 10 ----------
 drivers/net/ethernet/intel/iavf/iavf_main.c    |  1 -
 drivers/net/ethernet/intel/iavf/iavf_txrx.c    |  2 +-
 4 files changed, 1 insertion(+), 13 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf.h b/drivers/net/ethernet/intel/iavf/iavf.h
index fda1198d2c00..07143a94159d 100644
--- a/drivers/net/ethernet/intel/iavf/iavf.h
+++ b/drivers/net/ethernet/intel/iavf/iavf.h

Tested-by: Marek Szlosek <marek.szlosek@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
