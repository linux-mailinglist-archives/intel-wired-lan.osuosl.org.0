Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id CBB6D7D87E5
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Oct 2023 19:58:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 58F11424AC;
	Thu, 26 Oct 2023 17:58:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 58F11424AC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698343084;
	bh=shsXFjypw4ajWaACWqrfxz+YlSqc1Qomf6oIuj6BW/w=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=4qIi6eLC7gWS7th88kxPQShkggJq4kQKFHoTpkr1wr4W+k3lOCD3xQCetX26PBe99
	 p5wjQONScR2V9nzErhBlBnVq9Je2mr65rr+rkznYHoKdyIjsrAcXCixHk/hy0vYVkS
	 Z+lTOULaDwM/+lix+LN8fLF3VNeD100trRmIMatJmIRcBHIj8gWcRhZBA/rgDXgcpL
	 tVWSQVjF+GILuCav+UUj/Kz/cyeDs5PLM07XucFwuwz8c3xgoYXcucLE5ScNZcJ6AN
	 MH/WEE4jLWQr90hcCtC7H3Hv/iLmTdFq/PpR+YP3yAFXZ3rW+1hDCO/ZjXakJpGiHE
	 9bQ5LEvMDijQQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GS8O3a7SRhbI; Thu, 26 Oct 2023 17:58:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id DAED7424A5;
	Thu, 26 Oct 2023 17:58:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DAED7424A5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 43F181BF59D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Oct 2023 17:57:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 18C0D424A5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Oct 2023 17:57:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 18C0D424A5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JQ9qFgzaUoSq for <intel-wired-lan@lists.osuosl.org>;
 Thu, 26 Oct 2023 17:57:55 +0000 (UTC)
Received: from relay.hostedemail.com (smtprelay0012.hostedemail.com
 [216.40.44.12])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A4F77416CB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Oct 2023 17:57:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A4F77416CB
Received: from omf03.hostedemail.com (a10.router.float.18 [10.200.18.1])
 by unirelay07.hostedemail.com (Postfix) with ESMTP id 79A04160B8F;
 Thu, 26 Oct 2023 17:57:50 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: joe@perches.com) by
 omf03.hostedemail.com (Postfix) with ESMTPA id 6BAAF6000B; 
 Thu, 26 Oct 2023 17:57:39 +0000 (UTC)
Message-ID: <eb9c31b2121a164a88bdd8cac663f6880cd52a93.camel@perches.com>
From: Joe Perches <joe@perches.com>
To: Kees Cook <keescook@chromium.org>
Date: Thu, 26 Oct 2023 10:57:38 -0700
In-Reply-To: <202310261049.92A3FB31@keescook>
References: <20231025-ethtool_puts_impl-v1-0-6a53a93d3b72@google.com>
 <202310260845.B2AEF3166@keescook>
 <39ca00132597c0cc4aac4ea11ab4b571f3981bcb.camel@perches.com>
 <202310261049.92A3FB31@keescook>
User-Agent: Evolution 3.48.4 (3.48.4-1.fc38) 
MIME-Version: 1.0
X-Stat-Signature: hudth4n5i9tsh6noik99p4dqoecq4yae
X-Rspamd-Server: rspamout07
X-Rspamd-Queue-Id: 6BAAF6000B
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Session-ID: U2FsdGVkX1/FhF5iyLmTVijiQINcZ0DKfw8kt4QZXAA=
X-HE-Tag: 1698343059-8063
X-HE-Meta: U2FsdGVkX18EvEmoxNdb8hk6+O6ituHbXxaJFt94yuI4o75cydbMBKO9R15wtEF6VkcdjuFdT9yaMhXRm3vYaUDQE0fY4PwycxT9WeFqvMNRLqEIHiYE+D7Xg4oAc80cClcOXyOn1zfquNjuxwquDIEP8tJmMNk6z3BfC3ZuK2ggJziXypVPsEUK9Keu4FQ3ncfCo+W3BOl6Fmr3KUjH1uOPVXyJ4NSisvMVQpPwtWe6RV1E6cbgFDGHwkHsXtaww+tTwpwABR38XLVHFAAk31CQ+RyAx3SylbbeObJ26LbpA+oEHLjf/YBdaYbPa+iv
Subject: Re: [Intel-wired-lan] [PATCH 0/3] ethtool: Add ethtool_puts()
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
Cc: linux-hyperv@vger.kernel.org, Brett Creeley <brett.creeley@amd.com>,
 Ronak Doshi <doshir@vmware.com>,
 VMware PV-Drivers Reviewers <pv-drivers@vmware.com>,
 Eric Dumazet <edumazet@google.com>, netdev@vger.kernel.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Arthur Kiyanovski <akiyano@amazon.com>, Louis Peens <louis.peens@corigine.com>,
 Wei Liu <wei.liu@kernel.org>, Dwaipayan Ray <dwaipayanray1@gmail.com>,
 Dexuan Cui <decui@microsoft.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, Noam Dagan <ndagan@amazon.com>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Yisen Zhuang <yisen.zhuang@huawei.com>,
 Shay Agroskin <shayagr@amazon.com>, Haiyang Zhang <haiyangz@microsoft.com>,
 Nathan Chancellor <nathan@kernel.org>, Lukas Bulwahn <lukas.bulwahn@gmail.com>,
 Andy Whitcroft <apw@canonical.com>, drivers@pensando.io,
 Salil Mehta <salil.mehta@huawei.com>, GR-Linux-NIC-Dev@marvell.com,
 Rasesh Mody <rmody@marvell.com>, David Arinzon <darinzon@amazon.com>,
 oss-drivers@corigine.com, Nick Desaulniers <ndesaulniers@google.com>,
 linux-kernel@vger.kernel.org, "David S. Miller" <davem@davemloft.net>,
 Justin Stitt <justinstitt@google.com>, Saeed Bishara <saeedb@amazon.com>,
 Dimitris Michailidis <dmichail@fungible.com>,
 Sudarsana Kalluru <skalluru@marvell.com>,
 Shannon Nelson <shannon.nelson@amd.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, 2023-10-26 at 10:49 -0700, Kees Cook wrote:
> On Thu, Oct 26, 2023 at 09:33:17AM -0700, Joe Perches wrote:
> > On Thu, 2023-10-26 at 08:47 -0700, Kees Cook wrote:
> > > On Wed, Oct 25, 2023 at 11:40:31PM +0000, Justin Stitt wrote:
> > > > @replace_2_args@
> > > > identifier BUF;
> > > > expression VAR;
> > > > @@
> > > > 
> > > > -       ethtool_sprintf
> > > > +       ethtool_puts
> > > >         (&BUF, VAR)
> > > 
> > > I think cocci will do a better job at line folding if we adjust this
> > > rule like I had to adjust the next rule: completely remove and re-add
> > > the arguments:
> > > 
> > > -       ethtool_sprintf(&BUF, VAR)
> > > +       ethtool_puts(&BUF, VAR)
> > > 
> > > Then I think the handful of weird line wraps in the treewide patch will
> > > go away.
> > > 
> > 
> > Perhaps this, but i believe spatch needs
> > 	 --max-width=80
> > to fill all 80 columns
> 
> Ah, yeah. Default is 78. Current coding style max is 100... I'll adjust
> my local wrappers.

Coding style max is still 80 with exceptions allowed to 100
not a generic use of 100.


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
