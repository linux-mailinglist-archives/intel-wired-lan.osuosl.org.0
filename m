Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 51D6C5F75B3
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Oct 2022 11:05:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7E09541A1F;
	Fri,  7 Oct 2022 09:05:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7E09541A1F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1665133505;
	bh=N4pQQjy+tYm1dHf5kKa464xbFRPg7mJSdasv3olUrXg=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Lf167gfuYhV6C7KgsOEUv6KS4Hi8u4qSWt/ggH8vOT9erjVB2OwslxX3zDcwngvI4
	 Vul+QuBn1Faxc4PdeAAkz0yq3lTcC0twvYZ2EHKGj/qnPEYqwBgUbZuUxmQ9Z1DuQD
	 lz6lfxsN8VIzpL4hzIe/NWhWJHkmdCUIO4ieXqgR9cxbq9w2AHqbRcPPBoBeDs9yJl
	 u3C6qaNyxc2oJYTOBXvvDDqBTY6yLxWulnpo+ggLzJOVHSFReN8k+kqSIDmiy2Laor
	 LarEYhCC2n2dviakShvHbJ7g56ooJj+6J7fofUBQN9p12nmTwaIDbimv2RMQKFNTeU
	 6VXlFxa8ZEFaA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wTD0dXUWuz4J; Fri,  7 Oct 2022 09:05:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0ABDB41951;
	Fri,  7 Oct 2022 09:05:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0ABDB41951
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B34791BF391
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Oct 2022 09:04:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9904240105
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Oct 2022 09:04:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9904240105
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cegbjQWPypCi for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Oct 2022 09:04:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D753E400CB
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D753E400CB
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Oct 2022 09:04:57 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10492"; a="284059927"
X-IronPort-AV: E=Sophos;i="5.95,166,1661842800"; d="scan'208";a="284059927"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2022 02:04:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10492"; a="800243577"
X-IronPort-AV: E=Sophos;i="5.95,166,1661842800"; d="scan'208";a="800243577"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga005.jf.intel.com with ESMTP; 07 Oct 2022 02:04:56 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 7 Oct 2022 02:04:56 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 7 Oct 2022 02:04:56 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 7 Oct 2022 02:04:56 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Fri, 7 Oct 2022 02:04:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oZ8ucRhNNgxirDZt+YtpkJbQHVtSRItbJxNICCfTxwop6ae2BRrgb124Lvw5TziBUG/+P73RGPyDzMKCodrMmqZoVj9WN7kA3DW8C/20CNLZ2n17CGcj6qwjmLC9zawvWPXLVFFrJvTCp0+J1DSevb7RhOLY5oYXwZ5vesi7h2whhol1T9V7DMh+UZtSVt7AJ8fDoeYO9hTv5Ev4qbYsHPKOPr2vUrHVh6arSjClSwDpV8ePcdod0bWNEkoQBfxhRaPwSWbrG4QsRf0ROwvzi3fNnA7L2MwgT5cy7mXIp7Mg0nR0C0AMF9flm3yF82HD7j0DfCFtF7xuGnNrTctD5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XPhWdDfvmDmb+VhrsYeeov4KiPi9Bp/oGMqyh/lMfio=;
 b=nuy6pl0P1p2Dpm5wKxVRArf6jvXcBmfFj7bcfb1NOkB30GzV3o/C4JuMKg/+8+ccfmlueM0mZKU4DKQprqIKQiyqU9M/GmEGt3qNoGpfKqXTAIvkYFMa+x/G9K9TiYoiiPGk50B8fPbnNK0NMQA54xoVaRBZl6ErCliL7LvGaWh9VAMVdzSdx2bdDwjtAp9YAFjW82yMilCGitaf/taugkEnmsDFMTZqIgrSkithkiCO94avap/LXmNocsaCJ8+xpj2NfcuT/RTuqFUUlNaaWYXy7zWclNZPMYh0G94OETjTYsV0Z2dWVykeASl9LIRbg2ragV9NgjQwyO6xDghBDw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5621.namprd11.prod.outlook.com (2603:10b6:8:38::14) by
 CY8PR11MB6842.namprd11.prod.outlook.com (2603:10b6:930:61::11) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5676.20; Fri, 7 Oct 2022 09:04:54 +0000
