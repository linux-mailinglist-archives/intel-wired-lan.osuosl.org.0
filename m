Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 81AA75BE93
	for <lists+intel-wired-lan@lfdr.de>; Mon,  1 Jul 2019 16:44:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1E0D085EBF;
	Mon,  1 Jul 2019 14:44:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ptS9g6bEj3tb; Mon,  1 Jul 2019 14:44:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7DB8085EBE;
	Mon,  1 Jul 2019 14:44:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 34B491BF3EB
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Jul 2019 14:44:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2F2FD85C50
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Jul 2019 14:44:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DRp5aRzXJAre for <intel-wired-lan@lists.osuosl.org>;
 Mon,  1 Jul 2019 14:44:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 26A6381F23
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Jul 2019 14:44:34 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Jul 2019 07:44:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,439,1557212400"; 
 d="scan'208,217";a="186503654"
Received: from klaatz-mobl1.ger.corp.intel.com (HELO [10.237.221.70])
 ([10.237.221.70])
 by fmsmga004.fm.intel.com with ESMTP; 01 Jul 2019 07:44:30 -0700
To: Jonathan Lemon <jonathan.lemon@gmail.com>
References: <20190620083924.1996-1-kevin.laatz@intel.com>
 <FA8389B9-F89C-4BFF-95EE-56F702BBCC6D@gmail.com>
 <ef7e9469-e7be-647b-8bb1-da29bc01fa2e@intel.com>
 <20190627142534.4f4b8995@cakuba.netronome.com>
 <f0ca817a-02b4-df22-d01b-7bc07171a4dc@intel.com>
 <BAE24CBF-416D-4665-B2C9-CE1F5EAE28FF@gmail.com>
From: "Laatz, Kevin" <kevin.laatz@intel.com>
Message-ID: <07e404eb-f712-b15a-4884-315aff3f7c7d@intel.com>
Date: Mon, 1 Jul 2019 15:44:29 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <BAE24CBF-416D-4665-B2C9-CE1F5EAE28FF@gmail.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH 00/11] XDP unaligned chunk placement
 support
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
Cc: Jakub Kicinski <jakub.kicinski@netronome.com>, daniel@iogearbox.net,
 netdev@vger.kernel.org, ciara.loftus@intel.com, ast@kernel.org,
 intel-wired-lan@lists.osuosl.org, bruce.richardson@intel.com,
 bpf@vger.kernel.org, bjorn.topel@intel.com, magnus.karlsson@intel.com
Content-Type: multipart/mixed; boundary="===============5856702758761293943=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This is a multi-part message in MIME format.
--===============5856702758761293943==
Content-Type: multipart/alternative;
 boundary="------------E921358216ED82E4723776C1"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------E921358216ED82E4723776C1
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

On 28/06/2019 21:29, Jonathan Lemon wrote:
> On 28 Jun 2019, at 9:19, Laatz, Kevin wrote:
>> On 27/06/2019 22:25, Jakub Kicinski wrote:
>>> I think that's very limiting.  What is the challenge in providing
>>> aligned addresses, exactly?
>> The challenges are two-fold:
>> 1) it prevents using arbitrary buffer sizes, which will be an issue 
>> supporting e.g. jumbo frames in future.
>> 2) higher level user-space frameworks which may want to use AF_XDP, 
>> such as DPDK, do not currently support having buffers with 'fixed' 
>> alignment.
>>     The reason that DPDK uses arbitrary placement is that:
>>         - it would stop things working on certain NICs which need the 
>> actual writable space specified in units of 1k - therefore we need 2k 
>> + metadata space.
>>         - we place padding between buffers to avoid constantly 
>> hitting the same memory channels when accessing memory.
>>         - it allows the application to choose the actual buffer size 
>> it wants to use.
>>     We make use of the above to allow us to speed up processing 
>> significantly and also reduce the packet buffer memory size.
>>
>>     Not having arbitrary buffer alignment also means an AF_XDP driver 
>> for DPDK cannot be a drop-in replacement for existing drivers in 
>> those frameworks. Even with a new capability to allow an arbitrary 
>> buffer alignment, existing apps will need to be modified to use that 
>> new capability.
>
> Since all buffers in the umem are the same chunk size, the original 
> buffer
> address can be recalculated with some multiply/shift math. However, 
> this is
> more expensive than just a mask operation.

