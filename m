Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 71F441DA0E3
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 May 2020 21:19:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2A26C86DF4;
	Tue, 19 May 2020 19:19:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8AXoXVQ02SUQ; Tue, 19 May 2020 19:19:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C7E1586E00;
	Tue, 19 May 2020 19:19:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CC8C81BF28D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 May 2020 16:20:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id C72AB887C7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 May 2020 16:20:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pPY6c5JeMn1Z for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 May 2020 16:20:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 9B4AE887B3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 May 2020 16:20:14 +0000 (UTC)
IronPort-SDR: QlhUNY2i6JIkI9JkKHc93UzNiuQ89vm3ccDjTG5MyOi/TiwbJ+BVyqwC/odw7HJBlID3sYdlaD
 FIuiNcTMjQrA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2020 09:20:14 -0700
IronPort-SDR: eirhOS9d5jbEnEJW7qcNvSY8CvMw3KNxz3F3nzI3oNMNIvzXku6lZAwphlIZ54DxxvP2rce+z7
 4XKPKDRag0ig==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,410,1583222400"; d="scan'208";a="439672455"
Received: from shochwel-mobl.ger.corp.intel.com (HELO
 btopel-mobl.ger.intel.com) ([10.252.38.72])
 by orsmga005.jf.intel.com with ESMTP; 19 May 2020 09:20:10 -0700
To: kbuild test robot <lkp@intel.com>, =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?=
 <bjorn.topel@gmail.com>, ast@kernel.org, daniel@iogearbox.net,
 davem@davemloft.net, kuba@kernel.org, hawk@kernel.org,
 john.fastabend@gmail.com, netdev@vger.kernel.org, bpf@vger.kernel.org,
 magnus.karlsson@intel.com, jonathan.lemon@gmail.com,
 jeffrey.t.kirsher@intel.com
References: <20200519085724.294949-8-bjorn.topel@gmail.com>
 <202005192351.j1H08VpV%lkp@intel.com>
From: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>
Message-ID: <c81b36a0-11dd-4b7f-fad8-85f31dced58c@intel.com>
Date: Tue, 19 May 2020 18:20:09 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <202005192351.j1H08VpV%lkp@intel.com>
Content-Language: en-US
X-Mailman-Approved-At: Tue, 19 May 2020 19:19:37 +0000
Subject: Re: [Intel-wired-lan] [PATCH bpf-next v3 07/15] i40e: separate
 kernel allocated rx_bi rings from AF_XDP rings
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
Cc: maximmi@mellanox.com, maciej.fijalkowski@intel.com, kbuild-all@lists.01.org,
 intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="windows-1252"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 2020-05-19 17:18, kbuild test robot wrote:
> Hi "Bj=F6rn,
> =

> I love your patch! Perhaps something to improve:
> =

> [auto build test WARNING on bpf-next/master]
> [also build test WARNING on jkirsher-next-queue/dev-queue next-20200518]
> [cannot apply to bpf/master linus/master v5.7-rc6]
> [if your patch is applied to the wrong git tree, please drop us a note to=
 help
> improve the system. BTW, we also suggest to use '--base' option to specif=
y the
> base tree in git format-patch, please see https://stackoverflow.com/a/374=
06982]
> =

> url:    https://github.com/0day-ci/linux/commits/Bj-rn-T-pel/Introduce-AF=
_XDP-buffer-allocation-API/20200519-203122
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/bpf/bpf-next.git =
master
> config: riscv-allyesconfig (attached as .config)
> compiler: riscv64-linux-gcc (GCC) 9.3.0
> reproduce:
>          wget https://raw.githubusercontent.com/intel/lkp-tests/master/sb=
in/make.cross -O ~/bin/make.cross
>          chmod +x ~/bin/make.cross
>          # save the attached .config to linux build tree
>          COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dgcc-9.3.0 make.cro=
ss ARCH=3Driscv
> =

> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kbuild test robot <lkp@intel.com>
> =

> All warnings (new ones prefixed by >>, old ones prefixed by <<):
> =

>>> drivers/net/ethernet/intel/i40e/i40e_txrx.c:531:6: warning: no previous=
 prototype for 'i40e_fd_handle_status' [-Wmissing-prototypes]
> 531 | void i40e_fd_handle_status(struct i40e_ring *rx_ring, u64 qword0_ra=
w,
> |      ^~~~~~~~~~~~~~~~~~~~~
>

Yes, this could indeed be made static. Hmm, I wonder why I didn't get
that warning on my x86-64 build!? I'll spin a v4 (or do a follow-up?).


Bj=F6rn
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