Received: from DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::bee8:7fe2:4402:6ab6]) by DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::bee8:7fe2:4402:6ab6%3]) with mapi id 15.20.5676.028; Fri, 7 Oct 2022
 09:04:54 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v2] i40e: Fix VF hang when reset is
 triggered on another VF
Thread-Index: AQHY1+sL/5/bDnBib0CRNP+IvAmCPK4Cp73g
Date: Fri, 7 Oct 2022 09:04:53 +0000
Message-ID: <DM8PR11MB5621D4139CE66C9CCB4618FEAB5F9@DM8PR11MB5621.namprd11.prod.outlook.com>
References: <20221004121341.663007-1-mateusz.palczewski@intel.com>
In-Reply-To: <20221004121341.663007-1-mateusz.palczewski@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
dlp-reaction: no-action
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5621:EE_|CY8PR11MB6842:EE_
x-ms-office365-filtering-correlation-id: 5081a057-7cd8-408e-26f3-08daa842ffdc
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 76tT8Eia0M/hf9BZDpGFa1rof0ChLTL3fqxNSD19xGvYXlf0uNl7pjZHbV9vJ1mCnx/zIioLR861DTychZTpIS8zGQAjPtXDcyd/ys4CxpN3w2INfnDq1I7Xnm4shPD22MtrZJlxiUd0DDXfbBQH32rR3vSOcRQxDv7fHdKPiWieibijVk/bo/Y1llFq0gLdF1RsJRd3fUpR8fNMx8RtvxoXTMjtZhSM0rRF1Wd38IIWoP7Ag0K8jO6Jq/qb68vgqR/vqN70y3kzKlxtTVZkumMW613BDb2mSrbwIk/Ao5zjeJpo+32zK0esunvWo44MSO89oM40oLhb1eVW9xL+w2pYhnoTUAJa950elMTjI1gs9ADgjRLjiZYytUHhG570rc6kX1YwBh+yrwQm+O0avQyI0tJFnN1nX+sXWXUTI2RFKQow38AL6u9cyX2m3HKgzF3zzy4Qrt/Z2ITyUFBJ1HdlR+R932r/ZaPc7G/T0hMqjQxVifGqN8kF+NJW7eLDQPFnAoqHdkU1G8Xx+bIqKIRHAVnnojbxkw1cDlAHtUDURxofqC6H40kKXqHBavTmlotDnNGHqT2GwnmRu5U68vyISXfDyI/G3GSxNNFLNCfGhfON9qdJVKZ8ihGLaOjZ07s1/R/h8GthYljnad+1hVwI9XATAZhnnfIespudTE6DT9BABCl9clgqVP9R8m1uN+KWMEk9ipFUJfV4vIwC3msDSDvEWKHyM3PStGzupiksJX692R/nGB/RYvs2H3LY5AteghooicCXmPWQ5+9Vog==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5621.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(366004)(346002)(136003)(39860400002)(396003)(451199015)(316002)(478600001)(82960400001)(107886003)(6506007)(55016003)(38100700002)(53546011)(122000001)(7696005)(26005)(5660300002)(186003)(52536014)(83380400001)(9686003)(8936002)(41300700001)(2906002)(8676002)(76116006)(86362001)(71200400001)(110136005)(38070700005)(66446008)(66476007)(66556008)(66946007)(4326008)(64756008)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?9H7UELTzCs8vOHcxbeZaLDxQDl0uiTyxcR26pep3mhJlKb2b0G50vLYjjatH?=
 =?us-ascii?Q?cjoTy7ZE6KUC34U7PRy0W/nu+wJeClOZR2A03ICjAmYG+EtlIffhXKhyJzou?=
 =?us-ascii?Q?A3iN7j41WYBtsjTY3SUaTLzXyBJfQjLox94AHuQP/E5q7PazYI5SdpD6yEfl?=
 =?us-ascii?Q?Yoy45hat7iFNmCqn7wQOlYnfNl45Vg7aQOwJU1TxzRMwzflJRym41xGlxB5f?=
 =?us-ascii?Q?M0mEQvYxcoJXsVa09XzaAtih4xNlZVBQ6ZGZmMGPdCuzBVApW145OhOUBTXc?=
 =?us-ascii?Q?X7lGwzT9jKK8D8sOO60qlphiNNHYoroOVw5K3QROZaUliMc07bNCMnDkW/Q2?=
 =?us-ascii?Q?II666eWtwHdatg1JaPLN4pdaxMUxWRyPCXr6Z0tdHh1Jk44RcNvrT+JxNvIL?=
 =?us-ascii?Q?Dl8EG246Wt4A+0NRLZc0Xo5tQ5bI6CZkvh3vFwOVtKuyycUlrAh1iK/BdV2k?=
 =?us-ascii?Q?pajpJROz+wPtut5FkARbzIyzc5BhlT3hAzxirlHAa2HkHWGTs3PCtOi28MBa?=
 =?us-ascii?Q?s+uDPtgRrowSCwYsQkbz8D5mdllzJrUg1UC/gqjA65tvDh7g9miOeBrBu4LT?=
 =?us-ascii?Q?/w3sOrrwyS4C8SUXbqKG/Ydd7nVNHnH1ANFr+ZGmUoR83Qn8DFS2PCdJGZvQ?=
 =?us-ascii?Q?VFp1jSblVYYH1HLCPlxwE+cVRe0kTM/0Q10tGhBd+65/BILf4dfTh35l1SOe?=
 =?us-ascii?Q?zF6YAvwir8wKgo2ajt1eAI6K+HHLeAoGdfg4mPAV4JSDNZCUUeYIaYUM8qUk?=
 =?us-ascii?Q?Y5KXCX4r1n2K9CfVEXeGzXlROZOK9MBD2AHgNBkkcTloDVBOi6GiukMCXt00?=
 =?us-ascii?Q?tl/sbrb8iEfN1aeHoBVWgDBbis4rB9cdy2WTHcbeGjGnKCMquE6ozB2XhI1z?=
 =?us-ascii?Q?HmFlGDC/BJgePGEdipxDZ7g4qtfPdHsnna19EhYTHY0iB3XXkUcKDkMzjcz6?=
 =?us-ascii?Q?9/O1ooOOQp9UJXsq7vXfEDlmW/j+dnTgtZjVhozw7shx9x+Id0CflwMvHwuM?=
 =?us-ascii?Q?6SI6PMqn6oIWaIsoKDQnra2EiKEcuRT/suRiss4cLYsx3+eDTBCuMvQP+/n5?=
 =?us-ascii?Q?RM2mQKmq7N0CsyQ6VDi9JpDOGHye1sGu8RnIA1rVlxjxOGZ5pwnF1EMe05xg?=
 =?us-ascii?Q?5wWdqS7kGH88aYpkXrmw02kkAtQpt7y7KZM+MZh2qyOX9RrhQaDPIXry1uct?=
 =?us-ascii?Q?rCVmsTR+rV8fEwcbomqOc4bZ52xR38+Bw3DwVwZlFPwbyYRqinjUY5ObEaae?=
 =?us-ascii?Q?O3tM/12p5tk53TBn1CLTBJQbynbgxY4im0aO4y8ETcjAvQhcvWC5dL3GnL5d?=
 =?us-ascii?Q?lSlxbl6CLQ8vfMkumzkg5+lvXNFlnMYziLsQ9POdZo+aRxWvH0vmEz4oyJfH?=
 =?us-ascii?Q?qI9egjOM83wvhfrab9mIgMTdEat1ly3A7k3rz2YhkPSW/9PKRV22wKIjlamR?=
 =?us-ascii?Q?gJLT5QZkB9Yqym2/BpVqUgZLYcJSoOR6Fb9g4mSATUTfBgdJGGOXnK43imub?=
 =?us-ascii?Q?W4mfQH0GRftZOL2sWW3cg6vJIC1rudZJ0uTOSCILzgpXcy525UMU5pflMhhv?=
 =?us-ascii?Q?nDvd73YIPCbimwafI/Iw0Y2Hgjo7/1/BnMLX02qk/ghPem/l3VlOYAoQ8v5d?=
 =?us-ascii?Q?SQ=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5621.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5081a057-7cd8-408e-26f3-08daa842ffdc
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Oct 2022 09:04:53.9803 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qRiQ3l5NMKpeMPuBfx15LUPSGmVw62YMTxxm2biz7p0RiDk9EcLCCyjcdL4FmowiEhbXwa5r9DRIJOAIYC4i/ImNI140EWbZYak+efvfY64=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB6842
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665133497; x=1696669497;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=j9BxKuhLfM13Sxg6Umrr59CpKg5h1dWZPEAJLk7fro0=;
 b=cGnnAk+zdlj+GIAe5k6ltIoa06dkRYtM7HhiHAdocwDgFbcMhOGTVf0G
 Uw27CDWaE7ySJfZRyvyqBeof8p3ScLUOACGlB6jAbhVUmSRiSdpECB3nt
 6H/3IoBMVo4482wBpUueTwbGpfTZrF3egQMuW2KeuOeqRt0ZjJYul7O0e
 vjbDPphglNCgGAZWROGkj6KE3ZGNNGSAvlSRrvNJ/Gnhm8SJtnl7Vb6oZ
 E+sYTfS8Ksn3TzKQWriDuBCX4R4BHIFvav5RegW5lE2avOLok31HaDX6v
 AUvcWEjlmgXygYltTZw6ECEAcyzck5HreWQx+dvdZsoGl4UeKBen9Tu9I
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=cGnnAk+z
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v2] i40e: Fix VF hang when reset
 is triggered on another VF
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
Cc: "Dziedziuch, SylwesterX" <sylwesterx.dziedziuch@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Mateusz Palczewski
> Sent: Tuesday, October 4, 2022 2:14 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Dziedziuch, SylwesterX <sylwesterx.dziedziuch@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v2] i40e: Fix VF hang when reset is
> triggered on another VF
> 
> From: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
> 
> When a reset was triggered on one VF with i40e_reset_vf global PF state
> __I40E_VF_DISABLE was set on a PF until the reset finished. If immediately
> after triggering reset on one VF there is a request to reset on another it will
> cause a hang on VF side because VF will be notified of incoming reset but the
> reset will never happen because of this global state, we will get such error
> message:
> 
> [  +4.890195] iavf 0000:86:02.1: Never saw reset
> 
> and VF will hang waiting for the reset to be triggered.
> 
> Fix this by introducing new VF state I40E_VF_STATE_RESETTING that will be
> set on a VF if it is currently resetting instead of the global __I40E_VF_DISABLE
> PF state.
> 
> Fixes: 3ba9bcb4b68f ("i40e: add locking around VF reset")
> Signed-off-by: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
> Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
> ---
>  v2: Fixed some typos in commit message
> ---
>  .../ethernet/intel/i40e/i40e_virtchnl_pf.c    | 43 ++++++++++++++-----
>  .../ethernet/intel/i40e/i40e_virtchnl_pf.h    |  1 +
>  2 files changed, 33 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> index 7e9f6a69eb10..72ddcefc45b1 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> @@ -1536,10 +1536,12 @@ bool i40e_reset_vf(struct i40e_vf *vf, bool flr)

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