Yes, we can do this.

Another option we have is to add a socket option for querying the 
metadata length from the driver (assuming it doesn't vary per packet). 
We can use that information to get back to the original address using 
subtraction.

Alternatively, we can change the Rx descriptor format to include the 
metadata length. We could do this in a couple of ways, for example, 
rather than returning the address as the start of the packet, instead 
return the buffer address that was passed in, and adding another 16-bit 
field to specify the start of packet offset with that buffer. If using 
another 16-bits of the descriptor space is not desirable, an alternative 
could be to limit umem sizes to e.g. 2^48 bits (256 terabytes should be 
enough, right :-) ) and use the remaining 16 bits of the address as a 
packet offset. Other variations on these approach are obviously possible 
too.


--------------E921358216ED82E4723776C1
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <div class="moz-cite-prefix">On 28/06/2019 21:29, Jonathan Lemon
      wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:BAE24CBF-416D-4665-B2C9-CE1F5EAE28FF@gmail.com">On 28
      Jun 2019, at 9:19, Laatz, Kevin wrote:
      <br>
      <blockquote type="cite">On 27/06/2019 22:25, Jakub Kicinski wrote:
        <br>
      </blockquote>
      <blockquote type="cite">
        <blockquote type="cite">I think that's very limiting.  What is
          the challenge in providing
          <br>
          aligned addresses, exactly?
          <br>
        </blockquote>
        The challenges are two-fold:
        <br>
        1) it prevents using arbitrary buffer sizes, which will be an
        issue supporting e.g. jumbo frames in future.
        <br>
        2) higher level user-space frameworks which may want to use
        AF_XDP, such as DPDK, do not currently support having buffers
        with 'fixed' alignment.
        <br>
            The reason that DPDK uses arbitrary placement is that:
        <br>
                - it would stop things working on certain NICs which
        need the actual writable space specified in units of 1k -
        therefore we need 2k + metadata space.
        <br>
                - we place padding between buffers to avoid constantly
        hitting the same memory channels when accessing memory.
        <br>
                - it allows the application to choose the actual buffer
        size it wants to use.
        <br>
            We make use of the above to allow us to speed up processing
        significantly and also reduce the packet buffer memory size.
        <br>
        <br>
            Not having arbitrary buffer alignment also means an AF_XDP
        driver for DPDK cannot be a drop-in replacement for existing
        drivers in those frameworks. Even with a new capability to allow
        an arbitrary buffer alignment, existing apps will need to be
        modified to use that new capability.
        <br>
      </blockquote>
      <br>
      Since all buffers in the umem are the same chunk size, the
      original buffer
      <br>
      address can be recalculated with some multiply/shift math. 
      However, this is
      <br>
      more expensive than just a mask operation.
      <br>
    </blockquote>
    <br>
    <p>Yes, we can do this.</p>
    <p>Another option we have is to add a socket option for querying the
      metadata length from the driver (assuming it doesn't vary per
      packet). We can use that information to get back to the original
      address using subtraction.<br>
    </p>
    <p>Alternatively, we can change the Rx descriptor format to include
      the metadata length. We could do this in a couple of ways, for
      example, rather than returning the address as the start of the
      packet, instead return the buffer address that was passed in, and
      adding another 16-bit field to specify the start of packet offset
      with that buffer. If using another 16-bits of the descriptor space
      is not desirable, an alternative could be to limit umem sizes to
      e.g. 2^48 bits (<span style="color: rgb(34, 34, 34); font-family:
        Roboto, arial, sans-serif; font-size: 16px; font-style: normal;
        font-variant-ligatures: normal; font-variant-caps: normal;
        font-weight: 400; letter-spacing: normal; orphans: 2;
        text-align: left; text-indent: 0px; text-transform: none;
        white-space: normal; widows: 2; word-spacing: 0px;
        -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
        255); text-decoration-style: initial; text-decoration-color:
        initial; display: inline !important; float: none;">256 terabytes
        should be enough, right :-) )</span> and use the remaining 16
      bits of the address as a packet offset. Other variations on these
      approach are obviously possible too.</p>
  </body>
</html>

--------------E921358216ED82E4723776C1--

--===============5856702758761293943==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============5856702758761293943==--
